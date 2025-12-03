<?php 

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");


if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    include 'conexion.php';

    $data = json_decode(file_get_contents("php://input"));

    if (isset($data->id_Nutriologo)) {
        $id_Nutriologo = $conn->real_escape_string($data->id_Nutriologo);
        $querySelect = "SELECT * FROM vista_consulta_pacientes WHERE id_NutritionistRequest='$id_Nutriologo'";

        $result = $conn->query($querySelect);
        if ($result) {
            $response = $result->fetch_all(MYSQLI_ASSOC);
            // Devolver el resultado como JSON
            echo json_encode($response);
        } else {
            // Si hay un error en la consulta
            echo json_encode(array("error" => "Error al obtener pacientes: " . $conn->error));
        }
    } else {
        // Si faltan datos en la solicitud
        echo json_encode(array("error" => "Faltan datos en la solicitud."));
    }

    // Cerrar la conexión a la base de datos
    $conn->close();
} else {
    echo json_encode(array("error" => "Método de solicitud no válido."));
}


?>

