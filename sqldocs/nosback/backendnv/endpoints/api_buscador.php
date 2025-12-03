<?php 

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    include 'conexion2.php';

    $data = json_decode(file_get_contents("php://input"));

    if (isset($data->busqueda)) {
        // Utilizar una sentencia preparada para evitar inyección SQL
        $querySelect = "SELECT * FROM `tbl_Verduras` WHERE st_Alimento LIKE ?";

        $stmt = $conn2->prepare($querySelect);
        // Enlazar el parámetro y establecer el patrón de búsqueda
        $key_busqueda = "%" . $conn2->real_escape_string($data->busqueda) . "%";
        $stmt->bind_param("s", $key_busqueda);

        $stmt->execute();
        $result = $stmt->get_result();

        if ($result) {
            $response = $result->fetch_all(MYSQLI_ASSOC);
            // Devolver el resultado como JSON
            echo json_encode($response);
        } else {
            // Si hay un error en la consulta
            echo json_encode(array("error" => "Error al obtener pacientes: " . $conn2->error));
        }

        $stmt->close();  // Cerrar la sentencia preparada
    } else {
        // Si faltan datos en la solicitud
        echo json_encode(array("error" => "Faltan datos en la solicitud."));
    }

    // Cerrar la conexión a la base de datos
    $conn2->close();
} else {
    echo json_encode(array("error" => "Método de solicitud no válido."));
}
?>
