<?php
include("header.php");
include("pdo.php");

$groupConcat = ", GROUP_CONCAT(categorie.nom_cat)"; 
$groupBy = "GROUP BY favoris.id_favori;";

$requeteSQL = "SELECT  *" . $groupConcat . " FROM favoris 
INNER JOIN cat_fav    ON favoris.id_favori = cat_fav.id_favori 
INNER JOIN categorie  ON categorie.id_categorie = cat_fav.id_categorie
INNER JOIN domaine    ON domaine.id_domaine = favoris.id_domaine
WHERE favoris.id_favori =" . $_GET['id_favori']; 
$groupBy;

$result = $pdo->query($requeteSQL);
$favoris = $result->fetch(PDO::FETCH_ASSOC);

?>
<!---------------------------------------------------HTML---------------------------------------------->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="./output.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/e14b518d69.js" crossorigin="anonymous"></script>
    <title>Single Favori</title>
</head>

<body>

    <section >
        <div class="flex justify-center text-blue-800 bg-gray-200">
            <h1></strong><?php echo $favoris['libelle'] ?></h1>
        </div>
        <div class="flex justify-center  ">
            <ul class="bg-gray-100">
                <li><strong>Date de création: </strong><?php echo $favoris['date_creation'] ?></li>
                <li><strong>URL: </strong><a href="<?php echo $favoris['url'] ?>"> <?php echo $favoris['url'] ?></a></li>
                <li><strong>Catégorie: </strong><?php echo $favoris['nom_cat'] ?></li>
                <li><strong>Domaine: </strong><?php echo $favoris['nom_domaine'] ?></li>
                <li>
                   <a href="index.php"> 
                        <button class="font-bold bg-blue-400 hover:bg-blue-900 text-white px-4 py-2 rounded h-10 m-14 border
                                 border-gray-300 shadow-lg
                                    fas fa-arrow-left">
                        </button> 
                    </a>
                </li>

            </ul>

        </div>  
    </section>

</body>
</html>