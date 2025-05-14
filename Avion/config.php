<?php
$conn = mysqli_connect(
    "localhost",
    "root",
    "",
    "identifiant"
);
if (!$conn) {
    die("Connexion échouée : " . mysqli_connect_error());
}
