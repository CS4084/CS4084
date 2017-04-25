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
		$review = mysqli_real_escape_string($db, $_POST['taskreview']);
		$sql = "SELECT userId FROM task_claimed WHERE taskId = '$taskId'";
		$result = mysqli_query($db, $sql);
		$count = mysqli_num_rows($result);
		
		if($count == 1)
		{
			$row = mysqli_fetch_array($result, MYSQLI_ASSOC);
			if($row['userId'] == $_SESSION['userId'])
			{
				$sql = "INSERT INTO task_completed(taskID,userId,review) VALUES('$taskId','$_SESSION[userId]','$review')";
				mysqli_query($db, $sql);
			}
			
		}
	}
	
	else if(isset($_POST['happy']) || isset($_POST['unhappy']))
	{
		//Get the user ID of the user that claimed the task
		$sql = "SELECT userId, feedbackGiven FROM task_completed WHERE taskId = '$taskId'";
		$result = mysqli_query($db, $sql);
		$count = mysqli_num_rows($result);
		if($count == 1)
		{
			$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
			
			if($row['feedbackGiven'] == 0)
			{
				$claimerId = $row['userId'];
				
				//Get the userId of the user that submitted the task
				$sql = "SELECT userId FROM task WHERE taskId = '$taskId'";
				$result = mysqli_query($db, $sql);
				$count = mysqli_num_rows($result);
				if($count == 1)
				{
					$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
					$submitterId = $row['userId'];
					
					if($_SESSION['userId'] == $submitterId)
					{
						if(isset($_POST['happy']))
						{
							$repsql = "UPDATE users SET repScore = repScore + '5' WHERE userId = '$claimerId'";
							mysqli_query($db,$repsql);
						}
						
						else{
							$repsql = "UPDATE users SET repScore = repScore - '5' WHERE userId = '$claimerId'";
							mysqli_query($db,$repsql);
						}
						
						$sql = "UPDATE task_completed SET feedbackGiven = '1' WHERE taskId = '$taskId'";
						mysqli_query($db,$sql);
						
					}
					
				}
			}
		}
	}
	
	header('location: task.php?taskId=' . $taskId);
}

else
	header('location: dashboard.php');

?>