<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");

// Endpoint para obtener información de un paciente
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Incluir el archivo de conexión a la base de datos
    include 'conexion.php';

    // Obtener datos del cuerpo de la solicitud
    $data = json_decode(file_get_contents("php://input"));

    // Validar si se han proporcionado los datos necesarios
    if (isset($data->email)) {
        // Sanitizar y asignar valores

        $st_Email = $conn->real_escape_string($data->email);

        // Consulta SQL para obtener información del paciente
        $queryGetPatient = "SELECT * FROM tbl_PatientsNV WHERE st_Email = '$st_Email'";

        // Ejecutar la consulta
        $result = $conn->query($queryGetPatient);

        if ($result) {
            // Verificar si se encontraron resultados
            if ($result->num_rows > 0) {
                $patientData = $result->fetch_assoc();
                // Devolver la información del paciente
                echo json_encode(array("success" => $patientData));
            } else {
                // Si no se encontraron resultados
                echo json_encode(array("error" => "No se encontró información para el paciente."));
            }
        } else {
            // Si hay un error en la consulta
            echo json_encode(array("error" => "Error al obtener información del paciente: " . $conn->error));
        }
    } else {
        // Si faltan datos en la solicitud
        echo json_encode(array("error" => "Solicitud invalida."));
    }
} else {
    // Si el método de solicitud no es POST
    echo json_encode(array("error" => "Método de solicitud no válido."));
}

// Cerrar la conexión a la base de datos
$conn->close();
?>
