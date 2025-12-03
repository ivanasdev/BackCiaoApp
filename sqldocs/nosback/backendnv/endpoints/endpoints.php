<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");






// Endpoint para el login
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Incluir el archivo de conexión a la base de datos
     include 'conexion.php';
    // Obtener datos del cuerpo de la solicitud
    $data = json_decode(file_get_contents("php://input"));

    // Validar si se han proporcionado el email y la contraseña
    if (isset($data->email) && isset($data->password)) {
        // Sanitizar y asignar valores
        $email = $conn->real_escape_string($data->email);
        $password = $conn->real_escape_string($data->password);

        // Consulta SQL para el login
        $queryAppLogin = "SELECT * FROM tbl_NVA_Users WHERE st_Email = '$email' AND st_Password = '$password'";

        // Ejecutar la consulta
        $result = $conn->query($queryAppLogin);

        if ($result) {
            // Convertir el resultado a un array asociativo
            $response = $result->fetch_all(MYSQLI_ASSOC);
            // Devolver el resultado como JSON
            echo json_encode($response);
        } else {
            // Si hay un error en la consulta
            echo json_encode(array("error" => "Error en la consulta: " . $conn->error));
        }
    } else {
        // Si no se proporcionan email y contraseña
        echo json_encode(array("error" => "Faltan datos en la solicitud."));
    }
} else {
    // Si el método de solicitud no es POST
    echo json_encode(array("error" => "Método de solicitud no válido."));
}

// Cerrar la conexión a la base de datos
$conn->close();
?>
