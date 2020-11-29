<?php

include('../conexion.php');

$json = "";
$products = null;
if(empty($_GET['id'])){
    $consulta = $pdo->prepare("SELECT id, nombre, descripcion, imagen, idCategoria from products");
    $consulta->execute();

    $products = $consulta->fetchAll();
}else{
    $consulta = $pdo->prepare("SELECT id, nombre, descripcion, imagen, idCategoria from products WHERE id =" . $_GET['id']);
    $consulta->execute();

    $products = $consulta->fetchAll();
}

$json = json_encode($products , JSON_UNESCAPED_UNICODE);
echo $json;