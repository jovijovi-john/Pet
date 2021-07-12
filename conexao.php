<?php
    //O tipo de caracteres a ser usado
    header('Content-Type: text/html; charset=utf-8');

?>

<?php
    $hostname = "localhost";
    $database = "bd_seletivo";
    $username = "root";
    $password = "";
    $mysqli = new mysqli($hostname, $username, $password, $database);

    if($mysqli->connect_errno){
        echo "Falha ao conectar ao banco! :(";
    }
?>

