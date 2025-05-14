<?php
    session_start()
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf8">
		<title>Connexion</title>
		<link  href="./inscription.css" rel="stylesheet" />
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
	</head>
	<body>
        <section id="pageindex">
	<h1>Veuillez vous connecter au site internet</h1>
            <div id="containerLogin">
                <form action="PagesAnnexes/pageindex.php" method="get">
                    <input class="inputLogin" type="text" name="NomUtilisateur" placeholder="NomUtilisateur">
                    <input class="inputLogin" type="password" name="Mdp" placeholder="Mdp">
                    <input class="boutonValider" name="boutonValider" type="submit" value="Valider">
                </form>
            </div>
	</section>
        <?php
            if(isset($_GET) && isset($_GET["logfailed"])){
            echo("
                <section id='pageindex'>
                    <div class='erreurLogin'>
                        <p>Connexion impossible</p>
                        <p>Veuillez réessayer</p>
                    </div>
                </section>
            ");
            }
        ?>
	</body>
</html>