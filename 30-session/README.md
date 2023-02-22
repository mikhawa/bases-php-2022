# Les sessions

Les sessions sont un moyen simple de stocker des données individuelles pour chaque utilisateur en utilisant un identifiant de session unique. Elles peuvent être utilisées pour faire persister des informations entre plusieurs pages. Les identifiants de session sont normalement envoyés au navigateur via des cookies de session, et l'identifiant est utilisé pour récupérer les données existantes de la session. L'absence d'un identifiant ou d'un cookie de session indique à PHP de créer une nouvelle session, et génère ainsi un nouvel identifiant de session.

### Les sessions suivent une procédure simple:

Lorsqu'une session est démarrée, PHP va soit récupérer une session existante en utilisant l'identifiant de session passé (habituellement depuis un cookie de session) ou si aucun identifiant de session n'est passé, il va créer une nouvelle session. PHP va ainsi peupler la variable superglobale `$_SESSION` avec toutes les données de session une fois la session démarrée. Lorsque PHP s'arrête, il va prendre automatiquement le contenu de la variable superglobale `$_SESSION`, le linéariser, et l'envoyer pour stockage au gestionnaire de sauvegarde de session sur le serveur.

Par défaut, PHP utilise en interne le gestionnaire de sauvegarde files qui est défini via la directive session.save_handler. Les données de session seront sauvegardées sur le serveur à l'endroit spécifié par la directive de configuration session.save_path.

Les sessions peuvent être démarrées manuellement en utilisant la fonction `session_start()`. Si la directive de configuration session.auto_start est définie à 1, une session démarrera automatiquement lors du début de la demande.

### Exemple 1

Un simple compteur de vues :
```php
    <?php
    # Lancement d'une session
    # Création d'un identifiant de session (phpsessid)
    # stocké dans un fichier texte sur le serveur
    # et d'un cookie sur la machine utilisateur
    # contenant le phpsessid
    session_start();

    # si la variable de session 'count' n'existe pas
    if (!isset($_SESSION['count'])) {

        # on l'a créée
        $_SESSION['count'] = 1;

    # sinon
    } else {

        # on l'incrémente
        $_SESSION['count']++;
    }

    # on l'affiche
    echo $_SESSION['count'];
```  
### Exemple 2

Une navigation entre 3 pages qui garde les valeurs entre celles-ci (à faire ensemble) 

### Exemple 3

Une connexion / déconnexion pour accéder à une administration :

Pour la déconnexion :
```php
<?php
// Initialize the session.
// If you are using session_name("something"), don't forget it now!
session_start();

// Unset all of the session variables.
$_SESSION = array();

// If it's desired to kill the session, also delete the session cookie.
// Note: This will destroy the session, and not just the session data!
if (ini_get("session.use_cookies")) {
    $params = session_get_cookie_params();
    setcookie(session_name(), '', time() - 42000,
        $params["path"], $params["domain"],
        $params["secure"], $params["httponly"]
    );
}

// Finally, destroy the session.
session_destroy();
?>
```