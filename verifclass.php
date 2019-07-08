<?php

$name = $_POST['name']; 
$regne = $_POST['regne']; 
$embranchement = $_POST['embranchement']; 
$classe = $_POST['classe'];
$ordre = $_POST['ordre']; 


try
{
	//se connecte à MySQL
	$bdd = new PDO('mysql:host=localhost;dbname=filrouge;charset=utf8', 'root', '');
}
catch(Exception $e)
{
	// En cas d'erreur, affiche un message et on arrête tout
        die('Erreur : '.$e->getMessage());
}
$bdd->exec("INSERT INTO aventure VALUES (default,'$name','$regne','$embranchement','$classe','$ordre'");
    

?>