<?php 
	$hostname = 'localhost';
	$username = 'root';
	$password = '';
	$dbtubes   = 'dbtubes';

	$conn = mysqli_connect($hostname, $username, $password, $dbtubes) or die ('Gagal terhubung ke database');
?>