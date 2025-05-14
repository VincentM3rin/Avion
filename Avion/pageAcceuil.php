<?php
    function loginBDD(){
    $liaison = mysqli_connect("localhost","root","","avion") or exit(mysqli_error());
    return $liaison;
    }
    
    function rechercheEtat(){
        $liaison = loginBDD();
        $tableauVol = "<table>
            <tr>
                <th>Numéro Vol</th>
                <th>Heure Départ</th>
                <th>Heure Arrivée</th>
                <th>Etat</th>
                <th>Numéro Porte</th>
                <th>Numéro Avion</th>
                <th>Numéro Compagnie</th>
            </tr>
        ";

        $etat = $_GET["choixEtat"];
    }