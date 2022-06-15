<?php
error_reporting(E_ERROR | E_PARSE);
require_once('db.inc.php');
$email = addslashes($_POST['email']);
$passe = addslashes($_POST['pass']);
if (isset($_POST['submit']) && isset($_POST['pass'])) {

    $sql = "SELECT * FROM etudiant WHERE email = '$email' AND mdp = '$passe'";
    $rs = $db->query($sql);
    //error case
    if (!$rs) {
        die("Execute query error, because: " . print_r($db->errorInfo(), true));
    } else {

        $res = $rs->fetch(PDO::FETCH_ASSOC);
    }
    if ($res != NULL) {

        $genre = "etu";
    } else {
        $sql = "SELECT * FROM administrateur WHERE email = '$email' AND mdp = '$passe'";
        $rs = $db->query($sql);


        if (!$rs) {
            die("Execute query error, because: " . print_r($db->errorInfo(), true));
        } else {
            $res = $rs->fetch(PDO::FETCH_ASSOC);
        }

        if ($res != NULL) {
            $genre = "adm";
        } else {

            $sql = "SELECT * FROM enseignant WHERE email = '$email' AND mdp = '$passe'";
            $rs = $db->query($sql);
            if (!$rs) {
                die("Execute query error, because: " . print_r($db->errorInfo(), true));
            } else {

                $res = $rs->fetch(PDO::FETCH_ASSOC);
            }

            if ($res != NULL) {
                $genre = "ens";
            } else {

                $error = "Connexion Impossible, resseyez !!";
            }
        }
    }

    if ($res != NULL) {

        session_start();
        $_SESSION['utilisateur'] = $res;
        if ($genre == "etu")
            header('location:profil.php');
        else if ($genre == "ens")
            header('location:profilEns.php');
        else if ($genre == "adm")
            header('location:profilAdmin.php');
    } else {
        $error = "Connexion Impossible, resseyez !!";
    }
}
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/login.css">
</head>

<body>

    <div class="bg-img">
        <form class="container" action="login.php" method="post" enctype="multipart/form-data">
            <?php
            if (isset($error))
                echo "<h2 style='color:red; font-size:15px; margin:5px 37% 5px; padding: 0 0 10px;'>$error</h2>";
            ?>
            <a class="navbar-brand" href="#"> <img src="./img/logo.png" alt="profil" class="rounded-circle img-fluid" style="width: 100px;"></a>
            <h1>Login</h1>
            <label for="email"><b>Email</b></label>
            <input placeholder="Enter Email" type="text" id="email" name="email" required>

            <label for="psw"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" id="pass" name="pass" required>

            <button type="submit" value="submit" name="submit" class="btn">Login</button>
        </form>
    </div>
</body>

</html>