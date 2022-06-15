<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

<!-- Sidebar - Brand -->
<a class="sidebar-brand d-flex align-items-center justify-content-center">
    <div class="sidebar-brand-icon rotate-n-15">
    </div>
    <div class="sidebar-brand-text mx-3">ENSA KENITRA<sup></sup></div>
</a>
<hr class="sidebar-divider my-0">
<hr class="sidebar-divider">
<li class="nav-item">
    <a class="nav-link " href="visustage.php"  data-target="#collapseTwo"
         aria-controls="collapseTwo">
        <span>Tous les stages </span>
    </a>   
</li>
<li class="nav-item">
    <a class="nav-link " href="listeEtuEnsei.php" data-target="#collapseTwo"
         aria-controls="collapseTwo">
        <span>La liste des étudiants par enseignant</span>
    </a>  
</li>
<li class="nav-item">
    <a class="nav-link " href="EtuSansEncadrant.php" data-target="#collapseTwo"
         aria-controls="collapseTwo">
        <span> La liste des étudiants sans encadrants pédagogiques</span>
    </a>  
</li>
<li class="nav-item">
    <a class="nav-link " href="EtudnonRapport.php" data-target="#collapseTwo"
         aria-controls="collapseTwo">
        <span>La liste des étudiants qui n’ont pas déposer le rapport</span>
    </a>
</li>
<li class="nav-item">
    <a class="nav-link " href="visu_stage_validé.php" data-target="#collapseTwo"
         aria-controls="collapseTwo">
        <span>La liste des stages validés pour la soutenance.</span>
    </a>
</li>
<!-- Nav Item - Tables -->
<li class="nav-item">
    <a class="nav-link" href="VisualiNote.php">
        <span>Les notes attribués aux étudiants</span></a>
</li>
<!-- Sidebar Toggler (Sidebar) -->
<div class="text-center d-none d-md-inline">
    <button class="rounded-circle border-0" id="sidebarToggle"></button>
</div>
</ul>
<!-- End of Sidebar -->
<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Souhaitz vous vraiment vous déconnecter?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Sélectionnez "Déconnexion" ci-dessous si vous êtes prêt à mettre fin à votre session en cours.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Annuler</button>
                    <a class="btn btn-primary" href="logout.php">Déconnexion</a>
                </div>
            </div>
        </div>
    </div>
    <?php 
include('topbarAdmin.php');
include('scripts.php');
?>