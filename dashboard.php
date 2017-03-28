<?php 
  include('config.php');
  include('displaytasks.php');
  session_start();

  if ( $_SESSION['userId']=="") {
    header("Location: index.php");
    exit;
  }
  
 
  $sql = "SELECT * FROM task WHERE NOT EXISTS ((SELECT * FROM task_claimed WHERE task.taskId = task_claimed.taskId) UNION (SELECT * FROM unpublished_tasks WHERE task.taskId = unpublished_tasks.taskId)) ORDER BY taskDate DESC";
  $taskhtml = displayTasks($sql);
  
 ?>
  
<!DOCTYPE html>
<!-- Template by Quackit.com -->
<html lang="en">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta charset="utf-8">

    <title>Dashboard - Proofreader</title>

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

	
    <!-- jQuery -->
    <script src="js/jquery-1.11.3.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
	
	
</body>

</html>
