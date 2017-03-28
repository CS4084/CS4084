<?php
  include('config.php');
  session_start();
  
  if ( $_SESSION['userId']=="") {
    header("Location: index.php");
    exit;
  }
 
 $error = false;
 
 
 if ($_SERVER['REQUEST_METHOD'] == 'GET'){
   
   if(!isset($_GET['user']))
     $error = true;
   
   else {
	 $userId = mysqli_real_escape_string($db,$_GET['user']);
	 $sql = "SELECT firstName, lastName, studentId, repScore, dateJoined, subjectStream FROM users NATURAL JOIN subject_streams WHERE userId = '$userId'";
	 $result = mysqli_query($db,$sql);
	 $count = mysqli_num_rows($result);
	 
	 if($count == 1)
	 {
		$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
        $title = "Profile - " . $row['firstName'] . " " . $row['lastName'];	
	 }
	   
	 else
	   $error = true;
   
   }
 }
 else
   $error = true;
 
 //If the user in the GET parameter doesn't exist, or if no GET parameter is provided,
 //display the logged in user's profile info.
 if($error) {
   $userId = $_SESSION['userId'];
   $sql = "SELECT firstName, lastName, studentId, repScore, dateJoined, subjectStream FROM users NATURAL JOIN subject_streams WHERE userId = '$userId'";

   $result = mysqli_query($db,$sql);
   $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
   $title  = "My Profile";
 }
?>

<!DOCTYPE html>
<!-- Template by Quackit.com -->
<html lang="en">
<head>
    <meta charset="utf-8">

    <title>My Profile - Proofreader</title>

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
                    <li <?php if($error) echo "class='active'";?>>
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
		

		
				
		</div><!--/Left Column-->
  
  
		<!-- Center Column -->
		<div class="col-sm-6">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h1 class="panel-title"><span class="glyphicon glyphicon-user"></span> <?php echo $title; ?></h1>
				</div>
				<div class="panel-body">
				<img src="images/avatar.png" id="avatar"/>
				<ul class="list-group">
					<li class="list-group-item">Name: <?php echo $row["firstName"] . " " . $row["lastName"]; ?></li>
					<li class="list-group-item">Subject Stream: <?php echo $row["subjectStream"];?></li>
					<li class="list-group-item">Reputation: <?php echo $row["repScore"];?></li>
					<li class="list-group-item">Date joined: <?php echo $row["dateJoined"];?></li>
					<li class="list-group-item"><a href="tasks.php?user<?php echo $userId;?>">View open tasks</a></li>
					<li class="list-group-item">ID: <?php echo $row["studentId"];?></li>
				</ul>
				</div>
			</div>
			
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
