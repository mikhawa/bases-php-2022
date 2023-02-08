<?php
// transformation en variable locale
$idSection = (int) $_GET['section'];

// requête pour le menu des rubriques
$sql = "SELECT idrubriques, rub_title FROM rubriques
# WHERE idrubriques = 20
 ORDER BY rub_title ASC;";
// exécution de la requête
$query = mysqli_query($db,$sql) or die('Erreur de $query');
// transformation en tableau indexé contenant des tableaux associatifs
$resultatRubriques = mysqli_fetch_all($query, MYSQLI_ASSOC);

// requête pour récupérer la section
$sql = "SELECT * FROM rubriques
        WHERE idrubriques = $idSection
";
// exécution de la requête
$query = mysqli_query($db,$sql) or die('Erreur de $query');

// on compte le nombre de section
$nbSection = mysqli_num_rows($query);

// transformation en tableau associatif
$resultatSection = mysqli_fetch_assoc($query);

// requête qui récupère tous articles de la rubrique avec 255 caractères de texte avec les rubriques cliquables pour notre page de section

$sql="SELECT a.idarticles, a.art_title, a.art_date,
SUBSTR(a.art_text,1,250) AS art_text,
GROUP_CONCAT(r2.idrubriques) AS idrubriques,
GROUP_CONCAT(r2.rub_title SEPARATOR '|||') AS rub_title ,
u.user_login, u.idusers
FROM `articles` a 

    INNER JOIN articles_has_rubriques ahr
    ON ahr.articles_idarticles = a.idarticles
    INNER JOIN rubriques r
    ON ahr.rubriques_idrubriques = r.idrubriques

    INNER JOIN articles_has_rubriques ahr2
    ON ahr2.articles_idarticles = a.idarticles
    INNER JOIN rubriques r2
    ON ahr2.rubriques_idrubriques = r2.idrubriques
    
    INNER JOIN users u # on joint de manière interne users (alias u) à articles 
    ON u.idusers = a.users_idusers # condition de jointure 

    WHERE r.idrubriques=$idSection

    /*
    on groupe par l'index (clef primaire) de la table principale (FROM articles)
    */
    GROUP BY a.idarticles
    /* classement par date de l'article descendant */
    ORDER BY a.art_date DESC
    "
    ;

    // exécution de la requête
    $query = mysqli_query($db,$sql) or die('Erreur de $query');
    // nombre d'articles récupérés
    $nbArticles = mysqli_num_rows($query);
    // transformation en tableau indexé contenant des tableaux associatifs
    $resultatArticles = mysqli_fetch_all($query, MYSQLI_ASSOC);

    //var_dump($resultatSection);
