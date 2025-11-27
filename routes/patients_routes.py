"""

#Author:Ivn % JPMJY



#Apis que consumen Stored Procedures para realizar consultas e inversiones.
#JWT como medida de seguridad: el token (Bearer_token) se entrega en el Login 

"""
from datetime import datetime
from flask import Blueprint, request, jsonify
from sqlalchemy.orm import sessionmaker
from sqlalchemy.exc import SQLAlchemyError
from settings.db_conn import engineNutri
from settings.decorator_jwt import jwt_required
from utils.validations_utils import validar_json
from models.users_model import PatientModel, HistorialClinico
from utils.db_utils import new_patient,get_pacientes_logic,get_patient_by_id_logic,new_HC_SP
from sqlalchemy import text

patient_routes = Blueprint("patient_routes", __name__)
path_api = "/menu_api/"

SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engineNutri)

#Nuevo Paciente 
@patient_routes.route(path_api + "new_patient", methods=["POST"])
@jwt_required
def create_patient():
    # Obtener JSON
    data_req = request.get_json(silent=True)

    # Validar JSON del cliente
    error_json = validar_json(data=data_req)
    if error_json:
        return error_json, 400

    # Llamar tu función lógica (la que ya inserta en la DB)
    response, status_code = new_patient(data_req)

    return jsonify(response), status_code

#Get patient by id
@patient_routes.route(path_api + "get_patientbid", methods=["POST"])
@jwt_required
def get_patient_by_id():
    data = request.get_json()

    # Validación básica
    if not data or "id_paciente" not in data:
        return {
            "status": "error",
            "message": "Falta el id_paciente en la petición"
        }, 400

    id_paciente = data.get("id_paciente")

    # Llamar función lógica
    return get_patient_by_id_logic(id_paciente)

#Get all patients
@patient_routes.route(path_api + "get_patients", methods=["POST"])
@jwt_required
def get_patient():
    data_req = request.get_json(silent=True)

    error_json = validar_json(data=data_req)
    if error_json:
        return error_json, 400

    id_nutriologo = data_req.get("id_nutriologo")

    if not id_nutriologo:
        return jsonify({"status": "error", "message": "Falta id_nutriologo"}), 400

    response, status_code = get_pacientes_logic(id_nutriologo)
    return jsonify(response), status_code

#Nuevo historial clinico 
@patient_routes.route(path_api + "new_hc", methods=["POST"])
@jwt_required
def new_HC():
    data = request.get_json()
    return new_HC_SP(data)
