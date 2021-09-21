<?php
	$servername = "localhost";
	$username = "root";
	$password = "";
	$name = "db1";
	
	$conn = mysqli_connect($servername,$username,$password,$name);

	if(!$conn){
		die("Fail to connect with the database : ".mysqli_connect_error());
	}

?>