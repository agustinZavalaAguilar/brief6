<?php 
include("pdo.php");

var_dump($_GET['id_favori']);

$deleteRegister = "DELETE FROM favoris WHERE favoris.id_favori =" . $_GET['id_favori'];
$pdo->query($deleteRegister);

header('Location: index.php');




