<?php
session_start();
if (!$_SESSION) {
    error_reporting(E_ERROR | E_PARSE);
}
include('includes/header.php');
include('includes/navbar.php');
?>

<body>
    <div>
    <form action="pres.php" method="post" enctype="multipart/form-data">
        <div>
            <label for="">Votre Fichier :</label>
            <input type="file" name="rap" >
        </div>
        
        <div><input type="submit" value="submit" name="submit"></div>
        
    </form>
    </div>
    <?php
    include('includes/footer.php');
    include('includes/scripts.php');
    ?>