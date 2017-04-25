<?php
  include('config.php');
  session_start();
  
  if ($_SESSION['userId']=="") {
    header("Location: index.php");
    exit;
  }
  
//Check if the task is claimed or unpublished and belongs to this user  
function checkInTable($sql)
{
	global $db;
	global $owner;
	$taskId = mysqli_real_escape_string($db,$_GET['taskId']);
	$result = mysqli_query($db,$sql);
	$count = mysqli_num_rows($result);
	$row = mysqli_fetch_array($result, MYSQLI_ASSOC);
	

	 if($count == 1)
		return true;
	
	else 
		return false;
}
 

$owner = false;
$pastdeadline = false;
$claimer  = false;
$taglist ="";


 if (isset($_GET['taskId']) && !empty($_GET['taskId'])){
	 $taskId = mysqli_real_escape_string($db,$_GET['taskId']);

	 //Get task info from the DB
	 $sql = "SELECT * FROM task WHERE taskId = '$taskId'";
	 $result = mysqli_query($db,$sql);
	 $count = mysqli_num_rows($result);
	 $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
	 
	 if($count == 1){
		 
		
		 
		$userId = $row['userId'];
		if($userId == $_SESSION['userId'])
			$owner = true;
		
		 $banned = false;
		 $sql = "SELECT bannedUserId FROM user_banned WHERE bannedUserId = '$userId'";
		 $result = mysqli_query($db,$sql);
		 $count = mysqli_num_rows($result);
		 if($count > 0)
			 $banned = true;
		
		
		$claimed = checkInTable("SELECT taskId, userId FROM task_claimed WHERE taskId = '$taskId'");
		$unpublished= checkInTable("SELECT taskId, userId FROM unpublished_tasks WHERE taskId = '$taskId'");
		$completed = checkInTable("SELECT taskId, userId FROM task_completed WHERE taskId = '$taskId'");
		$flagged = checkInTable("SELECT taskId, userId FROM task_flagged WHERE taskId = '$taskId'");
		$taskTitle = $row['taskTitle'];
		$taskDate = date_format(date_create($row['taskDate']), "Y-m-d");
		$taskType = $row['taskType'];
		$taskDesc = $row['taskDesc'];
		$taskSubject = $row['taskSubject'];
		$pageCount = $row['pageCount'];
		$wordCount = $row['wordCount'];
		$taskClaimDeadline = $row['taskClaimDeadline'];
		$taskCompletionDeadline = $row['taskCompletionDeadline'];
		
		
		//Get user's name from the DB
		$sql3 = "SELECT firstName, lastName FROM users WHERE userId = '$userId'";
		$result3 = mysqli_query($db, $sql3);	
		$row = mysqli_fetch_array($result3, MYSQLI_ASSOC);
		$submittedBy = $row['firstName'] . " " . $row['lastName'];
		
		//Check if the task is past its claim deadline
		$todaydate = date("Y-m-d");
		if($todaydate > $taskClaimDeadline)
			$pastdeadline = true;
		
		
		if(isset($_GET['claim']) && $_GET['claim'] == 1 && !$owner && !$pastdeadline)
		{
			$sql = "SELECT taskId FROM task_claimed WHERE taskId = '$taskId'";
			$result = mysqli_query($db,$sql);
			if(mysqli_num_rows($result) == 0)
			{
				$sql = "INSERT INTO task_claimed(taskId, userId) VALUES('$taskId', '$_SESSION[userId]')";
				mysqli_query($db,$sql);
				$claimed = true;	
				$sql = "UPDATE users SET repScore = repScore + 10 WHERE userId = '$_SESSION[userId]'";
				mysqli_query($db,$sql);
				$_SESSION['repScore'] = $_SESSION['repScore'] + 10;
			}
		}
		
		
		if($claimed)
		{
			//Get claimer's name and ID from the DB
			$sql = "SELECT userId from task_claimed WHERE taskId = '$taskId'";
			$result3 = mysqli_query($db, $sql);	
			$row = mysqli_fetch_array($result3, MYSQLI_ASSOC);
			$claimerid = $row['userId'];
			if($claimerid == $_SESSION['userId'])
			{
				$claimer = true;
			}
			
			$sql3 = "SELECT firstName, lastName FROM users WHERE userId = '$claimerid'";
			$result3 = mysqli_query($db, $sql3);	
			$row = mysqli_fetch_array($result3, MYSQLI_ASSOC);
			$claimername = $row['firstName'] . " " . $row['lastName'];
		}
		
		//Get file paths from the DB
		$filesql = "SELECT * FROM file_paths WHERE taskId = '$taskId'";
		$fileresult =  mysqli_query($db,$filesql);
		$row = mysqli_fetch_array($fileresult, MYSQLI_ASSOC);
		$fileurl = $row['filePath'];
		$samplefileurl = $row['sampleFilePath'];
		$taskfiletype = explode(".",$fileurl);
		$samplefiletype = explode(".",$samplefileurl);
		$taskfilehtml = "<kbd>" . end($taskfiletype) . "</kbd>";
		$samplefilehtml = "<kbd>" . end($samplefiletype) . "</kbd>";
		
		//Get tags from the DB
		$sql2 = "SELECT * FROM tags NATURAL JOIN task_tags WHERE taskId = '$taskId'";
		$result2 = mysqli_query($db,$sql2);
		 while($row = mysqli_fetch_array($result2, MYSQLI_ASSOC))
		{
		   if(!$claimed && !$unpublished && !$completed)
		   {
			   $sql = "SELECT * FROM user_favourite_tags WHERE  userId = '$_SESSION[userId]' AND tagId = '$row[tagId]'";
			   $result = mysqli_query($db, $sql);
			   
			   if(mysqli_num_rows($result) < 1)
					$sql = "INSERT INTO user_favourite_tags (userId,tagId,viewCount) VALUES('$_SESSION[userId]','$row[tagId]','1')";
				else
					$sql = "UPDATE user_favourite_tags SET viewCount = viewCount + 1 WHERE userId = '$_SESSION[userId]' AND tagId = '$row[tagId]'";
			   
			   mysqli_query($db, $sql); 
		   }
		   
		   $taglist .= "<a  title='Subscribe to this tag' href='tag.php?tag=$row[tag]'><span class='label label-default add-tag' >$row[tag]</span></a>  ";
		}
		
	 }
	 
	 else
		 header('location: dashboard.php?1');





	if(isset($_GET['unpublish']) && ($owner || ($_SESSION['repScore'] >= 40 && $flagged)) && $_GET['unpublish'] == 1 && !$claimed)
	{
		$sql = "SELECT taskId FROM unpublished_tasks WHERE taskId = '$taskId'";
		$result = mysqli_query($db,$sql);
		if(mysqli_num_rows($result) == 0)
		{
			$sql = "INSERT INTO unpublished_tasks(taskId, userId) VALUES('$taskId', '$_SESSION[userId]')";
			mysqli_query($db,$sql);
			$unpublished = true;
		}
	}
	
	if($completed)
	{
		$sql = "SELECT review, feedbackGiven FROM task_completed WHERE taskId = '$taskId'";
		$result = mysqli_query($db,$sql);
		$row = mysqli_fetch_array($result, MYSQLI_ASSOC);
		$review = $row['review'];
		$feedbackGiven = $row['feedbackGiven'];

	}
 }

	else 
		header("location: dashboard.php");
	
		
		
		
		
			
 ?>

