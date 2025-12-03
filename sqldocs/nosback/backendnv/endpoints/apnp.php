<?php
header("Access-Control-Allow-Origin: * ");
header("Access-Control-Allow-Methods: POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");


if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    include 'conexion.php';

    // Recibir datos del cuerpo de la solicitud
    $data = json_decode(file_get_contents("php://input"));

    // Limpieza de datos
    $id_Nutriologo = mysqli_real_escape_string($conn, $data->id_Nutriologo);
    $id_Paciente = mysqli_real_escape_string($conn, $data->id_Paciente);
    $actividad_fisica = mysqli_real_escape_string($conn, $data->actividad_fisica);
    $tabaco = mysqli_real_escape_string($conn, $data->tabaco);
    $notasTabaco = mysqli_real_escape_string($conn, $data->notasTabaco);
    $alcohol = mysqli_real_escape_string($conn, $data->alcohol);
    $notasAlcohol = mysqli_real_escape_string($conn, $data->notasAlcohol);
    $drogas = mysqli_real_escape_string($conn, $data->drogas);
    $notasDrogas = mysqli_real_escape_string($conn, $data->notasDrogas);

    // Consulta SQL para insertar datos en la tabla
    $query = "INSERT INTO tbl_APNP (
                id_Nutriologo,
                id_PatientNV,
                actividad_fisica,
                tabaco,
                notasTabaco,
                alcohol,
                notasAlcohol,
                drogas,
                notasDrogas
            ) VALUES (
                '$id_Nutriologo',
                '$id_Paciente',
                '$actividad_fisica',
                '$tabaco',
                '$notasTabaco',
                '$alcohol',
                '$notasAlcohol',
                '$drogas',
                '$notasDrogas'
            )";

    // Ejecutar la consulta
    $result = $conn->query($query);

    // Verificar si la consulta se ejecutó con éxito
    if ($result) {
        // La inserción fue exitosa
        echo json_encode(array("success" => "Datos insertados correctamente"));
    } else {
        // Hubo un error al ejecutar la consulta
        echo json_encode(array("error" => "Error al insertar los datos: " . mysqli_error($conn)));
    }

    // Cerrar la conexión
    mysqli_close($conn);
}
?>
