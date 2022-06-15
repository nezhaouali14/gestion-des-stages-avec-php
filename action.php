<?php

  
session_start();if(!$_SESSION){
    
    error_reporting(E_ERROR | E_PARSE);
  }
  
    
include('db.inc.php');
if(isset($_GET['id_stage']))
{
$stage_id=$_GET['id_stage'];
$ens_id = $_SESSION['utilisateur']['id_enseignant'];
$db->query("UPDATE stage SET id_enseignant = $ens_id  where id_stage='$stage_id'");
$db->query("SELECT nomEns,prenomEns from enseignant WHERE id_enseignant ='$ens_id'");

header('location:choi.php');

}
?>