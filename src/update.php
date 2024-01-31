<?php
include("header.php");
include("pdo.php");
/* Récupérer le tableau des domaines pour affichage dynamique en menu déroulant: ----*/
$result = $pdo->query("SELECT * FROM domaine");
$domaines = $result->fetchAll(PDO::FETCH_ASSOC);
/* Récupérer le tableau des catégories pour affichage dynamique en cases à cocher: ----*/
$result = $pdo->query("SELECT * FROM categorie");
$categories = $result->fetchAll(PDO::FETCH_ASSOC);
/* Récupérer le tableau cat_fav afin de l'alimenter lors de la création d'une catégorie: -*/
$result = $pdo->query("SELECT * FROM cat_fav");
$cat_fav = $result->fetchAll(PDO::FETCH_ASSOC);


/* Récupèrer les information du favori à modifier------------------------------------------*/
$groupConcat = ", GROUP_CONCAT(categorie.id_categorie)"; 
$groupBy = "GROUP BY favoris.id_favori;";

$requeteSQL = "SELECT  *" . $groupConcat . " FROM favoris 
INNER JOIN cat_fav    ON favoris.id_favori = cat_fav.id_favori 
INNER JOIN categorie  ON categorie.id_categorie = cat_fav.id_categorie
INNER JOIN domaine    ON domaine.id_domaine = favoris.id_domaine
WHERE favoris.id_favori =" . $_GET['id_favori']; 
$groupBy;

$result = $pdo->query($requeteSQL);
$favoris = $result->fetch(PDO::FETCH_ASSOC);
/* Déclaration des variables afin de les afficher dans le formulaire-----------------------*/
$libelleFav = $favoris['libelle'];
$urlFav = $favoris['url'];
$domaineFav = $favoris['nom_domaine'];
$categoryIdsString = $favoris['GROUP_CONCAT(categorie.id_categorie)'];
$categoryIdArray = explode("," , $categoryIdsString);
//$domaineCat = $favoris['
echo "categories: " . $categoryIdsString;

?>

<!-----------------------------------HTLM------------------------------------------------------->
<!DOCTYPE html>
<html lang="en">

<pre>
<?php var_dump($categoryIdArray);?>
</pre>


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
                <!--Champs de texte pour libelle et url ---------------------------------------------->
                <label for="libelle">Libellé: </label>
                <input type="text" name="libelle" id="libelle" placeholder="Saisir le libellé"
                       value="<?php echo $libelleFav ?>"><br><br>

                <label for="url">URL: </label>
                <input type="text" name="url" id="url" placeholder="Saisir une URL"
                       value="<?php echo $urlFav ?>"><br><br>

                <!--menu déroulant dynamique pour le choix de domaine: -------------------------------->
                <label for="domaine">Domaine: </label>
                <select name="domaine" > 
                    <option value="">-- Chosir un domaine --</option>
                    <?php foreach ($domaines as $domaine) { 
                        if ($domaine['nom_domaine'] == $domaineFav){

                            $selection = "selected";
                        }else{
                            $selection = "";
                        }
                        
                        ?>            
                        <option  <?= $selection ?> class="font-normal" value="<?= $domaine['id_domaine']?>">
                            <?= $domaine['nom_domaine'] ?>
                        </option>
                    <?php 
                    } 
                    ?>                
                </select><br><br>

                <!--cases à cocher pour le choix de catégorie(s): -------------------------------->
                <fieldset >
                    <legend>Attribuer une ou plusieurs catégories:</legend>

                    <?php                        
                        foreach ($categories as $categorie) {
                            echo  $categoryIdsString."<br>";
                            echo $categorie['id_categorie'];
                            if(in_array( $categorie['id_categorie'], $categoryIdArray )== true){
                                $selection = "checked";
                              } else{
                                $selection = "";
                              }
                    ?>            
                        <div >
                            <input type="checkbox" <?= $selection ?> id="categorie" name="categorie[]" value="<?php echo $categorie['id_categorie']?>"/>
                            <label for="categorie">
                                    <?= $categorie['nom_cat'] ?>
                            </label>
                        </div>   
                    <?php 
                    } 
                    ?>                      
                </fieldset><br><br>
                
                <!-------------------Boutton submit---------------------------------------------->
                <button class="font-bold bg-blue-400 hover:bg-blue-900
                        text-white px-4 py-2 rounded h-10 ml-20 border border-gray-300 shadow-lg"
                        type="submit">Submit</button>
            </form>
        </div>
    </section>
</body>
</html>
