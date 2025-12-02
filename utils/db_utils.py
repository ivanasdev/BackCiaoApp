from datetime import datetime
from flask import jsonify, request
from settings.db_conn import SessionLocalNutri as SessionLocal
from models.users_model import UserRealModel
from settings.jwt_set import generate_token
from sqlalchemy.exc import SQLAlchemyError
from models.users_model import PatientModel,HistorialClinico
from sqlalchemy import text

#Funciones auxiliares para llamar los SP's para procesos de inserts y selects

#Datos del paciente por IDß
def get_patient_by_id_logic(id_paciente):
    db = SessionLocal()
    try:
        # Crear conexión
        conn = db.connection()

        # Ejecutar el Stored Procedure
        result = conn.execute(
            text("CALL SPR_GET_PATIENT_WITH_STATUS(:id_paciente)"),
            {"id_paciente": id_paciente}
        )

        row = result.fetchone()

        # Si no existe el paciente
        if not row:
            return {
                "status": "error",
                "message": "Paciente no encontrado"
            }, 404

        # Convertir fila en JSON friendly
        paciente = {
            "id_paciente": row[0],
            "st_Nombre": row[1],
            "st_ApellidoP": row[2],
            "st_ApellidoM": row[3],
            "st_Email": row[4],
            "st_Celular": row[5],
            "st_Sexo": row[6],
            "dt_FechaNacimiento": str(row[7]),
            "f_Peso": row[8],
            "f_Talla": row[9],
            "f_IMC": row[10],
            "st_IMC_clas": row[11],
            "st_Observaciones": row[12],
            "id_nutriologo": row[13],
            "created_at": str(row[14]),
            "updated_at": str(row[15]),
            "paso1_status": row[16]
        }


        return {
            "status": "success",
            "message": "Paciente obtenido correctamente",
            "data": paciente
        }, 200

    except SQLAlchemyError as e:
        db.rollback()
        return {"status": "error", "message": f"DB Error: {str(e)}"}, 500
    
    finally:
        db.close()

#Todos los pacientes por nutriologo
def get_pacientes_logic(id_nutriologo):
    db = SessionLocal()
    try:
        # Crear conexión
        conn = db.connection()

        # Ejecutar SP
        result = conn.execute(
            text("CALL SP_GET_PACIENTES_BY_NUTRIOLOGO(:id_nutriologo)"),
            {"id_nutriologo": id_nutriologo}
        )

        rows = result.fetchall()

        # Convertir los resultados a un diccionario JSON friendly
        pacientes = []
        for row in rows:
            pacientes.append({
                "id_paciente": row[0],
                "st_Nombre": row[1],
                "st_ApellidoP": row[2],
                "st_ApellidoM": row[3],
                "st_Email": row[4],
                "st_Celular": row[5],
                "st_Sexo": row[6],
                "dt_FechaNacimiento": str(row[7]),
                "f_Peso": row[8],
                "f_Talla": row[9],
                "f_IMC": row[10],
                "st_IMC_clas": row[11],
                "st_Observaciones": row[12],
                "id_nutriologo": row[13],
                "dt_created": str(row[14]),
                "dt_updated": str(row[15])
            })

        return {
            "status": "success",
            "message": "Pacientes obtenidos correctamente",
            "data": pacientes
        }, 200

    except SQLAlchemyError as e:
        db.rollback()
        return {"status": "error", "message": f"DB Error: {str(e)}"}, 500

    finally:
        db.close()

#New paciente:Valida fecha y llama al SP SPI_NEWPATIENT
def new_patient(data_req):
    db = SessionLocal()
    try:
        if not data_req:
            return {"status": "error", "message": "JSON inválido"}, 400

        # Validar fecha
        try:
            fecha_nac = datetime.strptime(
                data_req.get("dt_FechaNacimiento"), "%Y-%m-%d"
            ).date()
        except:
            return {"status": "error", "message": "Formato de fecha inválido"}, 400

        # Crear conexión (MEJOR PARA MYSQL + SPs)
        conn = db.connection()

        # Ejecutar el Stored Procedure usando text()
        result = conn.execute(
            text("""
                CALL SPI_NEWPATIENT(
                    :st_Nombre,
                    :st_ApellidoP,
                    :st_ApellidoM,
                    :st_Email,
                    :st_Celular,
                    :st_Sexo,
                    :dt_FechaNacimiento,
                    :f_Peso,
                    :f_Talla,
                    :f_IMC,
                    :st_IMC_clas,
                    :st_Observaciones,
                    :id_nutriologo
                )
            """),
            {
                "st_Nombre": data_req.get("st_Nombre"),
                "st_ApellidoP": data_req.get("st_ApellidoP"),
                "st_ApellidoM": data_req.get("st_ApellidoM"),
                "st_Email": data_req.get("st_Email"),
                "st_Celular": data_req.get("st_Celular"),
                "st_Sexo": data_req.get("st_Sexo"),
                "dt_FechaNacimiento": fecha_nac,
                "f_Peso": data_req.get("f_Peso"),
                "f_Talla": data_req.get("f_Talla"),
                "f_IMC": data_req.get("f_IMC"),
                "st_IMC_clas": data_req.get("st_IMC_clas"),
                "st_Observaciones": data_req.get("st_Observaciones"),
                "id_nutriologo": data_req.get("id_nutriologo")
            }
        )

        # Leer el ID generado
        row = result.fetchone()

        if row:
            new_id = row[0]   # como solo devuelve 1 columna
        else:
            new_id = None


        db.commit()

        return {
            "status": "success",
            "message": "Paciente registrado correctamente",
            "data": {"id_paciente": new_id}
        }, 201

    except SQLAlchemyError as e:
        db.rollback()
        return {"status": "error", "message": f"DB Error: {str(e)}"}, 500

    finally:
        db.close()

