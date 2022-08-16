<?php 

	$hostname = 'localhost';
	$username = 'root';
	$pass='';
	$dbname = 'proyectofinal';

	$db = new mysqli($hostname, $username, $pass, $dbname);

	if($db->connect_error) {
		printf('Database conncet fild ', $db->connect_error);
		exit();
	}
?>