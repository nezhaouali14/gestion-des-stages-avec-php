<?php
session_start();
if(!$_SESSION){
  error_reporting(E_ERROR | E_PARSE);
}
include('includes/header.php');
include('includes/navbarEnsei.php');
?>
<div class="container">
    <!-- form card change password -->
    <div class="card card-outline-secondary">
                        <div class="card-header">
                            <h3 class="mb-0">Changer le Mot de passe</h3>
                        </div>
                        <div class="card-body">
                            <form class="form" role="form" autocomplete="off" action="modifEns.php" method="post" enctype="multipart/form-data">
                            <?php if (isset($_GET['error'])) {
                                        echo "<h3 class='h'>{$_GET['error']}</h3>";
                                    } ?>
                                <div class="form-group">
                                    <label for="inputPasswordOld">Le mot De passe actuel</label>
                                    <input type="password" class="form-control" name="currentPassword" id="inputPasswordOld" required="">
                                </div>
                                <div class="form-group">
                                    <label for="inputPasswordNew">Nouveau Mot de passe</label>
                                    <input type="password" class="form-control" name="newPassword" id="inputPasswordNew" required="">
                                    <span class="form-text small text-muted">
                                        </span>
                                </div>
                                <div class="form-group">
                                    <label for="inputPasswordNewVerify">Vérifier le Mot de passe</label>
                                    <input type="password" class="form-control" name="confirmPassword" id="inputPasswordNewVerify" required="">
                                </div>
                               
                                <div class="form-group">
                                    <button type="submit" class="btn btn-success btn-lg float-right">Enregistrer</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- /form card change password -->
<?php
  include('includes/footer.php');
  include('includes/scripts.php');
?>