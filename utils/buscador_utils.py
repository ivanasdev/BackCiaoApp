from datetime import datetime
from flask import jsonify, request
from settings.db_conn import SessionLocalNutri as SessionLocal
from sqlalchemy.exc import SQLAlchemyError
from sqlalchemy import text



def sp_buscar_alimentos(palabra):
    db = SessionLocal()
    try:
        conn = db  

        result = conn.execute(
            text("CALL SPR_BUSCADOR_NAME(:p_busqueda)"),
            {"p_busqueda": palabra}
        )

        return result.fetchall()

    except SQLAlchemyError as e:
        raise e

    finally:
        db.close()


def sp_buscar_alimentos_filtros(energia, proteina, lipidos, h_carbono):
    db = SessionLocal()
    try:
        result = db.execute(
            text("CALL SPR_BUSCADOR_FILTER(:energia, :proteina, :lipidos, :h_carbono)"),
            {
                "energia": energia,
                "proteina": proteina,
                "lipidos": lipidos,
                "h_carbono": h_carbono
            }
        )

        return result.fetchall()

    except SQLAlchemyError as e:
        raise e

    finally:
        db.close()




def buscar_alimentos_filter_logic(energia, proteina, lipidos, h_carbono):
    try:
    

        rows = sp_buscar_alimentos_filtros(energia, proteina, lipidos, h_carbono)
        resultados = [dict(row._mapping) for row in rows]

        return {
            "status": "success",
            "resultados": resultados
        }, 200

    except SQLAlchemyError as e:
        return {"status": "error", "msg": f"DB Error: {str(e)}"}, 500


def buscar_alimentos_logic(palabra):
    try:
        if palabra == "":
            return {
                "status": "error",
                "msg": "Falta el parámetro 'query'"
            }, 400

        rows = sp_buscar_alimentos(palabra)
        resultados = [dict(row._mapping) for row in rows]



        return {
            "status": "success",
            "query": palabra,
            "resultados": resultados
        }, 200

    except SQLAlchemyError as e:
        return {"status": "error", "msg": f"DB Error: {str(e)}"}, 500