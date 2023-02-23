<?php

# Lancement d'une session
# Prioritaire avant les dépendances
session_start();

# Chargement des dépendances
require_once "../config.php";

# connexion
try{
    $db= mysqli_connect(DB_HOST,DB_LOGIN,DB_PWD,DB_NAME,DB_PORT);
    mysqli_set_charset($db,DB_CHARSET);
}catch(Exception $e){
    die($e -> getMessage());
}