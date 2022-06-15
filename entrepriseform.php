<?php
session_start();
if (!$_SESSION) {
    error_reporting(E_ERROR | E_PARSE);
}
include('includes/header.php');
include('includes/navbar.php');
?>

<body>
    <div class="container">
        <h1>Les informations d'entreprise</h1>
        <form action="entrep.php" method="post">
            <fieldset>
                <div class="form-group">
                    <label for="nom">Nom d'entreprise</label>
                    <input type="text" class="form-control" name="nom" class="ent" required>
                </div>
                <div class="form-group">
                    <label for="nom">Adresse:</label>
                    <input type="text" class="form-control" name="adresse" class="ent" required>
                </div>
                <div class="form-group">
                    <label for="nom">Téléphone</label>
                    <input type="tel" class="form-control" name="tel" id="" required>
                </div>
                <div class="form-group">
                    <label for="nom">Ville</label>
                    <input type="text" class="form-control" name="ville" class="ent" id="" required>
                </div>

                <button class="btn btn-primary" name="sub" type="submit">Enregistrer</button>
            </fieldset>
        </form>
    </div>
    <?php
    include('includes/footer.php');
    include('includes/scripts.php');
    ?>