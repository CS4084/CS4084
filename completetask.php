<?php 
include('config.php');
session_start();

if ($_SESSION['userId']=="") {
  header("Location: index.php");
  exit;
}

if($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['taskId']) && !empty($_POST['taskId']))
{
	$taskId = mysqli_real_escape_string($db, $_POST['taskId']);
	if(isset($_POST['taskreview']) && !empty($_POST['taskreview']))
	{
		$taskId = mysqli_real_escape_string($db, $_POST['taskId']);
		$review = mysqli_real_escape_string($db, $_POST['taskreview']);
		$sql = "SELECT userId FROM task_claimed WHERE taskId = '$taskId'";
		$result = mysqli_query($db, $sql);
		$count = mysqli_num_rows($result);
		
		if($count == 1)
		{
			$row = mysqli_fetch_array($result, MYSQLI_ASSOC);
			if($row['userId'] == $_SESSION['userId'])
			{
				$sql = "INSERT INTO task_completed VALUES('$taskId','$_SESSION[userId]','$review')";
				mysqli_query($db, $sql);
			}
			
		}
	}
	
	header('location: task.php?taskId=' . $taskId);
}

else
	header('location: dashboard.php');

?>