<?php
$host = 'localhost';
$db   = 'bieren'; 
$user = 'root';
$pass = ''; 
$charset = 'utf8mb4';

$dsn = "mysql:host=$host;dbname=$db;charset=$charset";

try {
    $db = new PDO($dsn, $user, $pass);
} catch (PDOException $e) {
    echo "Databaseconnectie mislukt: " . $e->getMessage();
    exit;
}
?>