#Login function 
def login_func(st_username_or_email: str, st_token: str):
    db = SessionLocal()

    try:
        # Ejecutar el SP
        result = db.execute(
            text("""
                CALL SP_LOGIN_SIMPLE(
                    :p_user,
                    @o_id_real_user,
                    @o_st_username,
                    @o_st_email,
                    @o_id_nutriologo,
                    @o_st_password_hash
                )
            """),
            {"p_user": st_username_or_email}
        )

        # Obtener los valores de salida
        row = db.execute(text("""
            SELECT 
                @o_id_real_user AS id_real_user,
                @o_st_username AS st_username,
                @o_st_email AS st_email,
                @o_id_nutriologo AS id_nutriologo,
                @o_st_password_hash AS st_password_hash
        """)).fetchone()

        # No existe
        if not row or row.id_real_user is None:
            return {"status": "error", "message": "Usuario no encontrado"}, 404

        # Validar token
        if row.st_password_hash != st_token:
            return {"status": "error", "message": "Token incorrecto"}, 401

        # Crear token JWT
        bearer_token = generate_token(row.id_real_user)

        # Armar usuario en dict
        user_dict = {
            "id_real_user": row.id_real_user,
            "st_username": row.st_username,
            "st_email": row.st_email,
            "id_nutriologo": row.id_nutriologo
        }

        return {
            "status": "success",
            "message": "Login correcto",
            "bearer_token": bearer_token,
            "user": user_dict
        }, 200

    except Exception as e:
        return {"status": "error", "message": str(e)}, 500

    finally:
        db.close()

#Nuevo historial clinico 
def new_HC_SP(data):
    idPaciente = data.get("idPaciente")
    db = SessionLocal()

    if not idPaciente:
        return jsonify({"error": "idPaciente es obligatorio"}), 400

    try:
        db.execute(
            text("""
            CALL SPI_NewHistorial(
                :idPaciente, :alergias, :horasSueno, :sustancias,
                :actividadFrecuencia, :actividadTipo, :comidasDia, :cualesComidas,
                :quienPrepara, :comeEntreComidas, :modificacionAlimentacion,
                :motivoModificacion, :comoModifico, :apetito, :horaMayorHambre,
                :alimentosPreferidos, :alimentosNoGustan, :aguaRegular, :litrosAgua,
                :frutasDia, :verdurasDia, :fritos, :dulces, :bebidasAzucar, :suplementos
            )
            """),
            {
                "idPaciente": idPaciente,
                "alergias": data.get("alergias"),
                "horasSueno": data.get("horasSueno"),
                "sustancias": data.get("sustancias"),
                "actividadFrecuencia": data.get("actividadFrecuencia"),
                "actividadTipo": data.get("actividadTipo"),
                "comidasDia": data.get("comidasDia"),
                "cualesComidas": data.get("cualesComidas"),
                "quienPrepara": data.get("quienPrepara"),
                "comeEntreComidas": data.get("comeEntreComidas"),
                "modificacionAlimentacion": data.get("modificacionAlimentacion"),
                "motivoModificacion": data.get("motivoModificacion"),
                "comoModifico": data.get("comoModifico"),
                "apetito": data.get("apetito"),
                "horaMayorHambre": data.get("horaMayorHambre"),
                "alimentosPreferidos": data.get("alimentosPreferidos"),
                "alimentosNoGustan": data.get("alimentosNoGustan"),
                "aguaRegular": int(data.get("aguaRegular", 0)),
                "litrosAgua": data.get("litrosAgua"),
                "frutasDia": data.get("frutasDia"),
                "verdurasDia": data.get("verdurasDia"),
                "fritos": data.get("fritos"),
                "dulces": data.get("dulces"),
                "bebidasAzucar": data.get("bebidasAzucar"),
                "suplementos": data.get("suplementos"),
            }
        )

        db.commit()
        return jsonify({"message": "Historial clínico creado con SP"}), 201

    except Exception as e:
        db.rollback()
        print("ERROR SP:", e)
        return jsonify({"error": "No se pudo crear el historial clínico"}), 500

    finally:
        db.close()
