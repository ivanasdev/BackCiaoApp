<?php
// Datos de conexión a la base de datos
$servername = "162.241.62.187";
$username = "nurtivib_nvweb";
$password = "css9393$$$";
$dbname = "nurtivib_system_db";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar la conexión
if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}

?>


