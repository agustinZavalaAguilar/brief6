<?php
include("header.php");
include("pdo.php");
/* Récupérer le tableau des domaines pour affichage dynamique en menu déroulant: ----*/
$result = $pdo->query("SELECT * FROM domaine");
$domaines = $result->fetchAll(PDO::FETCH_ASSOC);
/* Récupérer le tableau des catégories pour affichage dynamique en cases à cocher: ----*/
$result = $pdo->query("SELECT * FROM categorie");
$categories = $result->fetchAll(PDO::FETCH_ASSOC);
/*
echo 'libelle : ' . $_POST['libelle'] . '<br>';
echo 'url : ' . $_POST['url'] . '<br>';
echo 'domaine : ' . $_POST['domaine'] . '<br>';
echo 'catégorie : ' . $_POST['categorie'] . '<br>';
echo 'Date de création : ' . $_POST['date'] . '<br>';
*/

?>
<!-----------------------------------HTLM------------------------------------------------------->

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
        <div class="p-5 bg-gray-100 mx-auto max-w-screen-md">
            <form action="" method="post">

                <label for="libelle">Libellé: </label>
                <input type="text" name="libelle" id="libelle" placeholder="Saisir le libellé"><br><br>

                <label for="url">URL: </label>
                <input type="text" name="url" id="url" placeholder="Saisir une URL"><br><br>

                <!--menu déroulant dynamique pour le choix de domaine: -------------------------------->
                <label for="domaine">Domaine: </label>
                <select name="filtreDomaine" > 
                    <option value="">-- Chosir un domaine --</option>
                    <?php foreach ($domaines as $domaine) { ?>            
                        <option class="font-normal" value="<?php echo $domaine['id_domaine']?>">
                            <?= $domaine['nom_domaine'] ?>
                        </option>
                    <?php 
                    } 
                    ?>                
                </select><br><br>

                <!--cases à cocher pour le choix de catégorie(s): -------------------------------->
                <fieldset>
                    <legend>Attribuer une ou plusieurs catégories:</legend>

                    <?php foreach ($categories as $categorie) { ?>            
                        <div>
                            <input type="checkbox" id="categorie" name="categorie" value="<?php echo $categorie['id_categorie']?>"/>
                            <label for="categorie">
                                    <?= $categorie['nom_cat'] ?>
                            </label>
                        </div>   
                    <?php 
                    } 
                    ?>                      
                </fieldset><br><br>
                
                <button class="font-bold bg-blue-400 hover:bg-blue-900
                        text-white px-4 py-2 rounded h-10 ml-20 border border-gray-300 shadow-lg"
                        type="submit">Submit</button>
            </form>
        </div>






    </section>
</body>
</html>

<!------------------------------------requête php---------------------------->
<?php 
/*
$createRequest = "INSERT INTO favoris (libelle, date_creation, url, id_domaine)
                VALUES (" . $_POST['libelle'] . ",2024-01-29, 'test', '1');";
var_dump($createRequest);
$pdo->query($createRequest);
*/
?>