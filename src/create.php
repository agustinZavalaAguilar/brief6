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

/*
echo 'libelle : ' . $_POST['libelle'] . '<br>';
echo 'url : ' . $_POST['url'] . '<br>';
echo 'domaine : ' . $_POST['domaine'] . '<br>';
echo 'categorie(s) : ' . $_POST['categorie'] . '<br>';
*/
/*-------------------Timestamp--------------------------------------------------*/
$dateCreation = date("Y-m-d");



/*verification formulaire renseigné-----------------------------------------------------*/
if (!empty($_POST['libelle'] ) && !empty($_POST['url'] ) && !empty($_POST['domaine'] ) && !empty($_POST['categorie'] ) ) {
    echo ('all fields have been validated!');   
    //print_r ($_POST['categorie'][0]); 
    
    /*Alimentation de la table favoris-------------------------------------------------------*/      
    $createRequest = "INSERT INTO favoris (libelle, date_creation, url, id_domaine)
                      VALUES ('" . $_POST['libelle'] . "','" . $dateCreation . "', '" . $_POST['url'] . "', '" . $_POST['domaine'] . "');";

    $pdo->query($createRequest);

    /*Récupère le dernier id favoris crée afin d'alimenter la table cat_fav------------------*/
    $lastInsertedfavoriId = $pdo->lastInsertId();
    //echo $lastInsertedfavoriId; 

    /*Alimentation de la table cat_fav---------------------------------------------------*/
    foreach ($favoris as $favori) {
        $createRequest = "INSERT INTO cat_fav (id_favori, id_categorie)
        VALUES ('1','" . $_POST['categorie'][0] . "');"; 
        $pdo->query($createRequest);
        //Il y a juste à remplacer les valeurs par des variables et tester si ça marche
    }


} else {
    echo ('Keep on filling those fields!');
}

;


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
                <select name="domaine" > 
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
                <fieldset >
                    <legend>Attribuer une ou plusieurs catégories:</legend>

                    <?php                        
                        foreach ($categories as $categorie) { 
                    ?>            
                        <div >
                            <input type="checkbox" id="categorie" name="categorie[]" value="<?php echo $categorie['id_categorie']?>"/>
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

<!------------------------------------requête php---------------------------->
<?php 

?>