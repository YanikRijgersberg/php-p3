<?php
require 'dbconnect.php';
function cleanInput($data) {
    return htmlspecialchars(stripslashes(trim($data)));
}

if (!isset($_POST['submit'])) {
    echo "U bent hier niet op de juiste wijze gekomen.";
    echo "<br><a href='index.html'>Terug naar formulier</a>";
    exit();
}

if (!isset($_POST['merk']) || !isset($_POST['model']) || !isset($_POST['bouwjaar']) || !isset($_POST['prijs'])) {
    echo "Alle verplichte velden moeten worden ingevuld.";
    echo "<br><a href='C'>Terug naar formulier</a>";
    exit();
}

$merk = cleanInput($_POST['merk']);
$model = cleanInput($_POST['model']);
$bouwjaar = cleanInput($_POST['bouwjaar']);
$prijs = cleanInput($_POST['prijs']);
$kleur = isset($_POST['kleur']) ? cleanInput($_POST['kleur']) : NULL;

if (!is_numeric($bouwjaar) || !is_numeric($prijs)) {
    echo "Bouwjaar en prijs moeten numerieke waarden zijn.";
    echo "<br><a href='toevoegen_car.php'>Terug naar formulier</a>";
    exit();
}

try {
    $query = "INSERT INTO car (merk, model, bouwjaar, prijs, kleur) VALUES (:merk, :model, :bouwjaar, :prijs, :kleur)";
    $stmt = $pdo->prepare($query);
    $stmt->bindValue(':merk', $merk);
    $stmt->bindValue(':model', $model);
    $stmt->bindValue(':bouwjaar', $bouwjaar, PDO::PARAM_INT);
    $stmt->bindValue(':prijs', $prijs, PDO::PARAM_INT);
    $stmt->bindValue(':kleur', $kleur);
    $stmt->execute();
    
    echo "De gegevens zijn succesvol toegevoegd.";
    echo "<br><a href='toevoegen_car.php'>Terug naar formulier</a>";
} catch (PDOException $e) {
    echo "Fout bij het toevoegen van gegevens: " . $e->getMessage();
}
?>
