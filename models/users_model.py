from datetime import datetime
from sqlalchemy import Boolean, Column, Integer, SmallInteger, String, Date, DateTime, DECIMAL, Text, ForeignKey
from sqlalchemy.orm import declarative_base

Base = declarative_base()


class PatientStatusHCModel(Base):
    __tablename__ = "tb_patient_statusHC"

    id_PStatus = Column(Integer, primary_key=True, autoincrement=True)
    id_patient = Column(Integer, nullable=False)  # Agrega ForeignKey si tu tabla existe

    i_paso1 = Column(Integer, default=0)
    i_paso2 = Column(Integer, default=0)
    i_paso3 = Column(Integer, default=0)
    i_paso4 = Column(Integer, default=0)

    updated_date = Column(DateTime, default=datetime.utcnow, onupdate=datetime.utcnow)
    created_date = Column(DateTime, default=datetime.utcnow)

    def to_dict(self):
        return {
            "id_PStatus": self.id_PStatus,
            "id_patient": self.id_patient,
            "i_paso1": self.i_paso1,
            "i_paso2": self.i_paso2,
            "i_paso3": self.i_paso3,
            "i_paso4": self.i_paso4,
            "updated_date": self.updated_date.isoformat() if self.updated_date else None,
            "created_date": self.created_date.isoformat() if self.created_date else None,
        }


class UserRealModel(Base):
    __tablename__ = "tb_users_ciao"

    id_real_user = Column(Integer, primary_key=True, autoincrement=True)
    id_user_sys = Column(Integer, nullable=False)

    st_username = Column(String(150), nullable=False)
    st_email = Column(String(150), nullable=False)
    id_nutriologo = Column(Integer, nullable=False)


    st_password_hash = Column(String(255), nullable=False)
    st_phone = Column(String(50), nullable=True)


    st_status = Column(String(30), nullable=False, default="ACTIVE")
    dt_created = Column(DateTime, default=datetime.utcnow, nullable=False)

    def to_dict(self):
        return {
            "id_real_user": self.id_real_user,
            "id_user_sys": self.id_user_sys,
            "st_username": self.st_username,
            "st_email": self.st_email,
            "id_nutriologo": self.id_nutriologo,
            "st_password_hash": self.st_password_hash,
            "st_phone": self.st_phone,
            "st_status": self.st_status,
            "dt_created": self.dt_created.isoformat() if self.dt_created else None
        }


class PatientModel(Base):
    __tablename__ = "tb_nutri_paciente"

    id_paciente = Column(Integer, primary_key=True, autoincrement=True)

    # Datos personales
    st_Nombre = Column(String(100), nullable=False)
    st_ApellidoP = Column(String(100), nullable=False)
    st_ApellidoM = Column(String(100), nullable=True)

    st_Email = Column(String(150), nullable=False)
    st_Celular = Column(String(20), nullable=True)

    st_Sexo = Column(String(10), nullable=False)  # Alternativa a ENUM
    dt_FechaNacimiento = Column(Date, nullable=False)

    # Datos clínicos
    f_Peso = Column(DECIMAL(5,2), nullable=True)
    f_Talla = Column(DECIMAL(5,2), nullable=True)
    f_IMC = Column(DECIMAL(5,2), nullable=True)
    st_IMC_clas = Column(String(50), nullable=True)

    st_Observaciones = Column(Text, nullable=True)

    # FK Nutriólogo
    id_nutriologo = Column(Integer, ForeignKey("tb_users_ciao.id_real_user"), nullable=False)

    # Control de creación/actualización
    dt_created = Column(DateTime, default=datetime.utcnow, nullable=False)
    dt_updated = Column(DateTime, default=datetime.utcnow, onupdate=datetime.utcnow)

    def to_dict(self):
        return {
            "id_paciente": self.id_paciente,
            "st_Nombre": self.st_Nombre,
            "st_ApellidoP": self.st_ApellidoP,
            "st_ApellidoM": self.st_ApellidoM,
            "st_Email": self.st_Email,
            "st_Celular": self.st_Celular,
            "st_Sexo": self.st_Sexo,
            "dt_FechaNacimiento": self.dt_FechaNacimiento.isoformat() if self.dt_FechaNacimiento else None,
            "f_Peso": float(self.f_Peso) if self.f_Peso is not None else None,
            "f_Talla": float(self.f_Talla) if self.f_Talla is not None else None,
            "f_IMC": float(self.f_IMC) if self.f_IMC is not None else None,
            "st_IMC_clas": self.st_IMC_clas,
            "st_Observaciones": self.st_Observaciones,
            "id_nutriologo": self.id_nutriologo,
            "dt_created": self.dt_created.isoformat() if self.dt_created else None,
            "dt_updated": self.dt_updated.isoformat() if self.dt_updated else None
        }

class HistorialClinico(Base):
    __tablename__ = "tb_HistorialClinico"

    idHistorial = Column(Integer, primary_key=True, autoincrement=True)
    idPaciente = Column(Integer, nullable=False)

    fechaRegistro = Column(DateTime, default=datetime.utcnow, nullable=False)

    alergias = Column(Text)
    horasSueno = Column(String(50))

    # Sustancias como JSON
    sustancias = Column(Text)

    # Actividad física
    actividadFrecuencia = Column(String(100))
    actividadTipo = Column(String(100))

    # Alimentación y hábitos
    comidasDia = Column(Integer)
    cualesComidas = Column(String(255))
    quienPrepara = Column(String(255))
    comeEntreComidas = Column(String(255))
    modificacionAlimentacion = Column(String(255))
    motivoModificacion = Column(String(255))
    comoModifico = Column(String(255))
    apetito = Column(String(255))
    horaMayorHambre = Column(String(50))
    alimentosPreferidos = Column(String(255))
    alimentosNoGustan = Column(String(255))
    aguaRegular = Column(Boolean)
    litrosAgua = Column(String(50))
    frutasDia = Column(Integer)
    verdurasDia = Column(Integer)
    fritos = Column(String(50))
    dulces = Column(String(50))
    bebidasAzucar = Column(String(50))
    suplementos = Column(String(255))

    def to_dict(self):
        return {
            "idHistorial": self.idHistorial,
            "idPaciente": self.idPaciente,
            "fechaRegistro": self.fechaRegistro.isoformat(),
            "alergias": self.alergias,
            "horasSueno": self.horasSueno,
            "sustancias": self.sustancias,
            "actividadFrecuencia": self.actividadFrecuencia,
            "actividadTipo": self.actividadTipo,
            "comidasDia": self.comidasDia,
            "cualesComidas": self.cualesComidas,
            "quienPrepara": self.quienPrepara,
            "comeEntreComidas": self.comeEntreComidas,
            "modificacionAlimentacion": self.modificacionAlimentacion,
            "motivoModificacion": self.motivoModificacion,
            "comoModifico": self.comoModifico,
            "apetito": self.apetito,
            "horaMayorHambre": self.horaMayorHambre,
            "alimentosPreferidos": self.alimentosPreferidos,
            "alimentosNoGustan": self.alimentosNoGustan,
            "aguaRegular": self.aguaRegular,
            "litrosAgua": self.litrosAgua,
            "frutasDia": self.frutasDia,
            "verdurasDia": self.verdurasDia,
            "fritos": self.fritos,
            "dulces": self.dulces,
            "bebidasAzucar": self.bebidasAzucar,
            "suplementos": self.suplementos
        }