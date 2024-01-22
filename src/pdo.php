
<?php
//Connection à la base de donnees
try {
$pdo = new PDO('mysql:host=localhost;dbname=favoris', 'root', '', array(PDO::ATTR_ERRMODE=>PDO::ERRMODE_EXCEPTION));
}catch(PDOException $e) {
    echo 'Impossible de connecter'. $e->getMessage();
}
//---------------------------------------------------------
//echo '<pre>'; print_r($pdo); echo '</pre>';
//echo '<pre>'; print_r(get_class_methods($pdo)); echo '</pre>';

?>