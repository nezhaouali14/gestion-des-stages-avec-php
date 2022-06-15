<?php
session_start();
if (!$_SESSION) {
    error_reporting(E_ERROR | E_PARSE);
}
include('includes/header.php');
include('includes/navbar.php');
require_once('db.inc.php');
$sql = "SELECT * FROM entreprise";
$rs = $db->query($sql);
$res = $rs->fetchAll(PDO::FETCH_ASSOC);

?>

<body>
    <div class="container">
        <h1>Les informations autour du stage</h1>
        <form action="stage.php" method="post">
            <fieldset class="stage">
                <div class="form-group">
                    <label for="selection">Nom de l'entreprise</label>
                    <select id="role" name="role" class="form-control">
                        <option value="">Entreprise</option>
                        <?php
                        foreach ($res as $r) {
                            echo "<option value='{$r['nom']}'>{$r['nom']}</option>";
                        }
                        ?>
                    </select>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" name="Op" value="c1" id="ck1">
                    <label class="form-check-label"  for="ck1">Autre Entreprise</label>
                </div>

                <div class="form-group">
                    <label for="nom">Nom d'encadrant externe</label>
                    <input type="text" class="form-control" name="encEN" id="nom" placeholder="">
                </div>
                <div class="form-group">
                    <label for="nom">Prenom d'encadrant externe</label>
                    <input type="text" class="form-control" name="encEP" id="nom" >
                </div>
                <div class="form-group">
                    <label for="nom">Intitulé du sujet</label>
                    <input type="text" class="form-control" name="Intit" id="nom" >
                </div>
                <div class="form-group">
                    <label for="nom">Nom Binôme</label>
                    <input type="text" class="form-control" name="NB" id="nom" >
                </div>
                <div class="form-group">
                    <label for="nom">Prenom Binôme</label>
                    <input type="text" class="form-control" name="PB" id="nom" >
                </div>
                <div class="form-group">
                    <label for="bio">Description Du Sujet :</label>
                    <textarea name="descr" class="form-control" id="bio" rows="3"></textarea>
                </div>
                <div class="form-group">
                    <label for="bio">Les Technologies Utilisées :</label>
                    <textarea name="tec"  class="form-control" id="bio" rows="3"></textarea>
                </div>
                
                <button class="btn btn-primary" name="submit" type="submit">Enregistrer</button>
            </fieldset>
        </form>
    </div>
    <?php
    include('includes/footer.php');
    include('includes/scripts.php');
    ?>