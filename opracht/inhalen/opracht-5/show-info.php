<?php
$servername = "localhost";
$username = "root"; 
$password = "";
$dbname = "reizen"

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Verbinding mislukt: " . $conn->connect_error);
}

$sql = "SELECT klantid, voornaam, achternaam FROM klant";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<table border='1'>";
    echo "<tr><th>Klant ID</th><th>Voornaam</th><th>Achternaam</th></tr>";

    while ($row = $result->fetch_assoc()) {
        echo "<tr><td>{$row['klantid']}</td><td>{$row['voornaam']}</td><td>{$row['achternaam']}</td></tr>";
    }
    echo "</table>";
} else {
    echo "Geen resultaten gevonden.";
}

$conn->close();
?>
