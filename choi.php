<?php session_start();
if (!$_SESSION) {
    error_reporting(E_ERROR | E_PARSE);
}
include('includes/header.php');
include('includes/navbarEnsei.php');
require_once("db.inc.php");
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

try {
    $query = 'SELECT * FROM etudiant,stage
WHERE etudiant.id_stage=stage.id_stage  and id_enseignant is null';
    $result = $db->query($query);
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
                        <p class="mb-4">vous pouvez choisir l'étudiant à encadrer en une click,d'aprés l'intitulé du sujet qui vous intéresse <a target="_blank" href="https://datatables.net">official DataTables documentation</a>.</p>

                        <!-- DataTales Example -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
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
                                                <th>Intitulé du sujet</th>
                                                <th> Description du sujet </th>
                                                
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
                                                    <td><?php if ($data['id_enseignant'] =null) : ?>
                                                            <a href="action.php?id_stage=<?= $data['id_stage'] ?>" class="btn btn-danger">Choisir</a><?php else : ?>
                                                        <?php endif ?>

                                                    </td>
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