<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

<!-- Sidebar - Brand -->
<a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
    <div class="sidebar-brand-icon rotate-n-15">
    </div>
    <div class="sidebar-brand-text mx-3">ENSA KENITRA<sup></sup></div>
    
</a>

<!-- Divider -->
<hr class="sidebar-divider my-0">

<!-- Divider -->
<hr class="sidebar-divider">






<!-- Nav Item - Pages Collapse Menu 'ajouter un stage'-->
<li class="nav-item">
    <a class="nav-link " href="visustage.php"  data-target="#collapseTwo"
         aria-controls="collapseTwo">
        <span>Visualiser les stages</span>
    </a>

    
</li>

<!-- Nav Item - Pages Collapse Menu 'ajouter la présenat'-->
<li class="nav-item">
    <a class="nav-link " href="choi.php" data-target="#collapseTwo"
         aria-controls="collapseTwo">
        <span>Choisir les stages à encadrer</span>
    </a>

    
</li>
<!-- Nav Item - Pages Collapse Menu 'ajouter un stage'-->
<li class="nav-item">
    <a class="nav-link " href="valider.php" data-target="#collapseTwo"
         aria-controls="collapseTwo">
        <span>Valider un stage pour la soutenance</span>
    </a>

    
</li>
<!-- Nav Item - Pages Collapse Menu 'ajouter un stage'-->
<li class="nav-item">
    <a class="nav-link " href="attribuer_Note.php"  data-target="#collapseTwo"
         aria-controls="collapseTwo">
        <span>Attribuer une note finale</span>
    </a>
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
include('topbarEns.php');
include('scripts.php');
?>