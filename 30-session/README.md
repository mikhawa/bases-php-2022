# Les sessions

Les sessions sont un moyen simple de stocker des données individuelles pour chaque utilisateur en utilisant un identifiant de session unique. Elles peuvent être utilisées pour faire persister des informations entre plusieurs pages. Les identifiants de session sont normalement envoyés au navigateur via des cookies de session, et l'identifiant est utilisé pour récupérer les données existantes de la session. L'absence d'un identifiant ou d'un cookie de session indique à PHP de créer une nouvelle session, et génère ainsi un nouvel identifiant de session.

### Les sessions suivent une procédure simple:

Lorsqu'une session est démarrée, PHP va soit récupérer une session existante en utilisant l'identifiant de session passé (habituellement depuis un cookie de session) ou si aucun identifiant de session n'est passé, il va créer une nouvelle session. PHP va ainsi peupler la variable superglobale `$_SESSION` avec toutes les données de session une fois la session démarrée. Lorsque PHP s'arrête, il va prendre automatiquement le contenu de la variable superglobale `$_SESSION`, le linéariser, et l'envoyer pour stockage au gestionnaire de sauvegarde de session.

Par défaut, PHP utilise en interne le gestionnaire de sauvegarde files qui est défini via la directive session.save_handler. Les données de session seront sauvegardées sur le serveur à l'endroit spécifié par la directive de configuration session.save_path.

Les sessions peuvent être démarrées manuellement en utilisant la fonction `session_start()`. Si la directive de configuration session.auto_start est définie à 1, une session démarrera automatiquement lors du début de la demande.

### Exemple 1

Un simple compteur de vues :

    <?php
    session_start();
    if (!isset($_SESSION['count'])) {
        $_SESSION['count'] = 1;
    } else {
        $_SESSION['count']++;
    }
    echo $_SESSION['count'];
    ?>