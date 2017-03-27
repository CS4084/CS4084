<?php
  include('config.php');
  session_start();
  
  if ($_SESSION['userId']=="") {
    header("Location: index.php");
    exit;
  }
 
 $error = false;
 
$submittedBy = "";
$taskId = "";
$userId = "";
$taskTitle = "";
$taskDate = "";
$taskType = "";
$taskDesc = "";
$taskSubject = "";
$pageCount = "";
$wordCount = "";
$taskClaimDeadline = "";
$taskCompletionDeadline = "";
$taglist ="";

$claiming = false;
$claimed = false;
$owner = false;
$unpublished = false;
 
 if ($_SERVER['REQUEST_METHOD'] == 'GET'){
	 if(!isset($_GET['taskId']))
			$error = true;
 
			else {
			
			 $taskId = mysqli_real_escape_string($db,$_GET['taskId']);
			 $sql = "SELECT * FROM task WHERE taskId = '$taskId'";
			 $result = mysqli_query($db,$sql);
			 
			 $sql2 = "SELECT tag FROM tags NATURAL JOIN task_tags WHERE taskId = '$taskId'";
			 $result2 = mysqli_query($db,$sql2);
			 $count = mysqli_num_rows($result);
			 
			 //Check if the task has been unpublished
			 $unpubsql = "SELECT taskId, userId FROM unpublished_tasks WHERE taskId = '$taskId'";
		     $unpubresult = mysqli_query($db,$unpubsql);
			 $unpubcount = count($unpubresult);
			 $row = mysqli_fetch_array($unpubresult, MYSQLI_ASSOC);
				
			if($row['taskId'] == $taskId && $row['userId'] != $_SESSION['userId'])
			{
				header("location: dashboard.php");
			}
			
			else {
				$unpublished = true;
			}
			
			
			 
			 
			 //Check if the task has been claimed by this user
			 $claimedsql = "SELECT taskId, userId FROM task_claimed WHERE taskId = '$taskId'";
		     $claimedresult = mysqli_query($db,$claimedsql);
			 $claimedcount = count($claimedresult);
			 $row = mysqli_fetch_array($claimedresult, MYSQLI_ASSOC);
				
			if($row['taskId'] == $taskId && $row['userId'] != $_SESSION['userId'])
			{
				header("location: dashboard.php");
			}
			
			else if($row['taskId'] == $taskId && $row['userId'] == $_SESSION['userId']) {
				$claimed = true;
			}
			 
			 if($count == 1){
				$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
							
				$taskId = $row['taskId'];
				$userId = $row['userId'];
				
				if($userId == $_SESSION['userId'])
					$owner = true;
				
				$taskTitle = $row['taskTitle'];
				$taskDate = $row['taskDate'];
				$taskType = $row['taskType'];
				$taskDesc = $row['taskDesc'];
				$taskSubject = $row['taskSubject'];
				$pageCount = $row['pageCount'];
				$wordCount = $row['wordCount'];
				$taskClaimDeadline = $row['taskClaimDeadline'];
				$taskCompletionDeadline = $row['taskCompletionDeadline'];
				$sql3 = "SELECT firstName, lastName FROM users WHERE userId = '$userId'";
				$result3 = mysqli_query($db, $sql3);	
			 
			 
			     $row = mysqli_fetch_array($result3, MYSQLI_ASSOC);
				 $submittedBy = $row['firstName'] . " " . $row['lastName'];
			 
				$filesql = "SELECT * FROM file_paths WHERE taskId = '$taskId'";
				$fileresult =  mysqli_query($db,$filesql);
				$row = mysqli_fetch_array($fileresult, MYSQLI_ASSOC);
				$fileurl = $row['filePath'];
				$samplefileurl = $row['sampleFilePath'];
				
				
				
			 
			 
			 while($row = mysqli_fetch_array($result2, MYSQLI_ASSOC))
			{
			   $taglist .= "<span class='label label-default'>$row[tag]</span>  ";
			}
			 }
			 
			 else
				 $error = true;
			
		}
		
		if(isset($_GET['claim']) && $_GET['claim'] == 1 && !$error)
		{
			$claiming = true;

			$sql = "INSERT INTO task_claimed(taskId, userId) VALUES('$taskId', '$_SESSION[userId]')";
			mysqli_query($db,$sql);
			
		}
		
		if($owner && isset($_GET['unpublish']) && $_GET['unpublish'] == 1)
		{
			$sql = "INSERT INTO unpublished_tasks(taskId, userId) VALUES('$taskId', '$_SESSION[userId]')";
			mysqli_query($db,$sql);
		}
		
		
	}

		else $error = true
		
			
 ?>

<!DOCTYPE html>
<!-- Template by Quackit.com -->
<html lang="en">
<head>
    <meta charset="utf-8">

    <title>View Task - Proofreader</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS: You can use this stylesheet to override any Bootstrap styles and/or apply your own styles -->
    <link href="css/custom.css" rel="stylesheet">

</head>

<body>

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
					   
                </ul>

				<!-- Search -->
				<form class="navbar-form navbar-right" role="search">
					<div class="form-group">
						<input type="text" class="form-control">
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
			<h3 class="panel-title"><?php if($claimed){echo "<span class='glyphicon glyphicon-ok'></span> You have claimed this task - ";} else if($unpublished){echo "<span class='glyphicon glyphicon-remove'></span> You have unpublished this task - ";} echo $taskTitle; 
			

			if($owner && !$unpublished)
			{
				echo "<p class='pull-right'><a href='task.php?taskId=$taskId&unpublish=1'><span class='glyphicon glyphicon-remove'></span>  Unpublish Task</a></p>";
			}

	
			?></h3>
		  </div>
		  <div class="panel-body">
		  
  

			
			
			<ul class="list-group task-info">
			  <li class="list-group-item">Submitted by: <?php echo $submittedBy;?></li>
			  <li class="list-group-item">Number of pages: <?php echo $pageCount;?></li>
			  <li class="list-group-item">Number of words: <?php echo $wordCount;?></li>
			  <li class="list-group-item">Type: <?php echo $taskType;?></li>
			  <li class="list-group-item">Tags: <p class="pull-right"><?php echo $taglist;?></p></li>
			  <li class="list-group-item">Submitted on: <?php echo $taskClaimDeadline;?></li>
			  <li class="list-group-item">Deadline: <?php echo $taskCompletionDeadline;?></li>
			  <li class="list-group-item">Sample: <a href="<?php echo $samplefileurl;?>">Click here to download.</a></li>
			  <?php if(!$claiming && !$claimed && !$owner)
			  {
				echo "<form action='" . htmlspecialchars($_SERVER['PHP_SELF']) ."' method='get'>
				<input type='hidden' name='taskId' value='" .  htmlspecialchars($_GET['taskId']) . "'>
				<input type='hidden' name='claim' value='1'>
				<li class='list-group-item'> <button type='submit' class='btn btn-success'>Claim Task <span class='glyphicon glyphicon-ok'></span></button></li>
				</form>";  
			  }
			  
			  else{
				  echo "<li class='list-group-item list-group-item-success'>Full Document: <a href=' $fileurl'>Click here to download.</a></li>";
			  }
			  ?>
			
			</ul>
			
			<ul class="list-group task-info">
			<li class="list-group-item greyBG">Description</</li>
			<li class="list-group-item"><?php echo $taskDesc;?></ul>
			
			
			
			
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

	
    <!-- jQuery -->
    <script src="js/jquery-1.11.3.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
	
	
</body>

</html>