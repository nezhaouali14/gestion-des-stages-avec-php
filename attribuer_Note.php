<?php session_start();
if (!$_SESSION) {
    error_reporting(E_ERROR | E_PARSE);
}
include('includes/header.php');
include('includes/navbarEnsei.php');
require_once("db.inc.php");
$conn = mysqli_connect('localhost', 'root', '', 'projetstage') or die('Unable To connect');
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

try {
    $ens_id = $_SESSION['utilisateur']['id_enseignant'];

    $query = "SELECT * FROM etudiant,stage,enseignant
    WHERE stage.id_enseignant=$ens_id and etudiant.id_stage=stage.id_stage and stage.id_enseignant=enseignant.id_enseignant  ;";
    $result = $conn->query($query);
?>

    <body id="page-top">

        <!-- Page Wrapper -->
        <div id="wrapper">

            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">

                <!-- Main Content -->
                <div id="content">






                    <!-- Begin Page Content -->
                    <div class="container-fluid">

                        <!-- Page Heading -->
                        <h1 class="h3 mb-2 text-gray-800">choisir les stages </h1>
                        <p class="mb-4">vous pouvez choisir l'étudiant à encadrer en une click,d'aprés l'intitulé du sujet qui vous intéresse .</p>

                        <!-- DataTales Example -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">les etudiants qui vous encadrez</h6>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th> Nom </th>
                                                <th>Prenom</th>
                                                <th>Diplome </th>
                                                <th>Apogee</th>
                                                <th>Intitulé </th>
                                                <th> Description </th>
                                                <th>Encadrant Pédagogique</th>
                                                <th>Rapport version première</th>
                                                <th>Rapport version finale</th>
                                                <th>Noter</th>
                                                <th>Note finale</th>
                                            </tr>
                                        </thead>
                                        <?php
                                        foreach ($result as $data) {
                                        ?>
                                            <tbody>
                                                <tr>
                                                    <td><?= $data['nom'] ?> </td>
                                                    <td><?= $data['prenom'] ?> </td>
                                                    <td><?= $data['diplôme'] ?> </td>
                                                    <td><?= $data['apogee'] ?> </td>
                                                    <td><?= $data['intituléSujet'] ?> </td>
                                                    <td><?= $data['descri'] ?> </td>
                                                    <td><?= $data['nomEns'] ?> <?= $data['prenomEns'] ?> </td>
                                                    <td><?= $data['rapportV1'] ?> </td>
                                                    <td><?= $data['rapportVF'] ?> </td>
                                                    <td>
                                                        <form action="attribuer_Note.php">
                                                            <div class="md-form">
                                                                <input type="text" id="note" name="noteFinal" class="form-control">
                                                            </div>
                                                            <input type="hidden" id="id_stage" name="id_stage" value=<?= $data['id_stage'] ?>>
                                                            <button type="submit" class="btn btn-primary">Enregistrer</button>
                                                        </form>
                                                    </td>
                                                    <td><?= $data['noteFinal'] ?> </td>
                                                </tr>
                                            </tbody>
                                        <?php
                                        }
                                        ?>
                                    </table>
                                    <!-- Scroll to Top Button-->
                                    <a class="scroll-to-top rounded" href="#page-top">
                                        <i class="fas fa-angle-up"></i>
                                    </a>
                                <?php
                            } catch (PDOException $e) {
                                echo "Error: " . $e->getMessage();
                            }
                            include('includes/footer.php');
                            include('includes/scripts.php');
                                ?>
                                <?php



                                include('db.inc.php');
                                if (isset($_GET['id_stage'])) {
                                    $stage_id = $_GET['id_stage'];
                                    $note = $_GET['noteFinal'];

                                    $ens_id = $_SESSION['utilisateur']['id_enseignant'];
                                    $db->query("UPDATE stage SET noteFinal=$note where id_stage='$stage_id'");
                                    $db->query("SELECT noteFinal from stage WHERE id_enseignant ='$ens_id'");

                                    header('location:');
                                }
                                ?>