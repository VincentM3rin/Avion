<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf8">
		<title>Connexion</title>
		<link  href="./inscription.css" rel="stylesheet" />
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
	</head>
	<body>
	<section>
			<h1>Veuillez vous connecter au site internet</h1>
        <form action="index.php" method="post">
            <ul>
                <li>
                  <label for="NomUtilisateur">Nom d'utilisateur : </label>
                  <input type="text" name="NomUtilisateur" id="NomUtilisateur" required><br><br>
                </li>
                <li>
                  <label for="Mdp">Mot de passe :</label>
                  <input type="text" name="Mdp" id="Mdp" required><br><br>
                  <br>
                </li>
              </ul>
            <button type="submit" id="connexion">Connexion</button>
        </form>
	</section>
	</body>
</html>
<?php

include_once("config.php");

session_start();
if(isset(INPUT_POST['connexion'])){

    if (isset(INPUT_POST['NomUtilisateur']) && isset(INPUT_POST['Mdp'])) {
       $NomUtilisateur = INPUT_POST['NomUtilisateur'];
       $Mdp= INPUT_POST['Mdp'];
       
       $Requete = mysqli_query($mysqli,"SELECT * FROM identifiant WHERE NomUtilisateur = '".$NomUtilisateur."' AND Mdp = '".$Mdp."'");

        if(mysqli_num_rows($Requete) == 0) {
                            echo("login/mdp failed");
        }
            else{
                $header = header ("Location : Acceuil.php");
            }
       }
    }