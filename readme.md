## Versions

Liste des versions : 
[Cliquer pour afficher](https://github.com/agustinZavalaAguilar/brief6)
[Cliquer pour afficher](https://github.com/agustinZavalaAguilar/brief6/tree/brief6.2)

## Auteur

- **Agustin Zavala Aguilar** _alias_ [@agustinZavalaAguilar](https://github.com/agustinZavalaAguilar)

## License et à propos
Il s'agit d'un système de gestion des favoris qui permet d'ajouter des éléments aux favoris et de les classer par catégorie et domaine. Il enregistre automatiquement la date d'ajout du favori. Ce système offre également la possibilité de supprimer des favoris et de les mettre à jour. La base de données est relationnelle et comprend quatre tables : "favoris", "categories", "domaines" et "cat_fav", une table pivot établissant le lien entre les tables "favoris" et "categories".

Ce projet est destiné à des fins éducatives et n'est pas soumis à une licence formelle.
Vous êtes libre de l'utiliser, le modifier et le distribuer conformément aux lois applicables. 
Cependant, nous vous demandons de bien vouloir inclure une attribution appropriée si vous choisissez de reprendre ce projet.

## Attribution

Si vous décidez de reprendre ou de vous inspirer de ce projet, veuillez inclure une mention d'attribution en citant le créateur original avec un lien vers ce dépôt.

© [Agustin Zavala Aguilar]

Merci!

## Installation 

Pour executer ce programme localement téléchargeZ XAMPP

Dans le Control Pannel (v3.3.0) clickez sur Start au niveau des modules Apache et MySQL

Clickez sur le bouton Admin afin d'accéder au tablear de bord de PHPmyAdmin

Depuis le tableau de bord, importez la base de donnés dans le dossier dbb > favoris.sql

Vous pouvez dès à present accéder au gestionnaire depuis votre navigateur en écrivant http://localhost/brief6/src/ à la place de l'URL.

## Installation de Node.js et npm

Windows: Téléchargez l'installateur depuis le site officiel de Node.js.

Pour vérifier que Node.js et npm sont installés correctement, exécutez les commandes suivantes dans le terminal ou l'invite de commande :

node -v
npm -v

## Configuration de Tailwind CSS

Rendez-vous sur le site https://tailwindcss.com/docs/installation 

Si vous rencontrez des difficultés auprés de tailwind, en particulier si le code ne compile pas

normalement, exécutez l'outil en ligne de commande (CLI) pour analyser vos fichiers de modèle à la recherche de classes et 

reconstruisez votre CSS avec le commande: npx tailwindcss -i ./src/input.css -o ./src/output.css --watch

Videz ensuite le cache: ctrl + shift + r

## Conexion à la base de donnés

 Afin d'établir la connexion, créer un fichier "connect.php" dans le dossier "src" à partir 
 
 du fichier src/connect-model.php et compléter les informations pour "Server", "User", "Password et "Base"

 














