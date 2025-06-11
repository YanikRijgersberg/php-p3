<?php /* manufacturer_select.php */ ?>
<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="utf-8">
    <title>Selecteer manufacturer</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<h1>Manufacturer wijzigen</h1>

<form action="manufacturer_edit.php" method="post">
    <fieldset>
        <label for="man_pk">Primary-key-nummer</label>
        <input type="number" name="man_pk" id="man_pk" required min="1">
    </fieldset>

    <input type="submit" value="Zoeken">
    <input type="reset"  value="Wis">
</form>

<script src="app.js"></script>
</body>
</html>
