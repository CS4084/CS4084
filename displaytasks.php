<?php
//Create the HTML to display tasks. If remove is set to true, the task will be unpublished if past the claim deadline
function displayTasks($sql, $remove = false)
{
	global $db;
	$taskhtml = "";
	$userName = "";
	$result = mysqli_query($db,$sql);
	$previousTaskID = -1;
	if($result)//if there are results
	{
		while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) 
		{
			$continue = true;
			
			//If we want to remove the tasks if they are past their claim deadline as we read them, i.e. from the dashboard
			if($remove)
			{
				$todayDate = date("Y-m-d");
				$claimDeadline = date_format(date_create($row['taskClaimDeadline']),"Y-m-d");
				if($claimDeadline < $todayDate)
				{
					$removesql = "INSERT INTO unpublished_tasks (taskId,userId) VALUES('$row[taskId]','$row[userId]')";
					mysqli_query($db,$removesql);
					$continue = false;
				}
			}
			
			if($continue && $previousTaskID !== $row['taskId'])
			{
				$previousTaskID = $row['taskId'];
				$taglist = "";
				
				//Get the tags from the DB
				$sql2 = "SELECT tag FROM tags NATURAL JOIN task_tags WHERE taskId = '$row[taskId]'";
				$result2 = mysqli_query($db,$sql2);
				
				while($row1 = mysqli_fetch_array($result2, MYSQLI_ASSOC))
					$taglist .= "<a title='Subscribe to this tag' href='tag.php?tag=$row1[tag]'><span class='label label-default add-tag'>$row1[tag]</span></a>  ";
				
				//Get the user's name
				$sql3 = "SELECT firstName, lastName FROM users WHERE userId = $row[userId]";
				$result3 = mysqli_query($db,$sql3);
				$row3 = mysqli_fetch_array($result3, MYSQLI_ASSOC);
				$userName = $row3['firstName'] . " " . $row3['lastName'];
				
				$date = date_format(date_create($row['taskDate']), "Y-m-d");
				if(strlen($row['taskDesc']) > 250)
					$taskDescription = substr($row['taskDesc'],0,250) . "...";
				else 
					$taskDescription = $row['taskDesc'];
				
			
				
				//Create the HTML element	
				$taskhtml .= "<div class='row'>
							<article class='col-xs-12'>
								<h2>$row[taskTitle]</h2>
								<p>$taskDescription</p>
								<p><a href='task.php?taskId=$row[taskId]'><button class='btn btn-default'>Read More</button></a></p>
								<p class='pull-right'>$taglist</p>
								<ul class='list-inline'>
									<li>Submitted on $date</a></li>
									<li><a href ='flag.php?taskId=$row[taskId]'><span class='glyphicon glyphicon-flag'></span> Flag as inappropriate</a></li>
									<li>Submitted by: <a href='profile.php?userId=$row[userId]'>$userName</a></li>
								</ul>
							</article>
						</div>
			  <hr>";
			}
	  }
	}
	
	return $taskhtml;
	
	
}

?>