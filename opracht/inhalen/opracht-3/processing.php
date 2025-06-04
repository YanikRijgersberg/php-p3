<?php
session_start();

$naam1 = $_POST['naam1'];
$leeftijd1 = $_POST['leeftijd1'];
$naam2 = $_POST['naam2'];
$leeftijd2 = $_POST['leeftijd2'];

echo "<p>$naam1 is $leeftijd1 jaar oud.</p>";
echo "<p>$naam2 is $leeftijd2 jaar oud.</p>";

$verschil = abs($leeftijd1 - $leeftijd2);

if ($leeftijd1 > $leeftijd2) {
    echo "<p>$naam1 is ouder dan $naam2 met $verschil jaar.</p>";
} elseif ($leeftijd2 > $leeftijd1) {
    echo "<p>$naam2 is ouder dan $naam1 met $verschil jaar.</p>";
} else {
    echo "<p>$naam1 en $naam2 zijn even oud.</p>";
}

// Sla gegevens op in SESSION-variabelen
$_SESSION['naam1'] = $naam1;
$_SESSION['leeftijd1'] = $leeftijd1;
$_SESSION['naam2'] = $naam2;
$_SESSION['leeftijd2'] = $leeftijd2;
?>

<form action="index.php" method="get">
    <button type="submit">Terug naar formulier</button>
</form>
