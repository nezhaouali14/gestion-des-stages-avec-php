    <?php
    session_start();
    $id=$_SESSION['utilisateur']['id'];
    $conn = mysqli_connect('localhost','root','','projetstage') or die('Unable To connect');
    if (count($_POST) > 0) {
        $result = mysqli_query($conn, "SELECT *from etudiant WHERE id ='". $id . "'");
        $row = mysqli_fetch_array($result);
        if ($_POST["currentPassword"] == $row["mdp"] && $_POST["newPassword"] == $_POST["confirmPassword"]) {
            mysqli_query($conn, "UPDATE etudiant set mdp='" . $_POST["newPassword"] . "' WHERE id='" . $id . "'");
            $message = "Password Changed";
            header("location:profil.php");
            }
        } else{
            $message = "Current Password is not correct";
        }
    
    ?>
     