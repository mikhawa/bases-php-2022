<?php

# chargement des constantes de connexion
require_once "../config.php";

# Essai de connexion
try{
    # connexion mysqli
    $db = mysqli_connect(DB_HOST,DB_LOGIN,DB_PWD,DB_NAME,DB_PORT);
    # charset
    mysqli_set_charset($db,DB_CHARSET);

# capture l'erreur
}catch(Exception $e){

    # arrêter le script et afficher l'erreur
    exit(utf8_encode($e->getMessage()));

}

# chargement de tous les mails

// requête en variable texte contenant du MySQL
$sqlMail = "SELECT `nomadresses`, `mailadresses` FROM `adresses` ORDER BY `dateadresses` DESC; ";

// exécution de la requête avec un try / catch
try {
    $queryMail = mysqli_query($db, $sqlMail);
}catch(Exception $e){
    # arrêter le script et afficher l'erreur (de type SQL)
    exit(utf8_encode($e->getMessage()));
}


# on compte le nombre de mails récupérés
$nbMail = mysqli_num_rows($queryMail);

# on convertit les mails récupérés en tableaux associatifs intégrés dans un tableau indexé
$responseMail = mysqli_fetch_all($queryMail,MYSQLI_ASSOC);



# on efface les données récupérées pas un SELECT (bonnes pratiques)
mysqli_free_result($queryMail);
# fermeture de connexion  (bonnes pratiques)
mysqli_close($db); 

# appel de la vue
include_once '../view/indexView.php';

