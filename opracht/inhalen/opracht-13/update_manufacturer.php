<?php
session_start();
require_once("functions.php"); 

$errors = [];

$id = test_input($_POST['id']);
$naam = test_input($_POST['naam']);
$land = test_input($_POST['land']);
$email = test_input($_POST['email']);

if (empty($naam)) {
    $errors[] = "Naam is verplicht.";
} elseif (!check_alfabet($naam)) {
    $errors[] = "Naam mag alleen letters, spaties, streepjes bevatten.";
}

if (empty($land)) {
    $errors[] = "Land is verplicht.";
} elseif (!check_alfabet($land)) {
    $errors[] = "Land mag alleen letters en spaties bevatten.";
}

if (empty($email)) {
    $errors[] = "Email is verplicht.";
} elseif (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
    $errors[] = "Ongeldig emailadres.";
}

if (!empty($errors)) {
    echo "<h2>Foutmeldingen:</h2><ul>";
    foreach ($errors as $fout) {
        echo "<li>$fout</li>";
    }
    echo "</ul>";
    echo "<a href='javascript:history.back()'>Ga terug en verbeter de invoer</a>";
    exit;
}

require_once("dbconnect.php");

$sql = "UPDATE manufacturers 
        SET naam = ?, land = ?, email = ? 
        WHERE id = ?";

$stmt = $conn->prepare($sql);
$stmt->bind_param("sssi", $naam, $land, $email, $id);

if ($stmt->execute()) {
    echo "<p>De gegevens zijn succesvol bijgewerkt.</p>";
    echo "<a href='index.php'>Terug naar start</a>";
} else {
    echo "Fout bij bijwerken: " . $stmt->error;
}

$stmt->close();
$conn->close();
?>
