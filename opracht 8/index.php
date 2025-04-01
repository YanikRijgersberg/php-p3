<?php
$servername = "localhost";
$username = "root"; // Standaard voor WampServer
$password = ""; // Leeg laten als je geen wachtwoord hebt ingesteld
$dbname = "autodb"; // Verander dit naar jouw database naam

// Verbinding maken
$conn = new mysqli($servername, $username, $password, $dbname);

// Controleer de verbinding
if ($conn->connect_error) {
    die("Verbinding mislukt: " . $conn->connect_error);
} else {
    echo "Verbinding geslaagd!";
}
?>
