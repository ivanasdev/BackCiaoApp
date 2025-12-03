    <?php 
    header("Access-Control-Allow-Origin: * ");
    header("Access-Control-Allow-Methods: POST, GET");
    header("Access-Control-Allow-Headers: Content-Type");

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {        
        include 'conexion.php';        
        $data = json_decode(file_get_contents("php://input"));
        //Limpieza de datos

        $id_Nutriologo = mysqli_real_escape_string($conn, $data->id_Nutriologo);
        $id_Paciente = mysqli_real_escape_string($conn, $data->id_Paciente);
        $vomito = mysqli_real_escape_string($conn, $data->vomito);
        $notasVomito = empty($data->notasVomito) ? "false" : mysqli_real_escape_string($conn, $data->notasVomito);
        $diarrea = mysqli_real_escape_string($conn, $data->diarrea);
        $notasDiarrea = empty($data->notasDiarrea) ? "false" : mysqli_real_escape_string($conn, $data->notasDiarrea);
        $estrenimiento = mysqli_real_escape_string($conn, $data->estrenimiento);
        $notasEstrenimiento = empty($data->notasEstrenimiento) ? "false" : mysqli_real_escape_string($conn, $data->notasEstrenimiento);
        $colitis = mysqli_real_escape_string($conn, $data->colitis);
        $notasColitis = empty($data->notasColitis) ? "false" : mysqli_real_escape_string($conn, $data->notasColitis);
        $gastritis = mysqli_real_escape_string($conn, $data->gastritis);
        $notasGastritis = empty($data->notasGastritis) ? "false" : mysqli_real_escape_string($conn, $data->notasGastritis);
        $nauseas = mysqli_real_escape_string($conn, $data->nauseas);
        $notasNauseas = empty($data->notasNauseas) ? "false" : mysqli_real_escape_string($conn, $data->notasNauseas);
        $reflujo = mysqli_real_escape_string($conn, $data->reflujo);
        $notasReflujo = empty($data->notasReflujo) ? "false" : mysqli_real_escape_string($conn, $data->notasReflujo);
        $flatulencias = mysqli_real_escape_string($conn, $data->flatulencias);
        $notasFlatulencias = empty($data->notasFlatulencias) ? "false" : mysqli_real_escape_string($conn, $data->notasFlatulencias);
        $distencion = mysqli_real_escape_string($conn, $data->distencion);
        $notasDistencion = empty($data->notasDistencion) ? "false" : mysqli_real_escape_string($conn, $data->notasDistencion);
        $disfagia = mysqli_real_escape_string($conn, $data->disfagia);
        $notasDisfagia = empty($data->notasDisfagia) ? "false" : mysqli_real_escape_string($conn, $data->notasDisfagia);
        $pirosis = mysqli_real_escape_string($conn, $data->pirosis);
        $notasPirosis = empty($data->notasPirosis) ? "false" : mysqli_real_escape_string($conn, $data->notasPirosis);
        $comecon = mysqli_real_escape_string($conn, $data->comecon);
        $qprepara = mysqli_real_escape_string($conn, $data->qprepara);
        $comidasxdia = mysqli_real_escape_string($conn, $data->comidasxdia);
        $colaciones = mysqli_real_escape_string($conn, $data->colaciones);
        $colacionesTipo = mysqli_real_escape_string($conn, $data->colacionesTipo);
        $horariosComida = mysqli_real_escape_string($conn, $data->horariosComida);
        $comidasCasa = mysqli_real_escape_string($conn, $data->comidasCasa);
        $comidasFuera = mysqli_real_escape_string($conn, $data->comidasFuera);
        $comidasFueraW = mysqli_real_escape_string($conn, $data->comidasFueraW);
        $horaApetito = mysqli_real_escape_string($conn, $data->horaApetito);
        $suplementos = mysqli_real_escape_string($conn, $data->suplementos);
        $alergias = mysqli_real_escape_string($conn, $data->alergias);
        $intolerante = mysqli_real_escape_string($conn, $data->intolerante);
        $dietasBef = mysqli_real_escape_string($conn, $data->dietasBef);
        $medicinaBP = mysqli_real_escape_string($conn, $data->medicinaBP);
        $intervencion = mysqli_real_escape_string($conn, $data->intervencion);
        $alimentos_preferidos = mysqli_real_escape_string($conn, $data->alimentos_preferidos);
        $alimentos_no_preferidos = mysqli_real_escape_string($conn, $data->alimentos_no_preferidos);

        $query = "INSERT INTO tbl_TGHabits(
            id_Nutriologo, id_Paciente, vomito, notasVomito, diarrea, notasDiarrea, 
            estrenimiento, notasEstrenimiento, colitis, notasColitis, gastritis, 
            notasGastritis, nauseas, notasNauseas, reflujo, notasReflujo, flatulencias, 
            notasFlatulencias, distencion, notasDistencion, disfagia, notasDisfagia, 
            pirosis, notasPirosis, comecon, qprepara, comidasxdia, colaciones, 
            colacionesTipo, horariosComida, comidasCasa, comidasFuera, comidasFueraW, 
            horaApetito, suplementos, alergias, intolerante, dietasBef, medicinaBP, 
            intervencion, alimentos_preferidos, alimentos_no_preferidos)
            VALUES 
            ('$id_Nutriologo', '$id_Paciente', '$vomito', '$notasVomito', '$diarrea', 
            '$notasDiarrea', '$estrenimiento', '$notasEstrenimiento', '$colitis', 
            '$notasColitis', '$gastritis', '$notasGastritis', '$nauseas', '$notasNauseas', 
            '$reflujo', '$notasReflujo', '$flatulencias', '$notasFlatulencias', '$distencion', 
            '$notasDistencion', '$disfagia', '$notasDisfagia', '$pirosis', '$notasPirosis', 
            '$comecon', '$qprepara', '$comidasxdia', '$colaciones', '$colacionesTipo', 
            '$horariosComida', '$comidasCasa', '$comidasFuera', '$comidasFueraW', 
            '$horaApetito', '$suplementos', '$alergias', '$intolerante', '$dietasBef', 
            '$medicinaBP', '$intervencion', '$alimentos_preferidos', '$alimentos_no_preferidos')";


        $result = $conn->query($query);

        if ($result) {
                echo json_encode(array("success" => "Datos insertados correctamente"));
            }
            else{
                echo json_encode(array("success" => "Datos2  NO insertados correctamente"));
            }
            
        
      

        // Cerrar la conexión
        mysqli_close($conn);
    }
    ?>
