<?php
session_start();if(!$_SESSION){
    header('location:login.php');
  error_reporting(E_ERROR | E_PARSE);
}
include('includes/header.php');
include('includes/navbar.php');
?>
<div class="container">
    <div class="card o-hidden border-0 shadow-lg my-5">
        <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
                <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                <div class="col-lg-7">
                    <div class="p-5">
                        <div class="text-center">
                            <h1 class="h4 text-gray-900 mb-4">Create an Account!</h1>
                        </div>
                        <form class="user" action="modif.php" method="post" enctype="multipart/form-data">
                            <div class="form-group">
                                    <input type="file" name="image" class="form-control " id="exampleFirstName" placeholder="First Name">
                                

                            </div>

                            <div class="form-group">
                                    <input type="password" class="form-control form-control-user" id="exampleInputPassword" name="password" placeholder="Password">
                               

                            </div><?php if (isset($_GET['error'])) {
                                        echo "<h3 class='h'>{$_GET['error']}</h3>";
                                    } ?>

                            <input type="submit" value="submit" class="btn btn-primary btn-user btn-block" name="submit">


                        </form>
                        <hr>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php
include('includes/footer.php');
include('includes/scripts.php');
?>