<?php
session_start();
if (!$_SESSION) {
    error_reporting(E_ERROR | E_PARSE);
}
include('includes/header.php');
include('includes/navbar.php');
?>

<body>
<section>
    <div>
    <form action="attes.php" method="post" enctype="multipart/form-data">
        <div>
            <label for=""Déposer votre attestation de stage :></label>
            <input type="file" name="rap" >
        </div>
        <div><input type="submit" value="submit" name="submit"></div>
        
    </form>
    </div>
</section>
    <?php
    include('includes/footer.php');
    include('includes/scripts.php');
    ?>