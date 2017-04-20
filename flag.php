<?php
  include('config.php');
  session_start();
  
    if ( $_SESSION['userId']=="") {
    header("Location: index.php");
    exit;
	}
	
	$userId = mysqli_real_escape_string($db, $_SESSION['userId']);
	$taskId = mysqli_real_escape_string($db,$_GET['taskId']);
	$date =  date("Y-m-d");
	$sql = "SELECT userId FROM task WHERE taskId = '$taskId'";
	$result1 = mysqli_query($db,$sql);
	$row = mysqli_fetch_array($result1, MYSQLI_ASSOC);

	if($row['userId'] !== $_SESSION['userId'])
	{
		$query = "INSERT INTO task_flagged(taskId,userId,taskDate) VALUES('$taskId','$userId','$date')";
		$result = mysqli_query($db,$query);
		if($result)
		{
			$sql =  "UPDATE users SET repScore = repScore + '2' WHERE userId = '$userId'";
			mysqli_query($db,$sql);
			$_SESSION['repScore'] = $_SESSION['repScore'] + 2;
		}
	}
	
	
	
	header('location: dashboard.php');

?>