<?php  
include 'database.php';	
$juzgado = $_POST['juzgado'];
$radicado = $_POST['radicado'];
$tipo_proceso = $_POST['tipo_proceso'];
$demandante = $_POST['demandante'];
$demandado = $_POST['demandado'];
$estado = $_POST['estado'];
$encargado = $_POST['encargado'];

$db->query("INSERT INTO procesos (juzgado, radicado, tipo_proceso, demandante, demandado, estado, encargado) VALUES ('$juzgado', '$radicado', '$tipo_proceso', '$demandante', '$demandado', '$estado', '$encargado')");



?>