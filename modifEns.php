<?php
    session_start();
    $id=$_SESSION['utilisateur']['id_enseignant'];
    $conn = mysqli_connect('localhost','root','','projetstage') or die('Unable To connect');
    if (count($_POST) > 0) {
        $result = mysqli_query($conn, "SELECT *from enseignant WHERE id_enseignant ='". $id . "'");
        $row = mysqli_fetch_array($result);
        if ($_POST["currentPassword"] == $row["mdp"] && $_POST["newPassword"] == $_POST["confirmPassword"]) {
            mysqli_query($conn, "UPDATE enseignant set mdp='" . $_POST["newPassword"] . "' WHERE id_enseignant='" . $id . "'");
            $message = "Password Changed";
            header("Refresh:0; url=profilEns.php");;
            }
        } else{
            $message = "Current Password is not correct";
        }
    
    ?>
     