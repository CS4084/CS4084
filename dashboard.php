<?php 
  include('config.php');
  session_start();

  if ( $_SESSION['userId']=="") {
    header("Location: index.php");
    exit;
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
			<div class="row">
				<article class="col-xs-12">
					<h2>Premier Niche Markets</h2>
					<p>Phosfluorescently engage worldwide methodologies with web-enabled technology. Interactively coordinate proactive e-commerce via process-centric "outside the box" thinking. Completely pursue scalable customer service through sustainable potentialities.</p>
					<p><a href="task.php"><button class="btn btn-default">Read More</button></a></p>
					<p class="pull-right"><span class="label label-default">keyword</span> <span class="label label-default">tag</span> <span class="label label-default">post</span></p>
					<ul class="list-inline">
						<li><a href="#">Today</a></li>
						<li><a href="#"><span class="glyphicon glyphicon-comment"></span> 2 Comments</a></li>
						<li><a href ="flag.php"><span class="glyphicon glyphicon-flag"></span> Flag as inappropriate</a></li>
						
					</ul>
				</article>
			</div>
			<hr>
			<div class="row">
				<article class="col-xs-12">
					<h2>Proactively Envisioned</h2>
					<p>Seamlessly visualize quality intellectual capital without superior collaboration and idea-sharing. Holistically pontificate installed base portals after maintainable products. Proactively envisioned multimedia based expertise and cross-media growth strategies.</p>
					<p><button class="btn btn-default">Read More</button></p>
					<p class="pull-right"><span class="label label-default">keyword</span> <span class="label label-default">tag</span> <span class="label label-default">post</span></p>
					<ul class="list-inline">
						<li><a href="#">Yesterday</a></li>
						<li><a href="#"><span class="glyphicon glyphicon-comment"></span> 21 Comments</a></li>
						<li><a href ="flag.php"><span class="glyphicon glyphicon-flag"></span> Flag as inappropriate</a></li>
					</ul>
				</article>
			</div>
			<hr>      
			<div class="row">
				<article class="col-xs-12">
					<h2>Completely Synergize</h2>
					<p>Completely synergize resource taxing relationships via premier niche markets. Professionally cultivate one-to-one customer service with robust ideas. Dynamically innovate resource-leveling customer service for state of the art customer service.</p>
					<p><button class="btn btn-default">Read More</button></p>
					<p class="pull-right"><span class="label label-default">keyword</span> <span class="label label-default">tag</span> <span class="label label-default">post</span></p>
					<ul class="list-inline">
						<li><a href="#">2 Days Ago</a></li>
						<li><a href="#"><span class="glyphicon glyphicon-comment"></span> 12 Comments</a></li>
						<li><a href ="flag.php"><span class="glyphicon glyphicon-flag"></span> Flag as inappropriate</a></li>
					</ul>
				</article>
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
