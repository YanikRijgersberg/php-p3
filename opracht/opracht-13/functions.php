<?php
function test_input($inpData)
{
    $inpData = trim($inpData);
    $inpData = stripslashes($inpData);
    $inpData = htmlspecialchars($inpData);
    return $inpData;
}

function check_alfanum($inpData)
{
    return preg_match("/^[a-zA-Z0-9-' ]*$/", $inpData);
}

function check_alfabet($inpData)
{
    return preg_match("/^[a-zA-Z-' ]*$/", $inpData);
}
?>