<!DOCTYPE html>
<!-- Template by Quackit.com -->
<html lang="en">
<head>
<link rel="icon" type="image/png" href="/favicon.png">
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <title>View Task - Proofreaders</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS: You can use this stylesheet to override any Bootstrap styles and/or apply your own styles -->
    <link href="css/custom.css" rel="stylesheet">
	


	<!-- For the tag auto completion -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
	
	
	

</head>

<body>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script>
$(function() {
		$( "#search" ).autocomplete({
			source: 'searchpredict.php',
			select: function( event, ui ) {
            window.location = ui.item.url;
			}
		});	
		
		});
</script>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-static-top" role="navigation">
        <div class="container">
            <!-- Logo and responsive toggle -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="dashboard.php"><span class="glyphicon glyphicon-education"></span> Proofreaders</a>
            </div>
            <!-- Navbar links -->
            <div class="collapse navbar-collapse" id="navbar">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="dashboard.php">Dashboard</a>
                    </li>
                    <li>
                        <a href="profile.php">My Profile</a>
                    </li>
                    <li>
                        <a href="claimedtasks.php">Claimed Tasks</a>
                    </li>
					<li>
                        <a href="usertasks.php?userId=<?php echo $_SESSION['userId'];?>">My Tasks</a>
                    </li>
					<?php if($_SESSION['repScore'] >= 40) echo "<li class=>
						<a href='flaggedtasks.php'>Flagged Tasks</a>
					</li>"
					?>
					   
                </ul>

				<!-- Search -->
				<form class="navbar-form navbar-right" role="search" action="search.php">
					<div class="form-group">
						<div class="ui-widget">
							<input type="text" class="form-control" id="search" name="q">
						</div>
					</div>
					<button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span> Search</button>
				</form>

            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

