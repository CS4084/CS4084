<?php 
include('config.php');
include('displaytasks.php');
session_start();

if ( $_SESSION['userId']=="") {
header("Location: index.php");
exit;
}


$userId = mysqli_real_escape_string($db, $_SESSION['userId']);
$sql = "SELECT * FROM task WHERE task.taskId IN (SELECT taskId FROM task_claimed WHERE userId = '$userId' AND taskId NOT IN(SELECT taskId FROM task_completed) AND taskId NOT IN(SELECT taskId FROM unpublished_tasks)) ORDER BY taskCompletionDeadline";
$taskhtml = "";
$userName = "";
$result = mysqli_query($db,$sql);
$previousTaskID = -1;
if($result)//if there are results
{
	while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) 
	{
		$continue = true;
		
		
		$todayDate = date("Y-m-d");
		$completionDeadline = date_format(date_create($row['taskCompletionDeadline']),"Y-m-d");
		if($completionDeadline < $todayDate)
		{
			$removesql = "INSERT INTO unpublished_tasks (taskId,userId) VALUES('$row[taskId]','$row[userId]')";
			mysqli_query($db,$removesql);
			$repsql = "UPDATE users SET repScore = repScore - '30' WHERE userId = '$userId'";
			mysqli_query($db,$repsql);
			$_SESSION['repScore'] = $_SESSION['repScore'] - 30;
			$continue = false;
		}

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
  if($taskhtml == "")
	  $taskhtml = "<br><br>
						<div class='alert alert-warning'>
						<span class='glyphicon glyphicon-warning-sign'></span>  	There are no tasks to display.
						</div>";
  
 ?>
  
<!DOCTYPE html>
<!-- Template by Quackit.com -->
<html lang="en">
<head>
<link rel="icon" type="image/png" href="/favicon.png">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta charset="utf-8">

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
                    <li  class="active">
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
	
		</div><!--/Left Column-->
  
  
		<!-- Center Column -->
		<div class="col-sm-6">
			<!-- Articles -->
			<?php echo $taskhtml;?>
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
