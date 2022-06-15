<?php 
session_start();
require_once('db.inc.php');
$_SESSION['stage']=$_POST;

$conn = mysqli_connect('localhost','root','','projetstage') or die('Unable To connect');
    if(isset($_POST['submit'])){
        if(isset($_POST['Op'])){
            $_SESSION['stageinfo'] = $_POST;
            header('location:entrepriseform.php');
        }
        else{
            $sel = "SELECT id_entreprise FROM entreprise WHERE nom = '{$_POST['role']}'";
            $rs = $db->query($sel);
            $res = $rs->fetch(PDO::FETCH_ASSOC);
            if($res!=NULL){
                $sql = "INSERT INTO stage(nomEncadrant,prenomEncadrant,intituléSujet,descri,technologiesUtilisées,id_entreprise,nomBinôme,prenomBinôme)
                VALUES ('{$_SESSION['stage']['encEN']}','{$_SESSION['stage']['encEP']}','{$_SESSION['stage']['Intit']}',
                '{$_SESSION['stage']['descr']}','{$_SESSION['stage']['tec']}','{$res['id_entreprise']}','{$_SESSION['stage']['NB']}','{$_SESSION['stage']['PB']}')";
            
                if ($conn->query($sql) === TRUE) {
                    $last_id = $conn->insert_id;
                    mysqli_query($conn, "UPDATE etudiant set id_stage='" . $last_id . "' WHERE id='" . $_SESSION["utilisateur"]['id'] . "'");
                  } else {
                    echo "Error: " . $sql . "<br>" . $conn->error;
                  }
                  
                  $conn->close();



    
                
                
                header('location:profil.php');
            }
        }
    }
