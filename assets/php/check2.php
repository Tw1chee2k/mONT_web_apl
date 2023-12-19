<?php 

$email = filter_var(trim($_POST['email']));

$password = filter_var(trim($_POST['password']));


$password= md5($password."*********");

$mysql = new mysqli('localhost','root','root','reg');

$result = $mysql->query("SELECT * FROM `users` WHERE `email` = '$email'
AND `password` = '$password'");

$user = $result->fetch_assoc();
if(count($user) == 0)
{
    echo "Пользователь не найден";
    exit();
}

setcookie('user', $user['login'], time() + 3600, "/");



$mysql->close();
header('Location: /join.php');

?>  