<?php session_start();
if (!$_SESSION) {
  header('location:login.php');
  error_reporting(E_ERROR | E_PARSE);
}
include('includes/header.php');
include('includes/navbar.php');
?>
<style>
  .gradient-custom {
    /* fallback for old browsers */
    background: #f6d365;

    /* Chrome 10-25, Safari 5.1-6 */
    background: -webkit-linear-gradient(to right bottom, rgba(246, 211, 101, 1), rgba(253, 160, 133, 1));

    /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
    background: linear-gradient(to right bottom, rgba(246, 211, 101, 1), rgba(253, 160, 133, 1))
  }
</style>
</head>

<body>
  <section style="background-color:#eee;">
    <h1 style="text-align:center" ;> BONJOUR!</h1>
    <div class="container py-5">
      <div class="row">
        <div class="col-lg-4">
          <div class="card mb-4">

            <div class="card-body text-center">
              <img src="./pdp/<?php echo $_SESSION['utilisateur']['url'] ?>" alt="profil" class="rounded-circle img-fluid" style="width: 150px;">
              <h5 class="my-3"><?php echo $_SESSION['utilisateur']['nom']; ?> <?php echo $_SESSION['utilisateur']['prenom']; ?></h5>
              <p class="text-muted mb-1">Elève Ingénieur</p>
              <p class="text-muted mb-4">ENSA KENITRA</p>
            </div>
          </div>
        </div>
        <div class="col-lg-8">
          <div class="card mb-4">
            <div class="card-body">
              <div class="row">
                <div class="col-sm-3">
                  <p class="mb-0">Nom </p>
                </div>
                <div class="col-sm-9">
                  <p class="text-muted mb-0"><?php echo $_SESSION['utilisateur']['nom']; ?></p>
                </div>
              </div>
              <hr>
              <div class="row">
                <div class="col-sm-3">
                  <p class="mb-0">Prénom</p>
                </div>
                <div class="col-sm-9">
                  <p class="text-muted mb-0"><?php echo $_SESSION['utilisateur']['prenom']; ?></p>
                </div>
              </div>
              <hr>
              <div class="row">
                <div class="col-sm-3">
                  <p class="mb-0">Email</p>
                </div>
                <div class="col-sm-9">
                  <p class="text-muted mb-0"><?php echo $_SESSION['utilisateur']['email']; ?></p>
                </div>
              </div>
              <hr>
              <div class="row">
                <div class="col-sm-3">
                  <p class="mb-0">Apogée</p>
                </div>
                <div class="col-sm-9">
                  <p class="text-muted mb-0"><?php echo $_SESSION['utilisateur']['apogee']; ?></p>
                </div>
              </div>
              <hr>
              <div class="row">
                <div class="col-sm-3">
                  <p class="mb-0">Diplôme</p>
                </div>
                <div class="col-sm-9">
                  <p class="text-muted mb-0"><?php echo $_SESSION['utilisateur']['diplôme']; ?></p>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12">
              <div class="d-flex justify-content-center mb-3">
                <a button type="button" class="btn btn-primary" href="modif.html.php" style="margin-right: 20px;">Modifier MDP</button>
                </a>
                <a button type="button" class="btn btn-outline-primary ms-1" href="modifprofil.php">Modifier Profil</button>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    </div>
  </section>

  <?php
  include('includes/footer.php');
  include('includes/scripts.php');
  ?>