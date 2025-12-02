
from flask import Blueprint, request, jsonify
from sqlalchemy import text

buscador_routes = Blueprint("buscador_routes", __name__)

path_api="/buscador_api/"


#TEST CONNECTION TO DB    
@buscador_routes.route(path_api + "test", methods=["POST"])
#@jwt_required
def test_db_ep():
    data_req = request.get_json(silent=True)

    return jsonify({"status": "error","data":data_req})
