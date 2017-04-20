<?php

include('config.php');
session_start();

if ( $_SESSION['userId']=="") {
header("Location: index.php");
exit;
}
else if($_SESSION['repScore'] < 40){
	header("location: dashboard.php");
}

$bannedUserId = mysqli_real_escape_string($db, $_POST['userId']);
$moderdatorId = $_SESSION['userId'];
$date =  date("Y-m-d");
$query = "INSERT INTO user_banned VALUES($moderatorId, $banneduserId)";
mysqli_query($db,$query);

header('location: dashboard.php');

?>