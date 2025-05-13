<?php
$host = 'localhost';
$db = 'usedcars';
$user = 'root';
$pass = '';

$conn = new mysqli($host, $user, $pass, $db);

if ($conn->connect_error) {
    die("Connectie mislukt: " . $conn->connect_error);
}

$requiredFields = ['name', 'email', 'tel', 'adressline1', 'zipcode', 'city', 'country'];
foreach ($requiredFields as $field) {
    if (empty($_POST[$field])) {
        die("Fout: veld '$field' is verplicht.");
    }
}

$stmt = $conn->prepare("INSERT INTO manufacturer 
(name, email, tel, adressline1, addressline2, zipcode, city, country) 
VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");

$stmt->bind_param("sssssssss", 
    $_POST['name'],
    $_POST['email'],
    $_POST['tel'],
    $_POST['adressline1'],
    $_POST['addressline2'],
    $_POST['zipcode'],
    $_POST['city'],
    $_POST['country']
);

if ($stmt->execute()) {
    echo "Fabrikant succesvol toegevoegd.";
} else {
    echo "Fout bij toevoegen: " . $stmt->error;
}

$stmt->close();
$conn->close();
?>
