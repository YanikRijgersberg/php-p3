<?php
try {
    $db = new PDO('mysql:host=localhost;dbname=bieren', 'root', '');
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Fout: " . $e->getMessage());
}
?>
