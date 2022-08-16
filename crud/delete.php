<?php 
	include 'database.php';
	$id = $_POST['id'];
	$db->query("DELETE FROM procesos WHERE id='$id'");
?>