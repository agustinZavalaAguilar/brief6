

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PHP PDO</title>
    <link href="./output.css" rel="stylesheet">
</head>
<body>
    <!---Cherche le fichier header, pour lisibilité---->
    <?php include("header.php"); ?>
    <!----Cherche le fichier qui questionne la base de données------>
    <?php include("pdo.php"); ?>
    <!--Affichage (SELECT) :-->
    <?php $result = $pdo->query("SELECT * FROM favoris /*WHERE prenom='julien'*/");
    $favoris = $result->fetchAll(PDO::FETCH_ASSOC);?>
    <section id="favoris">
        <table class="table_favori">
            <!--Titres du tablau----------------------->
            <tr>
                <th>id favori</th>
                <th>Libellé</th>
                <th>date creation</th>
                <th>url</th>
                <th>Id domaine</th>
            </tr>
            <!---Ligne exemple---->
            <?php foreach ($favoris as $favori) { ?>
            <tr>
                <th><?= $favori['id_favori'] ?></th>
                <th><?= $favori['libelle'] ?></th>
                <th><?= $favori['date_creation'] ?></th>
                <th><?= $favori['url'] ?></th>
                <th><?= $favori['id_domaine'] ?></th>
            </tr>
            <?php 
            } 
            ?>
        </table>
    </section>
</body>
</html>