<?php 
  include('config.php');
  session_start();

  if ( $_SESSION['userId']=="") {
    header("Location: index.php");
    exit;
  }
  
  
  
  $taskhtml = "";
  $sql = "SELECT * FROM task WHERE NOT EXISTS ((SELECT * FROM task_claimed WHERE task.taskId = task_claimed.taskId) UNION (SELECT * FROM unpublished_tasks WHERE task.taskId = unpublished_tasks.taskId)) ORDER BY taskDate DESC";
  $result = mysqli_query($db,$sql);
  while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) 
  {
	$taglist = "";
	
	//Get the tags from the DB
    $sql2 = "SELECT tag FROM tags NATURAL JOIN task_tags WHERE taskId = '$row[taskId]'";
	$result2 = mysqli_query($db,$sql2);
	while($row1 = mysqli_fetch_array($result2, MYSQLI_ASSOC))
	    $taglist .= "<span class='label label-default'>$row1[tag]</span>  ";
			
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
						
					</ul>
				</article>
			</div>
  <hr>";
  }
  
 ?>
  
<!DOCTYPE html>
<!-- Template by Quackit.com -->
<html lang="en">
<head>
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
                <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-education"></span> Proofreaders</a>
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
