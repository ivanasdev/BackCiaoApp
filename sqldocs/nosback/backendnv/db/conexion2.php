<?php
// Datos de conexión a la segunda base de datos
$servername2 = "162.241.62.187";
$username2 = "nurtivib_nvweb";
$password2 = "css9393$$$";
$dbname2 = "nurtivib_base_alimentos";

// Crear conexión a la segunda base de datos
$conn2 = new mysqli($servername2, $username2, $password2, $dbname2);

// Verificar la conexión
if ($conn2->connect_error) {
    die("Error de conexión a la segunda base de datos: " . $conn2->connect_error);
}
?>