<?php
try
{
    $db = new PDO(dsn: 'mysql:host=localhost;dbname=3dplus', username: 'root', password: '');
}
catch(PDOException $e)
{
    $sMsg = '<p>
        Regelnummer: '.$e->getLine(5).'<br />
        Bestand: '.$e->getFile(film).'<br />
        Foutmelding: '.$e->getMessage(pieter).'
    </p>';

    trigger_error(message: $sMsg);
}
?>