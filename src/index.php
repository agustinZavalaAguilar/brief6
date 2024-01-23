

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PHP PDO</title>
    <link href="./output.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/e14b518d69.js" crossorigin="anonymous"></script>
    <!-----------font Roboto--------------->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap">
</head>
<body class="bg-">
    <!---Cherche le fichier header, pour lisibilité---->
    <?php include("header.php"); ?>
    <!----Cherche le fichier qui questionne la base de données------>
    <?php include("pdo.php"); ?>
    <!--Affichage (SELECT) :-->
    <?php $result = $pdo->query("SELECT * FROM favoris /*WHERE prenom='julien'*/");
    $favoris = $result->fetchAll(PDO::FETCH_ASSOC);?>
    <!--Requête par categorie-->   
    <?php $result = $pdo->query("SELECT * FROM categorie /*WHERE prenom='julien'*/");
    $categories = $result->fetchAll(PDO::FETCH_ASSOC);?>



    <!--Requête par domaine-->   
    <?php $result = $pdo->query("SELECT * FROM categorie /*WHERE prenom='julien'*/");
    $categories = $result->fetchAll(PDO::FETCH_ASSOC);?>
    <div class="flex justify-center block bg-gray-100">
    <!--Row avec les boutons de tri------------>          
        <h2>Selectionnez une catégorie</h2>
        <form action="" method="GET">
            <select name="filtreCategorie" value="filtreCategorie"> 
            <?php foreach ($categories as $categorie) { ?>            
                <option class="font-normal" ><?= $categorie['nom_cat'] ?></option>
            <?php 
            } 
            ?>                
            </select>
            <button type="submit">Filtrer</button>  
        </form>
                 
    </div>
    <section id="favoris" class="flex justify-center">      
        <table class="table_favori m-10 border border-gray-300 shadow-lg">            
            <!--Titres du tablau----------------------->
            <tr class="text-center text-blue-800 bg-gray-200 ">
                <th>id favori</th>
                <th class="text-center text-blue-800">Libellé</th>
                <th>date creation</th>
                <th>url</th>
                <th>Id domaine</th>
                <th>Actions</th>
            </tr>
            <!---Ligne exemple---->
            <?php foreach ($favoris as $favori) { ?>
            <tr class="h-10 ml-10 bg-gray-100 hover:bg-blue-900 hover:text-white border border-gray-200 font-normal border border-gray-200 mx-auto max-w-screen-md even:bg-white odd:bg-gray-200">
                <th class="font-normal" ><?= $favori['id_favori'] ?></th>
                <th class="font-normal text-left" ><?= $favori['libelle'] ?></th>
                <th class="font-normal text-left" ><?= $favori['date_creation'] ?></th>
                <th class="font-normal text-left w-40" ><?= $favori['url'] ?></th>
                <th class="font-normal" ><?= $favori['id_domaine'] ?></th>
                <th>
                    <i class="fa-solid fa-pencil text-blue-800 m-1 hover:text-white"></i>
                    <i class="fa-solid fa-trash text-blue-800 m-1 hover:text-white"></i>
                </th>
            </tr>
            <?php 
            } 
            ?>
        </table>
    </section>
</body>
</html>