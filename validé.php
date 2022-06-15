<?php

session_start();if(!$_SESSION){
    header('location:sign-in.php');
    error_reporting(E_ERROR | E_PARSE);
  }
  if( !$_SESSION['utilisateur']){
    header('location:sign-in.php');
  
    }
 // include("database.php");
$hostName = "localhost";
$username = "root";
$password = "";
$databaseName = "projetstage";
$conn = new PDO("mysql:host=$hostName;dbname=$databaseName", $username, $password);
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

try {

    $ens_id = $_SESSION['utilisateur']['id_enseignant'];
    
    $query = "SELECT * FROM etudiant,stage,enseignant
    WHERE stage.id_enseignant=$ens_id and etudiant.id_stage=stage.id_stage and stage.id_enseignant=enseignant.id_enseignant  ;";
    $result = $conn->query($query);
     ?>
 
 <table align=center border="1" cellpadding="10" cellspacing="0">
 <h3 align=center>Stages</h3> 
    <tr>
    
  <th> Nom </th> 
   <th>Prenom</th>
   <th>Diplome </th>
   <th>Apogee</th>
  <th>Intitulé </th> 
  <th> Description </th>
  <th>Nom Encadrant</th> 
  <th>Prenom Encadrant</th> 
  <th>Statut</th> 
  
   

   
   </tr>
   <?php
 
 
 foreach ($result as $data) {
   
   ?>
 <tr>
 
   <td><?=$data['nom'] ?> </td>
   <td><?=$data['prenom'] ?> </td>
   <td><?=$data['diplôme'] ?> </td>
   <td><?=$data['apogee'] ?> </td>
   <td><?=$data['intituléSujet'] ?> </td>
   <td><?=$data['descri'] ?> </td>
   <td><?=$data['nomEns'] ?> </td>
   <td><?=$data['prenomEns'] ?> </td>
   <td><?=$data['validation'] ?> </td>


   
   
   </tr>
    
   
    
    <?php
    
  }
  ?>
</table>
  <?php
} catch(PDOException $e) {
  echo "Error: " . $e->getMessage();

 
  }





?>
