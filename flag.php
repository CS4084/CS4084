<?php
  include('config.php');
  session_start();
  
    if ( $_SESSION['userId']=="") {
    header("Location: index.php");
    exit;
	
	$userId = mysqli_real_escape_string($db, $_SESSION['userId']);
	$taskId = mysqli_real_escape_string($db,$_GET['taskId']);
	$date =  date("Y-m-d");
	$query = "INSERT INTO task_flagged(taskId,userId,taskDate) VALUES('$taskID','$userId','$date')";
  }
?>