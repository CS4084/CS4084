<?php 
  include('config.php');
  include('displaytasks.php');
  session_start();

  if ( $_SESSION['userId']=="" || $_SESSION['repScore'] < 40) {
    header("Location: index.php");
    exit;
  }
  
  
  $userId = mysqli_real_escape_string($db, $_SESSION['userId']);
  $sql = "SELECT * FROM task_flagged ORDER BY taskDate DESC";
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
					<li class="active">
						<a href="flaggedtasks.php">Flagged Tasks</a>
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
