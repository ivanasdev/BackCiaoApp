
from flask import Blueprint, request, jsonify
from sqlalchemy import text
#DB
#from settings.nutri_conn import engineNutri
from settings.db_conn import engineNutri
from settings.decorator_jwt import jwt_required
from settings.de_code_jwt import create_token
from utils.db_utils import login_func
from utils.validations_utils import validar_json,valid_param01,build_dynamic_url

main_routes = Blueprint("main_routes", __name__)

path_api="/menu_api/"

#JWT TEST 
@main_routes.route("/menu_api/menutest", methods=["GET"])
@jwt_required
def men_test01():
    return jsonify({"msg": "GET Action", "user_id": request.user_id})


#LOGIN 
@main_routes.route(path_api + "login", methods=["POST"])
def login():
    
    #Extract data to client
    data_req = request.get_json(silent=True)
    username_or_email = data_req.get("username_or_email")
    token_user = data_req.get("token_user")
    
    #Validate Json 
    error_data=validar_json(data_req)
    error_param=valid_param01(p1=username_or_email,p2=token_user)

    #Validaciones 
    if error_data:
        return error_data
    elif error_param:
        return error_param

    #Buscar usuario 
    response, status = login_func(username_or_email, token_user)
    #Respuesta
    return response, status



#Heatlh EP
@main_routes.route(path_api + "menu", methods=["GET", "POST"])
@jwt_required
def menu_01():

    # GET no permitido
    if request.method == "GET":
        return {
            "status": "error",
            "msg": "GET Action is not allowed"
        }, 405

    # POST
    if request.method == "POST":
        url_api=""
        data_req = request.get_json(silent=True)

        # Validar JSON
        error_json = validar_json(data=data_req)
        if error_json:
            return error_json     # <- Aquí ya regresas tu propio error

        # Extraer parámetros
        id_menu = data_req.get("id_menu")
        id_user = data_req.get("id_real_user")

        #Validar user tal vez
        if id_menu == 1:
            url_api = build_dynamic_url("http://127.0.0.1:8699/menu_api", id_user)
            print(f"API_URL:{url_api}")
            

        #Registar paciente 

        return {
            "status": "success",
            "msg": f"POST Action {id_menu}",
            "user_data": f"Usuario: {id_user}",
            "UrlAPI":f"API_TO_SEND:{url_api}"
        }, 200


"""
#TEST CONNECTION TO DB    
@main_routes.route(path_api + "test_db")
#@jwt_required
def test_db_ep():
    try:
        with engineNutri.connect() as conn:
            conn.execute(text("SELECT 1"))  # Consulta simple para probar
        return jsonify(
            {"status": "success", "message": "Conexión a la base de datos OK"}
        )
    except Exception as e:
        return jsonify({"status": "error", "message": str(e)}), 500

"""