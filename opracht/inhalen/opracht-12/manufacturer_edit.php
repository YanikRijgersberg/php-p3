<?php 
require_once 'connect.php';     
function test_input($inpData)
{
    $inpData = trim($inpData);
    $inpData = stripslashes($inpData);
    $inpData = htmlspecialchars($inpData);
    return $inpData;
}

$man_pk = isset($_POST['man_pk']) ? test_input($_POST['man_pk']) : '';

if (!ctype_digit($man_pk) || $man_pk < 1) {
    header('Location: manufacturer_select.php?err=ongeldige+PK');
    exit;
}

$sql  = 'SELECT * FROM manufacturer WHERE id = :man_pk';
$stmt = $db->prepare($sql);
$stmt->bindValue(':man_pk', $man_pk, PDO::PARAM_INT);
$stmt->execute();

if ($stmt->rowCount() !== 1) {
    header('Location: manufacturer_select.php?err=PK+niet+gevonden');
    exit;
}

$manData = $stmt->fetch(PDO::FETCH_ASSOC);   
?>
<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="utf-8">
    <title>Wijzig manufacturer #<?= $man_pk ?></title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<h1>Wijzig manufacturer #<?= $man_pk ?></h1>

<form action="update_manufacturer.php" method="post">
    <input type="hidden" name="man_pk" value="<?= $man_pk ?>">

    <fieldset>
        <label for="man_name">Naam</label>
        <input type="text"      name="man_name" id="man_name" required
               value="<?= htmlspecialchars($manData['name']) ?>">
    </fieldset>

    <fieldset>
        <label for="man_country">Land</label>
        <input type="text"      name="man_country" id="man_country" required
               value="<?= htmlspecialchars($manData['country']) ?>">
    </fieldset>

    <fieldset>
        <label for="man_city">Stad</label>
        <input type="text"      name="man_city" id="man_city"
               value="<?= htmlspecialchars($manData['city']) ?>">
    </fieldset>

    <fieldset>
        <label for="man_phone">Telefoon</label>
        <input type="text"      name="man_phone" id="man_phone"
               value="<?= htmlspecialchars($manData['phone']) ?>">
    </fieldset>


    <input type="submit" value="Opslaan">
    <input type="reset"  value="Herstel">
</form>

<script src="app.js"></script>
</body>
</html>
