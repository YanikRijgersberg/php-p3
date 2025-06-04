<?php
session_start();

$naam1 = isset($_SESSION['naam1']) ? $_SESSION['naam1'] : "";
$leeftijd1 = isset($_SESSION['leeftijd1']) ? $_SESSION['leeftijd1'] : "";
$naam2 = isset($_SESSION['naam2']) ? $_SESSION['naam2'] : "";
$leeftijd2 = isset($_SESSION['leeftijd2']) ? $_SESSION['leeftijd2'] : "";

// Na uitlezen: SESSION leegmaken
unset($_SESSION['naam1']);
unset($_SESSION['leeftijd1']);
unset($_SESSION['naam2']);
unset($_SESSION['leeftijd2']);
?>

<!DOCTYPE html>
<html lang="nl">
<head>
    <meta charset="UTF-8">
    <title>Formulier</title>
</head>
<body>
    <h1>Voer twee personen in</h1>
    <form action="processing.php" method="post">
        <label>Naam 1: <input type="text" name="naam1" value="<?= htmlspecialchars($naam1) ?>"></label><br>
        <label>Leeftijd 1: <input type="number" name="leeftijd1" value="<?= htmlspecialchars($leeftijd1) ?>"></label><br><br>

        <label>Naam 2: <input type="text" name="naam2" value="<?= htmlspecialchars($naam2) ?>"></label><br>
        <label>Leeftijd 2: <input type="number" name="leeftijd2" value="<?= htmlspecialchars($leeftijd2) ?>"></label><br><br>

        <button type="submit">Verstuur</button>
        <button type="reset">Reset</button>
    </form>
</body>
</html>
