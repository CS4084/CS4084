<?php 
  include('config.php');
  include('displaytasks.php');
  session_start();

  if ( $_SESSION['userId']=="") {
    header("Location: index.php");
    exit;
  }
   
  if (isset($_GET['userId']) && !empty($_GET['userId'])){
	  
	  $mytasks = false;
	  $userId = mysqli_real_escape_string($db, $_GET['userId']);
	  
	  //Get the user's name
	  $sql3 = "SELECT firstName, lastName FROM users WHERE userId = $userId";
	  $result3 = mysqli_query($db,$sql3);
	  $row3 = mysqli_fetch_array($result3, MYSQLI_ASSOC);
	  $userName = $row3['firstName'] . " " . $row3['lastName'];
	  
	  
	  
	  $mytasks = isset($_GET['userId']) && $_GET['userId'] == $_SESSION['userId'];
	  
	  $sql = "SELECT * FROM task WHERE userId = $userId AND NOT EXISTS ((SELECT * FROM task_claimed WHERE task.taskId = task_claimed.taskId) UNION (SELECT * FROM unpublished_tasks WHERE task.taskId = unpublished_tasks.taskId)) ORDER BY taskDate DESC";
	  
	  if(isset($_GET['type']) && $_GET['type'] == "claimed" && $mytasks)
	  {
		$sql = "SELECT * FROM task_claimed JOIN task on task_claimed.taskId = task.taskId WHERE task.taskId IN (SELECT taskId FROM task WHERE userId = '$userId' AND taskId NOT IN (SELECT taskId FROM task_completed)";
	  }
	  else if(isset($_GET['type']) && $_GET['type'] == "completed" && $mytasks)
	  {
		$sql = "SELECT * FROM task_completed JOIN task on task_completed.taskId = task.taskId WHERE task.taskId IN (SELECT taskId FROM task WHERE userId = '$userId')";
	  }
	  else if(isset($_GET['type']) && $_GET['type'] == "unpublished" && $mytasks)
	  {
		$sql = "SELECT * FROM unpublished_tasks JOIN task on unpublished_tasks.taskId = task.taskId WHERE task.taskId IN (SELECT taskId FROM task WHERE userId = '$userId')";
	  }
	  
	  $taskhtml = displayTasks($sql);
		  
	  
	
		  
	  if($taskhtml == "")
	  $taskhtml = "<br><br>
						<div class='alert alert-warning'>
						<span class='glyphicon glyphicon-warning-sign'></span>  	There are no tasks to display.
						</div>";
	
  }
  
  else
	  header("location: dashboard.php");
  
 ?>
  
<!DOCTYPE html>
<!-- Template by Quackit.com -->
<html lang="en">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta charset="utf-8">
	<link rel="icon" type="image/png" href="/favicon.png">

    <title><?php echo $userName . "'s Tasks";?> - Proofreaders</title>

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
					<li <?php 
					if(isset($_GET['userId']))
						echo $_GET['userId'] == $_SESSION['userId'] ?  "class='active'" : "";?>>
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
		<?php 
			//Highlights the correct nav element as active
			if($mytasks)
			{
			 $tasknav = "<ul class='nav nav-tabs'>
							<li role='presentation'";
			if( !isset($_GET['type']) || (isset($_GET['type']) && ($_GET['type'] !== "claimed" && $_GET['type'] !== "completed" && $_GET['type'] !== "unpublished")))
					$tasknav .= "class='active'";
			  
			  $tasknav .= "><a href='usertasks.php?userId=$userId&type=open'>Open Tasks</a></li>
							<li role='presentation'" ;
			  if(isset($_GET['type']) && $_GET['type'] == "claimed")
					$tasknav .= "class='active'";
			  
			  $tasknav .= "><a href='usertasks.php?userId=$userId&type=claimed'>Claimed Tasks</a></li>
							<li role='presentation'";
			  if(isset($_GET['type']) && $_GET['type'] == "completed")
					$tasknav .= "class='active'";
				
			  $tasknav .= "><a href='usertasks.php?userId=$userId&type=completed'>Completed Tasks</a></li>
							<li role='presentation'";
			  if(isset($_GET['type']) && $_GET['type'] == "unpublished")
					$tasknav .= "class='active'";
				
			 $tasknav .= "><a href='usertasks.php?userId=$userId&type=unpublished'>Unpublished Tasks</a></li>
							</ul>";
							
			 echo $tasknav;
			}		
			?>
			
		
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
