<?php
  include('config.php');
  session_start();
  
    if ( $_SESSION['userId']=="") {
    header("Location: index.php");
    exit;
	
	$userId = mysqli_real_escape_string($db, $_SESSION['userId']);
	$query = "INSERT INTO tasks_flagged(taskId,userId,taskDate) VALUES('$firstname','$lastname','$id','$email','$password','$todaydate')";
  }
?>