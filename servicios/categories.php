<?php

include('../conexion.php');


$json = "";
$categories = null;
if(empty($_GET['id'])){
    $consulta = $pdo->prepare("SELECT id, nombre, descripcion from categories");
    $consulta->execute();

    $categories = $consulta->fetchAll();
}else{
    $consulta = $pdo->prepare("SELECT id, nombre, descripcion from categories WHERE id = " . $_GET['id']);
    $consulta->execute();

    $categories = $consulta->fetchAll();
}

$json = json_encode($categories , JSON_UNESCAPED_UNICODE);
echo $json;