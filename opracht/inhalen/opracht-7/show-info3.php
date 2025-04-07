<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bier Overzicht</title>
</head>
<body>

<?php
require_once "dbconnect3.php";

try {
    $sQuery = "SELECT biercode, naam, soort FROM bier"; 
    $oStmt = $db->prepare($sQuery);
    $oStmt->execute();

    if ($oStmt->rowCount() > 0) {
        echo '<table>';
        echo '<thead><tr><th>Biercode</th><th>Naam</th><th>Soort</th></tr></thead>';
        echo '<tbody>';

        while ($aRow = $oStmt->fetch(PDO::FETCH_ASSOC)) {
            echo '<tr>';
            echo '<td>' . htmlspecialchars($aRow['biercode']) . '</td>';
            echo '<td>' . htmlspecialchars($aRow['naam']) . '</td>';
            echo '<td>' . htmlspecialchars($aRow['soort']) . '</td>';
            echo '</tr>';
        }

        echo '</tbody></table>';
    } else {
        echo '<p>Helaas, geen gegevens bekend.</p>';
    }
} catch (PDOException $e) {
    echo '<p><strong>Fout:</strong> ' . $e->getMessage() . '</p>';
}

$db = null;
?>

</body>
</html>
