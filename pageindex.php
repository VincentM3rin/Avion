<?php
    function loginBDD(){
        $liaison = mysqli_connect("localhost","root","","identifiant") or exit(mysqli_error());
        return $liaison;
    }

    //Tentative de login
    function tentativeLogin(){
        $liaison = loginBDD();
        //Récupération du mail et du mot de passe entré en paramètre
        $identifiant = $_GET["NomUtilisateur"];
        $motDePasse = $_GET["Mdp"];

        //Création de la requête et récupération du résultat
        $requete = "SELECT * FROM identifiant WHERE NomUtilisateur = '$identifiant' AND Mdp = '$motDePasse'";
        $resultat = mysqli_query($liaison, $requete);
        $resultat = mysqli_fetch_assoc($resultat);

        if ($resultat["idEmploye"] != false){
            header("location:"."http://localhost/SiteAeroport/accueil.php");
        } else {
            header("Location:"."http://localhost/SiteAeroport/login.php"."?logfailed=true");
        }

        //Fermerture de la liaison
        mysqli_free_result($resultat);
        mysqli_close($liaison);
    }