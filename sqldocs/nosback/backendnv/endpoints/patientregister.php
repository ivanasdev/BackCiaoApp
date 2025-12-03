<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");

// Endpoint para el registro de pacientes
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  
    include 'conexion.php';

    $data = json_decode(file_get_contents("php://input"));

    if (isset($data->id_Nutriologo)) {

        // Sanitizar y asignar valores
        $nombre = $conn->real_escape_string($data->nombre);
        $ap = $conn->real_escape_string($data->ap);
        $am = $conn->real_escape_string($data->am);
        $email = $conn->real_escape_string($data->email);
        $celular =  $conn->real_escape_string($data->celular);
        $id_Nutriologo = $conn->real_escape_string($data->id_Nutriologo);
        $regDate = $conn->real_escape_string($data->regDate);
        $i_Actived="1";
        $flag_hc="0";

        // Consulta SQL para insertar el nuevo paciente
        $queryInsertPatient = "INSERT INTO tbl_PatientsNV(st_Name, st_Ap, st_Am, st_Email, st_CellPhone, id_NVNutritionist, dt_Register_Date, i_Active,Flag_HC) VALUES ('$nombre', '$ap', '$am', '$email', '$celular', '$id_Nutriologo', '$regDate','$i_Actived','$flag_hc')";
        // Ejecutar la consulta
        $result = $conn->query($queryInsertPatient);

        if ($result) {
            
            // Si la inserción es exitosa
            echo json_encode(array("success" => "Paciente registrado correctamente"));
        } else {
            // Si hay un error en la inserción
            echo json_encode(array("error" => "Error al registrar paciente: " . $conn->error));
        }
    } else {
        // Si faltan datos en la solicitud
        echo json_encode(array("error" => "NO DATA IN PHPla solicitud."));
    }
} else {
    // Si el método de solicitud no es POST
    echo json_encode(array("error" => "Método de solicitud no válido."));
}



// Cerrar la conexión a la base de datos
$conn->close();
?>