<div class="container-fluid">

		<!-- Left Column -->
		<div class="col-sm-3">

			<!-- List-Group Panel -->
			<div class="panel panel-default">
				<div class="panel-heading">
					<h1 class="panel-title"><span class="glyphicon glyphicon-home"></span> Dashboard</h1>
				</div>
				<div class="list-group">
					<a href="logout.php" class="list-group-item">Log out</a>
					<a href="newtask.php" class="list-group-item">Create a new task</a>
				
				</div>
			</div>

	
		</div><!--/Left Column-->
  
  
		<!-- Center Column -->
		<div class="col-sm-6">
			
		<div class="panel panel-default">
		  <div class="panel-heading">
			<h3 class="panel-title"><?php if($claimed && !$completed){echo "<span class='glyphicon glyphicon-ok'></span> This task has been claimed - ";} else if($unpublished){echo "<span class='glyphicon glyphicon-remove'></span> This task has been unpublished - ";} else if($completed){echo "This task has been completed - ";} echo $taskTitle; 
			

			if(($owner || ($_SESSION['repScore'] >= 40 && $flagged)) && !$unpublished && !$completed)
			{
				echo "<p class='pull-right'><a href='task.php?taskId=$taskId&unpublish=1'><span class='glyphicon glyphicon-remove'></span>  Unpublish Task</a></p>";
			}

	
			?></h3>
		  </div>
		  <div class="panel-body">
		  
  

			
			
			<ul class="list-group task-info">
			  <li class="list-group-item"><strong>Submitted by:</strong> <a href="profile.php?userId=<?php echo $userId;?>"> <?php echo $submittedBy;?></a></li>
			  <li class="list-group-item"><strong>Number of pages:</strong> <?php echo $pageCount;?></li>
			  <li class="list-group-item"><strong>Number of words:</strong> <?php echo $wordCount;?></li>
			  <li class="list-group-item"><strong>Type:</strong> <?php echo $taskType;?></li>
			  <li class="list-group-item"><strong>Tags:</strong> <?php echo $taglist;?></li>
			  <li class="list-group-item"><strong>Submitted on:</strong> <?php echo $taskDate;?></li>
			  <li class="list-group-item"><strong>Claim deadline:</strong> <?php echo $taskClaimDeadline;?></li>
			  <li class="list-group-item"><strong>Deadline:</strong> <?php echo $taskCompletionDeadline;?></li>
			  <li class="list-group-item"><strong>Sample:</strong> <a href="<?php echo $samplefileurl;?>">Click here to download.</a><?php echo $samplefilehtml;?></li>
			  <?php 
			  
			  if($pastdeadline && !$claimed && !$owner)
			  {
			    echo "<li class='list-group-item list-group-item-warning'>This task has passed its deadline to be claimed.</li>";
			  }
			  else if(!$claimed && !$owner && !$banned)
			  {
				echo "<form action='" . htmlspecialchars($_SERVER['PHP_SELF']) ."' method='get'>
				<input type='hidden' name='taskId' value='" .  htmlspecialchars($_GET['taskId']) . "'>
				<input type='hidden' name='claim' value='1'>
				<li class='list-group-item'> <button type='submit' class='btn btn-success'>Claim Task <span class='glyphicon glyphicon-ok'></span></button></li>
				</form>";  
			  }
			  
			  else
				  echo "<li class='list-group-item'><strong>Full Document:</strong> <a href=' $fileurl'>Click here to download.</a> $taskfilehtml</li>";
			  
			  
			  if($claimed)
			  {
				 echo "<li class='list-group-item'><strong>Claimed By:</strong> <a href='profile.php?userId=$claimerid'>$claimername</a></li>";
			  }
			  
			  ?>
			
			</ul>
			
			<ul class="list-group task-info">
			<li class="list-group-item greyBG">Description</</li>
			<li class="list-group-item"><?php echo $taskDesc;?>
			
	
			</ul>
			
			<?php if($claimer && !$completed) echo "<ul class='list-group task-info'>
			<li class='list-group-item greyBG'>Submit your review of this task
			</li>
			<li class='list-group-item'>
			<form action='completetask.php' method='post'>
			<textarea rows='4' class='submit' name='taskreview'></textarea>
			<input type='hidden' value='$taskId' name='taskId' />
			<button class='btn btn-success' type='submit'>Complete Task</button>
			</form>
			</li></ul>";
			
			else if(($owner || $claimer) && $completed)
			{				
			echo "<ul class='list-group task-info'>
				<li class='list-group-item greyBG'>Task Reveiw:
				</li>
				<li class='list-group-item'>
				<p>$review</p>
				</li>";
				
			if($feedbackGiven == 0 && $owner)
			{
				echo "<div class='rate-buttons-container'>
				<form action='completetask.php' method='post' class='rate-buttons happy'>
			<input type='hidden' value='1' name='happy' />
			<input type='hidden' value='$taskId' name='taskId' />
			<button class='btn btn-success' type='submit'>Happy <span class='glyphicon glyphicon-thumbs-up'></span></button>
			</form>
			<form action='completetask.php' method='post' class='rate-buttons'>
			<input type='hidden' value='1' name='unhappy' />
			<input type='hidden' value='$taskId' name='taskId' />
			<button class='btn btn-danger' type='submit'>Unhappy <span class='glyphicon glyphicon-thumbs-down'></span></button>
			</form>
			</div>";
			}
				
				echo "</ul>"; 
			}  
			?>
			
			</div> 
			  
			  
		  </div>
		</div>
		</div>
			
			<hr>
		</div><!--/Center Column-->


	</div><!--/container-fluid-->
	
	<footer>
		
        
        <div class="small-print">
        	<div class="container">
        		<p><a href="#">Terms &amp; Conditions</a> | <a href="#">Privacy Policy</a> | <a href="#">Contact</a></p>
        		<p>Copyright &copy; Example.com 2015 </p>
        	</div>
        </div>
	</footer>



    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
	
	
</body>

</html>
