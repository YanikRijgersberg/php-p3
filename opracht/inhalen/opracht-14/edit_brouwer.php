<?php
require 'connect.php'; 

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['brouwcode'])) {
    $brouwcode = $_POST['brouwcode'];
    $naam = $_POST['naam'];
    $land = $_POST['land'];

    try {
        $sql = "UPDATE brouwer SET naam = :naam, land = :land WHERE brouwcode = :brouwcode";
        $stmt = $conn->prepare($sql);
        $stmt->bindParam(':naam', $naam);
        $stmt->bindParam(':land', $land);
        $stmt->bindParam(':brouwcode', $brouwcode, PDO::PARAM_INT);

        if ($stmt->execute()) {
            echo "Brouwer bijgewerkt.";
        } else {
            echo "Fout bij bijwerken.";
        }
    } catch (PDOException $e) {
        echo "Databasefout: " . $e->getMessage();
    }
} else {
    echo "Ongeldige invoer.";
}
?>
