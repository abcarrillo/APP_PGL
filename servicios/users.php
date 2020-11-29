<?php
include('../conexion.php');
$json = "";
$users = null;
if(empty($_GET['id'])){
    $consulta = $pdo->prepare("SELECT id, username, password, roll from users");
    $consulta->execute();

    $users = $consulta->fetchAll();
}else{
    $consulta = $pdo->prepare("SELECT id, username, password, roll from users WHERE id = " . $_GET['id']);
    $consulta->execute();

    $users = $consulta->fetchAll();
}


$json = json_encode($users , JSON_UNESCAPED_UNICODE);
echo $json;