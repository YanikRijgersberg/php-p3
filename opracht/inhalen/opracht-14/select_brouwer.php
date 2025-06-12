<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <title>Selecteer brouwer</title>
</head>
<body>

<h2>Brouwer gegevens ophalen</h2>

<form action="edit_brouwer.php" method="post">
    <label for="brouwernr">Brouwernummer (PK):</label><br>
    <input type="number" name="brouwernr" id="brouwernr" required><br><br>

    <input type="submit" value="Zoek">
    <input type="reset" value="Herstel">
</form>

</body>
</html>
