<?php


header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");


if($_SERVER['REQUEST_METHOD']==='POST'){
    include('conexion.php');

    $data=json_decode(file_get_contents("php://input"));

    //echo $data;

    if(isset($data->id_Nutriologo)){
        $id_Nutriologo = $conn->real_escape_string($data->id_Nutriologo);
        $id_Paciente=$conn->real_escape_string($data->id_Paciente);
        $fecha_Cita=$conn->real_escape_string($data->fecha_Cita);
        $hora_Cita=$conn->real_escape_string($data->hora_Cita);
        $status_Cita=$conn->real_escape_string($data->status_Cita);

        $queryInsert= "INSERT INTO tbl_Consulta(id_NutritionistRequest, id_PatientNV, dt_consultadate, time_consulta, id_StatusConsulta) VALUES ('$id_Nutriologo', '$id_Paciente', '$fecha_Cita', '$hora_Cita', '$status_Cita')";
      
        $result=$conn->query($queryInsert);
        if($result){
    
            // Devolver el resultado como JSON
            echo json_encode($response);

        }else {
            // Si hay un error en la consulta
            echo json_encode(array("error" => "Error al obtener pacientes: " . $conn->error));
        }

    }
    else{
        echo json_encode(array("error" => "Faltan varios datos en la solicitud."));
 
    }

    // Cerrar la conexión a la base de datos
    $conn->close();

}else {
    echo json_encode(array("error" => "Método de solicitud no válido."));
}




?>

