<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "usedcar";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Verbinding mislukt: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    header("Location: " . $_SERVER['PHP_SELF']);
    exit();
}
?>