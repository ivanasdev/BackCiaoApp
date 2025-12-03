<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");

// Endpoint para el registro de antecedentes heredofamiliares
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Incluir el archivo de conexión a la base de datos
    include 'conexion.php';

    // Obtener datos del cuerpo de la solicitud
    $data = json_decode(file_get_contents("php://input"));

    // Validar si se han proporcionado los datos necesarios
    if (
        isset($data->id_Paciente) &&
        isset($data->id_Nutriologo) &&
        isset($data->diabetes) &&
        isset($data->notasDiabetes) &&
        isset($data->cancer) &&
        isset($data->notasCancer) &&
        isset($data->dislipidemia) &&
        isset($data->notasDislipidemia) &&
        isset($data->anemia) &&
        isset($data->notasAnemia) &&
        isset($data->hipertension) &&
        isset($data->notasHipertension) &&
        isset($data->enfermedadesRenales) &&
        isset($data->notasRenales) &&
        isset($data->otrosDescripcion)
    ) {
        // Sanitizar y asignar valores
        $id_Paciente = $conn->real_escape_string($data->id_Paciente);
        $id_Nutriologo = $conn->real_escape_string($data->id_Nutriologo);
        $diabetes = $conn->real_escape_string($data->diabetes);
        $notasDiabetes = $conn->real_escape_string($data->notasDiabetes);
        $cancer = $conn->real_escape_string($data->cancer);
        $notasCancer = $conn->real_escape_string($data->notasCancer);
        $dislipidemia = $conn->real_escape_string($data->dislipidemia);
        $notasDislipidemia = $conn->real_escape_string($data->notasDislipidemia);
        $anemia = $conn->real_escape_string($data->anemia);
        $notasAnemia = $conn->real_escape_string($data->notasAnemia);
        $hipertension = $conn->real_escape_string($data->hipertension);
        $notasHipertension = $conn->real_escape_string($data->notasHipertension);
        $enfermedadesRenales = $conn->real_escape_string($data->enfermedadesRenales);
        $notasRenales = $conn->real_escape_string($data->notasRenales);
        $otrosDescripcion = $conn->real_escape_string($data->otrosDescripcion);

        // Consulta SQL para insertar los antecedentes heredofamiliares
        $queryInsertAHF = "INSERT INTO tbl_AHF (
            id_PatientNV,
            id_NutritionistRequest,
            bol_Diabtes,
            nt_diabetes,
            bol_Cancer,
            nt_Cancer,
            bol_Dislipidemia,
            nt_Dislipidemia,
            bol_Anemia,
            nt_Anemia,
            bol_Hipertension,
            nt_Hipertension,
            bol_Renales,
            nt_Renales,
            st_Observations
        ) VALUES (
            '$id_Paciente',
            '$id_Nutriologo',
            '$diabetes',
            '$notasDiabetes',
            '$cancer',
            '$notasCancer',
            '$dislipidemia',
            '$notasDislipidemia',
            '$anemia',
            '$notasAnemia',
            '$hipertension',
            '$notasHipertension',
            '$enfermedadesRenales',
            '$notasRenales',
            '$otrosDescripcion'
        )";

        $sqlFlags = "INSERT INTO tbl_HCFlags(id_PatientNV, i_AHF) VALUES('$id_Paciente', '1')";

        // Ejecutar la consulta
        $result = $conn->query($queryInsertAHF);

        if ($result) {
            // Si la inserción principal es exitosa
            $insertarFlags = $conn->query($sqlFlags);

            if ($insertarFlags) {
                // Si ambas inserciones son exitosas
                echo json_encode(array("status" => "success", "message" => "Datos insertados correctamente"));
            } else {
                // Si hay un error en la segunda inserción
                echo json_encode(array("status" => "error", "message" => "Error al insertar datos en $sqlFlags: " . $conn->error));
            }
        } else {
            // Si hay un error en la inserción principal
            echo json_encode(array("status" => "error", "message" => "Error al insertar datos en $queryInsertAHF: " . $conn->error));
        }
    } else {
        // Si faltan datos en la solicitud
        echo json_encode(array("status" => "error", "message" => "Faltan datos en la solicitud."));
    }
} else {
    // Si el método de solicitud no es POST
    echo json_encode(array("status" => "error", "message" => "Método de solicitud no válido."));
}

// Cerrar la conexión a la base de datos
$conn->close();
?>
