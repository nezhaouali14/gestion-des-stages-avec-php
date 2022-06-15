<?php
$db_host="localhost";
$db_name="projetstage";
$db_user="root";
$db_pass="";

$dsn = "mysql:host=$db_host;dbname=$db_name";
#ici la connexion à la BDD

try{
    $db = new PDO($dsn,$db_user,$db_pass);
    } catch(PDOException $e){
        die("Erreur : ".$e->getMessage()."<br>");
    }

?>