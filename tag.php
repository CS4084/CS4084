<?php
	include('config.php');
	session_start();
	if ( $_SESSION['userId']=="") {
		header("Location: index.php");
		exit;
    }
	 
	if($_SERVER['REQUEST_METHOD'] == 'GET' && isset($_GET['tag']) && !empty($_GET['tag']))
  {
	  $tag = trim(mysqli_real_escape_string($db, $_GET['tag']));
	  
	  $sql = "SELECT tagId FROM tags WHERE tag = '$tag'";
	  $result = mysqli_query($db, $sql);
	  $count = mysqli_num_rows($result);
  
	  if($count > 0)
	  {
		  
		//Check if the user is already subscribed to this tag
		$row = mysqli_fetch_array($result, MYSQLI_ASSOC);
	    $sql2 = "SELECT * FROM user_subscribed_tags WHERE tagId = '$row[tagId]' AND userId = '$_SESSION[userId]'";
		$result = mysqli_query($db, $sql2);
		$count = mysqli_num_rows($result);
		if($count < 1)
		{
			$sql = "INSERT INTO user_subscribed_tags VALUES('$_SESSION[userId]','$row[tagId]')";
			mysqli_query($db, $sql);
		}
		header("location: dashboard.php");
		
	  }
	  else{
			header("location: dashboard.php?error=1"); 
	  }
	  
  }
  
  else if($_SERVER['REQUEST_METHOD'] == 'GET' && isset($_GET['unsub']) && isset($_GET['tagId']) && !empty($_GET['tagId']))
  {
	  $sql = "SELECT tagId FROM user_subscribed_tags WHERE tagId = '$_GET[tagId]' AND userId = '$_SESSION[userId]'";
	  $result = mysqli_query($db, $sql);
	  $count = mysqli_num_rows($result);
	  if($count > 0)
	  {
		  $sql = "DELETE FROM user_subscribed_tags  WHERE tagId = '$_GET[tagId]' AND userId = '$_SESSION[userId]'";
		  mysqli_query($db, $sql);
		  
	  }
	  header("location: dashboard.php");
  }
  
  else {
	  header("location: dashboard.php");
  }
  
  
	  
?>