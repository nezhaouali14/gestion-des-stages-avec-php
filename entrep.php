<?php
session_start();
    require_once('db.inc.php');
    if(isset($_POST['sub'])){
        $nom = addslashes($_POST['nom']);
        ucfirst($nom);
        $adr = addslashes($_POST['adresse']);
        $tel = addslashes($_POST['tel']);
        $ville = addslashes($_POST['ville']);
        
        $sql = "INSERT INTO entreprise(nom,adresse,tel,ville) VALUES ('$nom','$adr','$tel','$ville')";
        $db->exec($sql);
        
        $sel = "SELECT id_entreprise FROM entreprise WHERE nom = '$nom'";
            $rs = $db->query($sel);
            $res = $rs->fetch(PDO::FETCH_ASSOC);
            if($res != NULL){
                $sql = "INSERT INTO stage(nomEncadrant,prenomEncadrant,intituléSujet,descri,technologiesUtilisées,id_entreprise,nomBinôme,prenomBinôme)
                VALUES ('{$_SESSION['stage']['encEN']}','{$_SESSION['stage']['encEP']}','{$_SESSION['stage']['Intit']}',
                '{$_SESSION['stage']['descr']}','{$_SESSION['stage']['tec']}',{$res['id_entreprise']},'{$_SESSION['stage']['NB']}','{$_SESSION['stage']['PB']}')";
                $nb = $db->exec($sql);
                header('location:etud.php');
            }
    }

?>