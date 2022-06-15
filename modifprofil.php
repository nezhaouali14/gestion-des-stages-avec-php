<?php
session_start();
if (!$_SESSION) {
    error_reporting(E_ERROR | E_PARSE);
}
include('includes/header.php');
include('includes/navbar.php');
?>
<div class="container">
    <form class="user" role="form" autocomplete="off" action="modifprofil.php" method="post" enctype="multipart/form-data">
        <div class="mb-3">
            <label for="formFile" class="form-label">Modifier la photo du profil</label>
            <input class="form-control"  name="image" type="file" id="formFile">
        </div>
        <?php if (isset($_GET['error'])) {
            echo "<h3 class='h'>{$_GET['error']}</h3>";
        } ?>

        <input type="submit" value="submit" class="btn btn-primary btn-user" name="submit">
    </form>
</div>

<?php
    require_once('db.inc.php');
    if(isset($_POST['submit']) && isset($_FILES['image']) ){
        
        $img = strtolower($_FILES['image']['name']);
        $img_ex = pathinfo($img, PATHINFO_EXTENSION);
        $img_ex_lc = strtolower($img_ex);

        $allowed_exs = array("jpg", "jpeg", "png"); 

        if (in_array($img_ex_lc, $allowed_exs)) {
            $new = uniqid("photo-",true).'.'.$img;
            $path = './pdp/'.$new;
            move_uploaded_file($_FILES['image']['tmp_name'],$path);
            $sql = "UPDATE etudiant SET url = '$new' WHERE id = '{$_SESSION['utilisateur']['id']}'";
            $rs = $db->exec($sql);
            
            
        }
        else{
            $err = "Un Des Champs N'est Pas Remplie !!";
        
        }
        
}

include('includes/footer.php');
include('includes/scripts.php');
?>