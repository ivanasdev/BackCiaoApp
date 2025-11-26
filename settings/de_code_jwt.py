import jwt
import datetime

SECRET_KEY = "super_clave_secreta"

def create_token(user_id):
    payload = {
        "user_id": user_id,
        "exp": datetime.datetime.utcnow() + datetime.timedelta(hours=2)
    }

    token = jwt.encode(payload, SECRET_KEY, algorithm="HS256")
    return token

def decode_token(token):
    return jwt.decode(token, SECRET_KEY, algorithms=["HS256"])
