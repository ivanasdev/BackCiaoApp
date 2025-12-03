<?php

include 'functions.php';


if ($_SERVER['REQUEST_METHOD'] === 'POST') {        
    $data = json_decode(file_get_contents("php://input"));
    
    if(insertarHabitos($data)) {
        if(actualizarHCFlags($data->id_Paciente)) {
            echo json_encode(array("success" => "Datos insertados correctamente"));
        } else {
            echo json_encode(array("error" => "Error al actualizar la tabla tbl_HCFlags"));
        }
    } else {
        echo json_encode(array("error" => "Error al insertar datos en la tabla tbl_TGHabits"));
    }
}
?>
