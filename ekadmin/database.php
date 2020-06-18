<?php
$server = 'localhost';
$username = 'sarkiso2_admin';
$password = 'K3m9ne4o.';
$database = 'sarkiso2_sarkisozu';

try{
	$conn = new PDO("mysql:host=$server;dbname=$database;", $username, $password);
} catch(PDOException $e){
	die( "Connection failed: " . $e->getMessage());
}