<html>
	<head>
		<meta charset="utf8">
		<title>Accueil</title>
		<link  href="./avion.css" rel="stylesheet" />
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
	</head>
	<body>
        <nav>	
			<br>
			<div>
				<a href="./index.html">Deconnexion</a>
				<a href="./inscription.css">Inscription</a>
			</div>
		</nav>
                <section id="pageAccueil">
		<h1>Bienvenue ADMIN !</h1>
		<h2>Choisisez votre type d'avion : </h2>
            <div id="containerEtat">
                <form action="accueil.php" method="post">
                    <select class="listeChoix" name="choixEtat" id="listeEtat">
                        <option value="en Vol">Avions qui sont en vol</option>
                        <option value="au Sol">Avions qui attendent de décollez</option>
                        <option value="maintenance">Avions en panne</option>
                    </select>
                    <input class="boutonValider" name="boutonValider" type="submit" value="Rechercher">
                </form>
            </div>
        </section>
        <section id="pageAccueil">
            <?php
                if (isset($_POST["choixEtat"]) && $_POST["choixEtat"] != "null"){
                    echo "<div id='resultatsVols'>";
                    echo rechercheEtat();
                    echo "</div>";
                }
            ?>
        </section>
    </body>
</html>
