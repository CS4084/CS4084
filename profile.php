<?php
  include('config.php');
  session_start();
  
  if ( $_SESSION['userId']=="") {
    header("Location: index.php");
    exit;
  }
   
   if($_SERVER['REQUEST_METHOD'] !== 'GET' OR !isset($_GET['userId']) OR empty($_GET['userId']))
     $userId = $_SESSION['userId'];
   else
	 $userId = mysqli_real_escape_string($db,$_GET['userId']);
   
	
	 $sql = "SELECT firstName, lastName, studentId, repScore, dateJoined, subjectStream FROM users NATURAL JOIN subject_streams WHERE userId = '$userId'";
	 $result = mysqli_query($db,$sql);
	 $count = mysqli_num_rows($result);
	 
	 if($count == 1)
	 {
		$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
        $title = ($userId == $_SESSION['userId']) ? "My Profile" : "Profile - " . $row['firstName'] . " " . $row['lastName'];	
	 }
	 else
		 header("location: dashboard.php");
 
   
 
?>

<!DOCTYPE html>
<!-- Template by Quackit.com -->
<html lang="en">
<head>
<link rel="icon" type="image/png" href="/favicon.png">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta charset="utf-8">

    <title><?php echo $title ?> - Proofreaders</title>

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
                    <li <?php if($userId == $_SESSION['userId']) echo "class='active'";?>>
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
		

		
				
		</div><!--/Left Column-->
  
  
		<!-- Center Column -->
		<div class="col-sm-6">
			<div class="panel panel-default">
			
				<div class="panel-heading">
					<h1 class="panel-title"><span class="glyphicon glyphicon-user"></span> <?php echo $title; ?></h1><?php if($_SESSION['repScore'] >= 40 && isset($_GET['userId'])) echo
			"<br><form action='ban.php' method='post'>
				<input type='hidden' name='userId' value='" .  htmlspecialchars($_GET['userId']) . "'>
				<button type='submit' class='btn btn-danger'>Ban User  <span class='glyphicon glyphicon-remove'></span></button>
				</form>"
			?>
			
			
					
				</div>
				<div class="panel-body">
				<ul class="list-group">
					<li class="list-group-item">Name: <?php echo $row["firstName"] . " " . $row["lastName"]; ?></li>
					<li class="list-group-item">Subject Stream: <?php echo $row["subjectStream"];?></li>
					<li class="list-group-item">Reputation: <?php echo $row["repScore"];?></li>
					<li class="list-group-item">Date joined: <?php echo $row["dateJoined"];?></li>
					<li class="list-group-item"><a href="usertasks.php?userId=<?php echo $userId;?>">View open tasks</a></li>
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
	


    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
	
	
</body>

</html>
