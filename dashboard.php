<?php 
  include('config.php');
  include('displaytasks.php');
  session_start();

  if ( $_SESSION['userId']=="") {
    header("Location: index.php");
    exit;
  }
  
  
  //all tasks
   $sql = "SELECT * 
	FROM task 
	WHERE NOT EXISTS 
	(SELECT * 
	   FROM task_claimed 
	   WHERE task.taskId = task_claimed.taskId) 
	AND NOT EXISTS  (
		  SELECT * 
		  FROM unpublished_tasks 
		  WHERE task.taskId = unpublished_tasks.taskId)
	AND NOT EXISTS  (
		  SELECT * 
		  FROM task_completed
		  WHERE task.taskId = task_completed.taskId)
	AND userId NOT IN (
	SELECT bannedUserId FROM user_banned)
	ORDER BY taskClaimDeadline";
  
  if(isset($_GET['type']) && $_GET['type'] == "subscribed")
	  {
		$sql = "SELECT * FROM task WHERE taskId IN (SELECT taskId FROM task_tags NATURAL JOIN user_subscribed_tags WHERE userId = '$_SESSION[userId]')
	 AND NOT EXISTS 
	(SELECT * 
	   FROM task_claimed 
	   WHERE task.taskId = task_claimed.taskId) 
	AND NOT EXISTS  (
		  SELECT * 
		  FROM unpublished_tasks 
		  WHERE task.taskId = unpublished_tasks.taskId)
	AND NOT EXISTS  (
		  SELECT * 
		  FROM task_completed
		  WHERE task.taskId = task_completed.taskId)
		  AND userId NOT IN (
	SELECT bannedUserId FROM user_banned)
	ORDER BY taskClaimDeadline";
	  }
	  else if(isset($_GET['type']) && $_GET['type'] == "mysubject")
	  {
		$sql = "SELECT * 
	FROM task 
	WHERE taskSubject = (SELECT subjectStream FROM subject_streams WHERE userId = '$_SESSION[userId]') AND 
	NOT EXISTS 
	(SELECT * 
	   FROM task_claimed 
	   WHERE task.taskId = task_claimed.taskId) 
	AND NOT EXISTS  (
		  SELECT * 
		  FROM unpublished_tasks 
		  WHERE task.taskId = unpublished_tasks.taskId)
	AND NOT EXISTS  (
		  SELECT * 
		  FROM task_completed
		  WHERE task.taskId = task_completed.taskId)	  
	AND userId NOT IN (
	SELECT bannedUserId FROM user_banned)
	ORDER BY taskClaimDeadline";
	  }
	  else if(isset($_GET['type']) && $_GET['type'] == "mostviewed"){
			$sql = "SELECT * 
				FROM task 
				JOIN task_tags 
				ON task.taskId = task_tags.taskId 
				JOIN user_favourite_tags 
				ON task_tags.tagId = user_favourite_tags.tagId 
				WHERE user_favourite_tags.userId = '$_SESSION[userId]' 
				AND NOT EXISTS 
				(SELECT * 
				   FROM task_claimed 
				   WHERE task.taskId = task_claimed.taskId) 
				AND NOT EXISTS  (
					  SELECT * 
					  FROM unpublished_tasks 
					  WHERE task.taskId = unpublished_tasks.taskId)
				AND NOT EXISTS  (
					  SELECT * 
					  FROM task_completed
					  WHERE task.taskId = task_completed.taskId)
					  AND task.userId NOT IN (
	SELECT bannedUserId FROM user_banned)
				ORDER BY viewCount DESC, taskClaimDeadline";
	  
	}
	
		$taskhtml = displayTasks($sql, true);
	
	
 
  
    if($taskhtml == "")
	  $taskhtml = "<br><br>
						<div class='alert alert-warning'>
						<span class='glyphicon glyphicon-warning-sign'></span>  	There are no tasks to display.
						</div>";
  
  
  $errorBox = "";	  
  if($_SERVER['REQUEST_METHOD'] == 'GET' && isset($_GET['error']))
  {
	$errorBox = "<div class='alert alert-danger' role='alert'><span class='glyphicon glyphicon-warning-sign'></span>  No such tag exists.</div>";
  }
  
  
  
  
  $subscribedTags = "";
  
  $sql = "SELECT * FROM user_subscribed_tags NATURAL JOIN tags WHERE userId = $_SESSION[userId]";
  $result = mysqli_query($db, $sql);
  
  if($result)
  {
	  while($row = mysqli_fetch_array($result, MYSQLI_ASSOC))
	  {
		$subscribedTags .= "<a title='Unsubscribe from this tag' href='tag.php?tagId=$row[tagId]&unsub=1'><span class='label label-default remove-tag'>$row[tag]</span></a>  ";
	  }
  }
  
  $subscribedTags = $subscribedTags == "" ? "You have not subscribed to any tags." : $subscribedTags;
  
 
  
  
 ?>
  
<!DOCTYPE html>
<!-- Template by Quackit.com -->
<html lang="en">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta charset="utf-8">
	<link rel="icon" type="image/png" href="/favicon.png">
    <title>Dashboard - Proofreaders</title>

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
		$( "#tags" ).autocomplete({
			source: 'tagsearch.php'
			});
		
		});
		
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
                    <li class="active">
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
			
			<div class="panel panel-default">
				<div class="panel-heading">
					<h1 class="panel-title"><span class="glyphicon glyphicon-tags"></span> Tags</h1>
				</div>
				<div class="list-group">
					<div class="list-group-item">
					<?php echo $errorBox;?>
						<p>Subscribe to a tag:</p>
						<form action="tag.php" method="get">
						<div class="ui-widget">
							<input id="tags" name="tag"></input><button type="submit" class="btn-success" id="tagbtn"><span class="glyphicon glyphicon-ok"></span></button>
						</div>
						
						</form>
							
					</div>
					<p class="list-group-item">
					<strong>My Tags:</strong><br><br>
					<?php echo $subscribedTags?></p>
				
				</div>
			</div>


	
		</div><!--/Left Column-->
  
  
		<!-- Center Column -->
		<div class="col-sm-6">
			
		
			<!-- Articles -->
			<?php
			$tasknav = "<ul class='nav nav-tabs'>
							<li role='presentation'";
			if( !isset($_GET['type']) || (isset($_GET['type']) && ($_GET['type'] !== "subscribed" && $_GET['type'] !== "mostviewed" && $_GET['type'] !== "mysubject")))
					$tasknav .= "class='active'";
			  
			  $tasknav .= "><a href='dashboard.php?type=all'>All Tasks</a></li>
							<li role='presentation'" ;
			  
			  if(isset($_GET['type']) && $_GET['type'] == "subscribed")
					$tasknav .= "class='active'";
				
			  $tasknav .= "><a href='dashboard.php?type=subscribed'>Subscribed Tags</a></li>
							<li role='presentation'";
			  if(isset($_GET['type']) && $_GET['type'] == "mostviewed")
					$tasknav .= "class='active'";
			  $tasknav .= "><a href='dashboard.php?type=mostviewed'>Most Viewed Tags</a></li>
							<li role='presentation'";
			  if(isset($_GET['type']) && $_GET['type'] == "mysubject")
					$tasknav .= "class='active'";
				
			 $tasknav .= "><a href='dashboard.php?type=mysubject'>My Subject Stream</a></li>
							</ul>";
							
			 echo $tasknav;
			 echo $taskhtml;
			 ?>
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
