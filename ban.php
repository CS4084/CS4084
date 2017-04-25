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

$sql = "SELECT userId FROM users WHERE userId = '$bannedUserId'";
$result = mysqli_query($db,$sql);
$count = mysqli_num_rows($result);

if($count == 1)
{
	$moderatorId = $_SESSION['userId'];
	$query = "INSERT INTO user_banned VALUES('$moderatorId', '$bannedUserId')";
	mysqli_query($db,$query);

	//Delete the banned users claimed tasks
	$sql = "DELETE FROM task_claimed WHERE userId = '$bannedUserId' AND taskId NOT IN (SELECT taskId FROM task_completed)";
	mysqli_query($db,$sql);
}

header('location: profile.php?userId=$bannedUserId');

?>