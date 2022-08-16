<?php 
	include('database.php');

	$id = $_POST['id'];

	$juzgado = $_POST['juzgado'];
	$radicado = $_POST['radicado'];
	$tipo_proceso = $_POST['tipo_proceso'];
	$demandante = $_POST['demandante'];
	$demandado = $_POST['demandado'];
	$estado = $_POST['estado'];
	$encargado = $_POST['encargado'];
	
	$db->query("UPDATE procesos SET juzgado='$juzgado', radicado='$radicado', tipo_proceso='$tipo_proceso', demandante='$demandante', demandado='$demandado', estado='$estado', encargado='$encargado' WHERE id='$id'");
	?>