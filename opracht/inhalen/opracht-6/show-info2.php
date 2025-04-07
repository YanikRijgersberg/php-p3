<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?php
    require_once "dbconnect2.php";
    try
    {
        $sQuery = "SELECT * FROM bier";
        $oStmt = $db->prepare($sQuery);
        $oStmt->execute();

        if($oStmt->rowCount() > 0)
        {
            echo '<table>';
            echo '<thead>';
            echo '<tr>';
            echo '<th>biercode</th>';
            echo '<th>naam</th>';
            echo '<th>soort</th>';
            echo '</tr>';
            echo '</thead>';
            echo '<tbody>';

            while($aRow = $oStmt->fetch(PDO::FETCH_ASSOC))
            {
                echo '<td>'.$aRow['biercode'].'</td>';
                echo '<td>'.$aRow['naam'].'</td>';
                echo '<td>'.$aRow['soort'].'</td>'; 
                echo '</tr>';
            }
            echo '</tbody>';
            echo '</table>';
        }
        else
        {
            echo 'helaas, geen gegevens bekend';
        }
    }
    catch(PDOException $e)
    {
        $sMsg = '<p>
        Regelnummer: '.$e->getLine().'<br />
        Bestand: '.$e->getFile(). '<br />
        Foutmelding: '.$e->getMessage().'
        </p>';

        trigger_error($sMsg);
    }
    $db = null;
    ?>
</body>
</html>