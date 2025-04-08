<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Toevoegen car</title>
    <link rel="stylesheet" href="style.css"> 
</head>
<body>
    <h2>Auto Toevoegen</h2>
    <form action="" method="post">
        <label>Merk:</label>
        <input type="text" name="merk" required><br>
        
        <label>Model:</label>
        <input type="text" name="model" required><br>
        
        <label>Bouwjaar:</label>
        <input type="number" name="bouwjaar" min="1886" max="2025" required><br>
        
        <label>Prijs:</label>
        <input type="number" name="prijs" min="0" step="0.01" required><br>
        
        <label>Kleur:</label>
        <input type="text" name="kleur"><br>
        
        <input type="submit" value="Toevoegen">
        <input type="reset" value="Reset">
    </form>
</body>
</html>