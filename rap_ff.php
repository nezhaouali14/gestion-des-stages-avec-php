<?php
 session_start();
    require_once('db.inc.php');
    $conn = mysqli_connect('localhost','root','','projetstage') or die('Unable To connect');
    if(isset($_POST['submit'])){
        $pname = rand(1000,10000)."-";
        $tname = $_FILES['rapf']['tmp_name'];
        $uploads_dir = './rapport_f';
        move_uploaded_file($tname, $uploads_dir.'/'.$pname);
        $sql = "SELECT id_stage from etudiant where id='" . $_SESSION["utilisateur"]['id'] . "'";
        $rs = $db->query($sql)->fetch();
        echo ( $rs['id_stage'] ) ;
        mysqli_query($conn, "UPDATE stage set rapportVF='" . $pname . "' where  id_stage='" . $rs['id_stage']  . "'");

        header("location:profil.php");
    }
