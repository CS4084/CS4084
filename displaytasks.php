<?php

function displayTasks($sql)
{
	global $db;
	$taskhtml = "";
	$userName = "";
	$result = mysqli_query($db,$sql);
	
	if($result)//if there are results
	{
		while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) 
		{
			$taglist = "";
			
			//Get the tags from the DB
			$sql2 = "SELECT tag FROM tags NATURAL JOIN task_tags WHERE taskId = '$row[taskId]'";
			$result2 = mysqli_query($db,$sql2);
			
			while($row1 = mysqli_fetch_array($result2, MYSQLI_ASSOC))
				$taglist .= "<span class='label label-default'>$row1[tag]</span>  ";
			
			//Get the user's name
			$sql3 = "SELECT firstName, lastName FROM users WHERE userId = $row[userId]";
			$result3 = mysqli_query($db,$sql3);
			$row3 = mysqli_fetch_array($result3, MYSQLI_ASSOC);
			$userName = $row3['firstName'] . " " . $row3['lastName'];
			
			
			//Create the HTML element	
			$taskhtml .= "<div class='row'>
						<article class='col-xs-12'>
							<h2>$row[taskTitle]</h2>
							<p>$row[taskDesc]</p>
							<p><a href='task.php?taskId=$row[taskId]'><button class='btn btn-default'>Read More</button></a></p>
							<p class='pull-right'>$taglist</p>
							<ul class='list-inline'>
								<li>Submitted on $row[taskDate]</a></li>
								<li><a href ='flag.php?taskId=$row[taskId]'><span class='glyphicon glyphicon-flag'></span> Flag as inappropriate</a></li>
								<li>Submitted by: <a href='profile.php?userId=$row[userId]'>$userName</a></li>
							</ul>
						</article>
					</div>
		  <hr>";
	  }
	}
  
  if($taskhtml == "")
	  return "<br><br>
						<div class='alert alert-warning'>
						<span class='glyphicon glyphicon-warning-sign'></span>  	There are no tasks to display.
						</div>";
	else
		return $taskhtml;
	
	
}

?>