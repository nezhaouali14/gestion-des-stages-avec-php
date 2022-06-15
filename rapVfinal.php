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
<form action="rap_ff.php" method="post" enctype="multipart/form-data">
    <div>
        <label for="">Déposer votre rapport version finale  :</label>
        <input type="file" name="rapf">
    </div>
    <div><input type="submit" value="submit" name="submit"></div>

</form>
</section>

<?php
    include('includes/footer.php');
    include('includes/scripts.php');
    ?>