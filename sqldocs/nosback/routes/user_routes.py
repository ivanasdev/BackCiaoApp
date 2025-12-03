from flask import Blueprint,request,jsonify

user_routes=Blueprint('user_routes',__name__)
route_path="/api/user_service"

@user_routes.route("/welcome",methods=['GET'])
def welcome():
    return jsonify({"message":"WELCOME TO MY API USERS"})

@user_routes.route('/api/login', methods=['POST'])
def login():
    if request.method == 'POST':
        data = request.get_json()

        # Validar si se han proporcionado el email y la contraseña
        if 'email' in data and 'KeyNV' in data:
            email = data['email']
            KeyNV = data['KeyNV']

            # Obtener conexión a la base de datos
            connection = ""#get_db_connection()
            try:
                with connection.cursor() as cursor:
                    # Consulta SQL para el login
                    queryAppLogin = """
                    SELECT * FROM tbl_NutritionistRequest 
                    WHERE st_Email = %s AND st_Password = %s
                    """
                    cursor.execute(queryAppLogin, (email, KeyNV))
                    result = cursor.fetchall()

                    if result:
                        # Devolver el resultado como JSON
                        return jsonify(result)
                    else:
                        return jsonify({"error": "Email o contraseña incorrectos"}), 401
            except Exception as e:
                return jsonify({"error": f"Error en la consulta: {str(e)}"}), 500
            finally:
                connection.close()
        else:
            return jsonify({"error": "Faltan datos en la solicitud."}), 400
    else:
        return jsonify({"error": "Método de solicitud no válido."}), 405