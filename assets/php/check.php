<?php 

$email = filter_var(trim($_POST['email']));

$password = filter_var(trim($_POST['password']));

$login = filter_var(trim($_POST['login']));

$password= md5($password."*********");

$mysql = new mysqli('localhost','root','root','reg');
$mysql->query("INSERT INTO `users` (`email`, `password`, `login`)
VALUES ('$email', '$password', '$login')");

$mysql->close();

header('Location: /join.php');
?>  