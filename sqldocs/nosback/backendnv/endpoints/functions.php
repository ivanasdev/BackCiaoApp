<?php
include 'conexion.php';

function actualizarHCFlags($id_Paciente){

      // Verificar la conexión
      if ($conn->connect_error) {
        die("Error de conexión: " . $conn->connect_error);
    }


    $queryupdate = "UPDATE tbl_HCFlags SET i_APP=1,i_APNP=1,i_TG=1,i_HabitosA=1 WHERE id_PatientNV=?";

    // Preparar y ejecutar la consulta
    $stmt = $conn->prepare($queryupdate);
    $stmt->bind_param('s', $id_Paciente); // s significa "string"
    $stmt->execute();

    // Verificar si la consulta fue exitosa
    if ($stmt->affected_rows > 0) {
        $stmt->close(); // Cerrar la consulta
        $conn->close(); // Cerrar la conexión
        return true;
    } else {
        $stmt->close(); // Cerrar la consulta
        $conn->close(); // Cerrar la conexión
        return false;
    }


}



function insertarHabitos($data){
    try {
        $conn = conectar();

        $query = "INSERT INTO tbl_TGHabits
        (id_Nutriologo, id_Paciente, vomito, notasVomito, diarrea, notasDiarrea, estrenimiento, notasEstrenimiento, colitis, notasColitis, gastritis, notasGastritis, nauseas, notasNauseas, reflujo, notasReflujo, flatulencias, notasFlatulencias, distencion, notasDistencion, disfagia, notasDisfagia, pirosis, notasPirosis, comecon, qprepara, comidasxdia, colaciones, colacionesTipo, horariosComida, comidasCasa, comidasFuera, comidasFueraW, horaApetito, suplementos, alergias, intolerante, dietasBef, medicinaBP, intervencion, alimentos_preferidos, alimentos_no_preferidos)
        VALUES
        (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        $stmt = $conn->prepare($query);
        $stmt->bind_param('iissiissiissiissiissiissiissiissiissiissiissiissiissiissiissiissiissiissiissiissiissiissiissiiss', $data->id_Nutriologo, $data->id_Paciente, $data->vomito, $data->notasVomito, $data->diarrea, $data->notasDiarrea, $data->estrenimiento, $data->notasEstrenimiento, $data->colitis, $data->notasColitis, $data->gastritis, $data->notasGastritis, $data->nauseas, $data->notasNauseas, $data->reflujo, $data->notasReflujo, $data->flatulencias, $data->notasFlatulencias, $data->distencion, $data->notasDistencion, $data->disfagia, $data->notasDisfagia, $data->pirosis, $data->notasPirosis, $data->comecon, $data->qprepara, $data->comidasxdia, $data->colaciones, $data->colacionesTipo, $data->horariosComida, $data->comidasCasa, $data->comidasFuera, $data->comidasFueraW, $data->horaApetito, $data->suplementos, $data->alergias, $data->intolerante, $data->dietasBef, $data->medicinaBP, $data->intervencion, $data->alimentos_preferidos, $data->alimentos_no_preferidos);

        $stmt->execute();

        if ($stmt->affected_rows > 0) {
            return true;
        } else {
            return false;
        }
    } catch (mysqli_sql_exception $e) {
        return false;
    }
}
?>
