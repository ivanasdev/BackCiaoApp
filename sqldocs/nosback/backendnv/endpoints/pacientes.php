<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");

// Endpoint para cargar pacientes

if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    include 'conexion.php';

   
        $querySelect = "SELECT * FROM tbl_PatientsNV";

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
        echo json_encode(array("error" => "Faltan varios datos en la solicitud."));
    }

    // Cerrar la conexión a la base de datos
    $conn->close();

?>
