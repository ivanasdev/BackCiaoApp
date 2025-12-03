<?php 
header("Access-Control-Allow-Origin: * ");
header("Access-Control-Allow-Methods: POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");

if ($_SERVER['REQUEST_METHOD'] === 'POST') {        
    include 'conexion.php';        
    $data = json_decode(file_get_contents("php://input"));
    //Limpieza de datos
    $id_Nutriologo = mysqli_real_escape_string($conn, $data->id_Nutriologo);
    $id_Paciente = mysqli_real_escape_string($conn, $data->id_Paciente);
    $folio_archive = mysqli_real_escape_string($conn, $data->folio_archive);
    $diabetes = mysqli_real_escape_string($conn, $data->diabetes);
    $notasDiabetes = empty($data->notasDiabetes) ? "false" : mysqli_real_escape_string($conn, $data->notasDiabetes);
    $cancer = mysqli_real_escape_string($conn, $data->cancer);
    $notasCancer = empty($data->notasCancer) ? "false" : mysqli_real_escape_string($conn, $data->notasCancer);
    $dislipidemia = mysqli_real_escape_string($conn, $data->dislipidemia);
    $notasDislipidemia = empty($data->notasDislipidemia) ? "false" : mysqli_real_escape_string($conn, $data->notasDislipidemia);
    $anemia = mysqli_real_escape_string($conn, $data->anemia);
    $notasAnemia = empty($data->notasAnemia) ? "false" : mysqli_real_escape_string($conn, $data->notasAnemia);
    $hipertension = mysqli_real_escape_string($conn, $data->hipertension);
    $notasHipertension = empty($data->notasHipertension) ? "false" : mysqli_real_escape_string($conn, $data->notasHipertension);
    $enfermedadesRenales = mysqli_real_escape_string($conn, $data->enfermedadesRenales);
    $notasEnfermedadesRenales = empty($data->notasEnfermedadesRenales) ? "false" : mysqli_real_escape_string($conn, $data->notasEnfermedadesRenales);
    $Otras = mysqli_real_escape_string($conn, $data->Otras);
    $notasOtras = empty($data->notasOtras) ? "false" : mysqli_real_escape_string($conn, $data->notasOtras);
    $diabetesAPP = mysqli_real_escape_string($conn, $data->diabetesAPP);
    $notasdiabetesAPP = empty($data->notasdiabetesAPP) ? "false" : mysqli_real_escape_string($conn, $data->notasdiabetesAPP);
    $cancerAPP = mysqli_real_escape_string($conn, $data->cancerAPP);
    $notascancerAPP = empty($data->notascancerAPP) ? "false" : mysqli_real_escape_string($conn, $data->notascancerAPP);
    $dislipidemiaAPP = mysqli_real_escape_string($conn, $data->dislipidemiaAPP);
    $notasdislipidemiaAPP = empty($data->notasdislipidemiaAPP) ? "false" : mysqli_real_escape_string($conn, $data->notasdislipidemiaAPP);
    $anemiaAPP = mysqli_real_escape_string($conn, $data->anemiaAPP);
    $notasAnemiaAPP = empty($data->notasAnemiaAPP) ? "false" : mysqli_real_escape_string($conn, $data->notasAnemiaAPP);
    $hiperAPP = mysqli_real_escape_string($conn, $data->hiperAPP);
    $notasHiperAPP = empty($data->notasHiperAPP) ? "false" : mysqli_real_escape_string($conn, $data->notasHiperAPP);
    $erenalesAPP = mysqli_real_escape_string($conn, $data->erenalesAPP);
    $notasErenalesAPP = empty($data->notasErenalesAPP) ? "falseRENALES" : mysqli_real_escape_string($conn, $data->notasErenalesAPP);
    $otrasAPP = mysqli_real_escape_string($conn, $data->otrasAPP);
    $notasOtrasAPP = empty($data->notasOtrasAPP) ? "false" : mysqli_real_escape_string($conn, $data->notasOtrasAPP);
    
        $query = "INSERT INTO tbl_ArchiveHC(
        id_Nutriologo, id_Paciente, folio_archive, diabetes,
        notasDiabetes, cancer, notasCancer, dislipidemia,
        notasDislipidemia, anemia, notasAnemia, hipertension,
        notasHipertension, enfermedadesRenales, notasEnfermedadesRenales,
        Otras, notasOtras, diabetesAPP, notasdiabetesAPP, cancerAPP,
        notascancerAPP, dislipidemiaAPP, notasdislipidemiaAPP, anemiaAPP,
        notasAnemiaAPP, hiperAPP, notasHiperAPP, erenalesAPP, notasErenalesAPP,
        otrasAPP, notasOtrasAPP)
        VALUES 
        ('$id_Nutriologo', '$id_Paciente', '$folio_archive', '$diabetes', '$notasDiabetes', 
        '$cancer', '$notasCancer', '$dislipidemia', '$notasDislipidemia', 
        '$anemia', '$notasAnemia', '$hipertension', '$notasHipertension', 
        '$enfermedadesRenales', '$notasEnfermedadesRenales', 
        '$Otras', '$notasOtras',
        '$diabetesAPP', '$notasdiabetesAPP', '$cancerAPP', '$notascancerAPP',
        '$dislipidemiaAPP', '$notasdislipidemiaAPP', '$anemiaAPP', '$notasAnemiaAPP',
        '$hiperAPP', '$notasHiperAPP', '$erenalesAPP', '$notasErenalesAPP',
        '$otrasAPP', '$notasOtrasAPP')";


                    //echo $query;
                
            // Ejecutar la consulta
            $result = $conn->query($query);
            
            if ($result) {
                $i_AHF=1;
                $i_APP=1;

                $secondquery="INSERT INTO tbl_HCFlags(id_PatientNV, i_AHF,i_APP) VALUES ('$id_Paciente','$i_AHF','$i_APP')";
                $resultInsert=$conn->query($secondquery);

                if($resultInsert){
                    echo json_encode(array("success" => "Paciente registrado correctamente"));
                }



      
     
     
            } else {
                // Si hubo un error al ejecutar la consulta
                echo json_encode(array("message" => "Error al insertar los datos: " . mysqli_error($conn)));
            }

            // Cerrar la conexión
            mysqli_close($conn);
            
        }

        ?>
