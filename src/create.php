<?php
include("header.php");

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="./output.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/e14b518d69.js" crossorigin="anonymous"></script>
    <title>Créer un favori</title>
</head>

<body>
    <section>
        <h2 class="text-3xl font-bold text-blue-900 h-20 flex items-center justify-center font-roboto
                  ">Ajout de favoris</h2>
        <div class="bg-gray-100 mx-auto max-w-screen-md">
            <form action="" method="post">
                <label for="libellé">Libellé: </label>
                <input type="text" name="libelle" id="libelle" placeholder="Saisir le libellé"><br><br>
                <label for="url">URL: </label>
                <input type="text" name="url" id="url" placeholder="Saisir une URL"><br><br>
                <label for="domaine">Domaine: </label>
                <input type="text" name="domaine" id="domaine" placeholder="Choisir un domaine"><br><br>
                <label for="categorie">Catégorie: </label>
                <input type="text" name="categorie" id="categorie" placeholder="Choisir une une catégorie"><br><br>
                <button create" class="font-bold bg-blue-400 hover:bg-blue-900
                        text-white px-4 py-2 rounded h-10 ml-20 border border-gray-300 shadow-lg"
                        type="submit">Submit</button>
            </form>

        </div>






    </section>
</body>
</html>