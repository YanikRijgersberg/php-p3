<?php
require_once '../../connect.php';

function test_input($data) {
    return htmlspecialchars(stripslashes(trim($data)));
}

$brouwernr = test_input($_POST['brouwernr']);
$brnaam = test_input($_POST['brnaam']);
$adres = test_input($_POST['adres']);
$postcode = test_input($_POST['postcode']);
$gemeente = test_input($_POST['gemeente']);
$omzet = test_input($_POST['omzet']);

try {
    $sql = "UPDATE brouwers 
            SET brnaam = :brnaam, adres = :adres, postcode = :postcode, 
                gemeente = :gemeente, omzet = :omzet 
            WHERE brouwernr = :brouwernr";

    $stmt = $db->prepare($sql);
    $stmt->bindValue(':brnaam', $brnaam);
    $stmt->bindValue(':adres', $adres);
    $stmt->bindValue(':postcode', $postcode);
    $stmt->bindValue(':gemeente', $gemeente);
    $stmt->bindValue(':omzet', $omzet);
    $stmt->bindValue(':brouwernr', $brouwernr, PDO::PARAM_INT);
    $stmt->execute();

    echo "<p>Brouwer is succesvol bijgewerkt.</p>";
    echo "<p><a href='select_brouwer.php'>Wijzig nog een brouwer</a></p>";
} catch (PDOException $e) {
    echo "Fout bij bijwerken: " . $e->getMessage();
}
?>
