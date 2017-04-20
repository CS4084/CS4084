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
	
	$userId = mysqli_real_escape_string($db, $_SESSION['userId']);
	$taskId = mysqli_real_escape_string($db,$_GET['taskId']);
	$date =  date("Y-m-d");
	$query = "DELETE FROM task_flagged WHERE taskId = '$taskId'";
	mysqli_query($db,$query);

	header('location: flaggedtasks.php');

?>