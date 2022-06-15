<?php
session_start();if(!$_SESSION){
    header('location:sign-in.php');
    error_reporting(E_ERROR | E_PARSE);
  }
  if( !$_SESSION['utilisateur']){
    header('location:sign-in.php');
  
    }
    
include('db.inc.php');
if(isset($_GET['id_stage']))
{
$stage_id=$_GET['id_stage'];
$ens_id = $_SESSION['utilisateur']['id_enseignant'];
$db->query("UPDATE  stage  SET validation = 'Validé'  where id_stage='$stage_id'");
$db->query("SELECT 'validation' from stage WHERE id_enseignant='$ens_id'");

header('location:validé.php');

}
?>