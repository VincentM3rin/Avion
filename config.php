<?php
$conn = mysqli_connect(
    "localhost",
    "root",
    "",
    "aeroport"
);
if (!$conn) {
    die("Connexion échouée : " . mysqli_connect_error());
}
