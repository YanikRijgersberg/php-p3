<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <title>Fabrikant toevoegen</title>
</head>
<body>
    <h2>Fabrikant toevoegen</h2>
    <form action="insert-manufacturer.php" method="POST">
        <label>Naam:</label><br>
        <input type="text" name="name" required><br><br>

        <label>Email:</label><br>
        <input type="email" name="email" required><br><br>

        <label>Telefoon:</label><br>
        <input type="text" name="tel" required><br><br>

        <label>Adresregel 1:</label><br>
        <input type="text" name="adressline1" required><br><br>

        <label>Adresregel 2 (optioneel):</label><br>
        <input type="text" name="addressline2"><br><br>

        <label>Postcode:</label><br>
        <input type="text" name="zipcode" required><br><br>

        <label>Stad:</label><br>
        <input type="text" name="city" required><br><br>

        <label>Provincie/Regio (optioneel):</label><br>
        <input type="text" name="state"><br><br>

        <label>Land:</label><br>
        <input type="text" name="country" required><br><br>

        <input type="submit" value="Toevoegen">
    </form>
</body>
</html>
