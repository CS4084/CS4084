<?php 
  include('config.php');
  session_start();
  
  if ( $_SESSION['userId']=="") {
   header("Location: index.php");
   exit;
  }
  $errormsg = "";
  $error = false;
   
 if ($_SERVER['REQUEST_METHOD'] == 'POST'){
	 
	if(true || isset($_POST['title']) && isset($_POST['type']) && isset($_POST['description']) && isset($_POST['pagecount']) && isset($_POST['wordcount']) && isset($_POST['claimdeadline']) && isset($_POST['completiondeadline']) && isset($_FILES['taskfile']) && isset($_POST['discipline']))
	{
	  $todaydate =  date("Y-m-d");
	
	  $file_name = $_FILES['taskfile']['name'];
      $file_tmp =$_FILES['taskfile']['tmp_name'];
	  $title = mysqli_real_escape_string($db,$_POST['title']);
	  $type = mysqli_real_escape_string($db,$_POST['type']);
	  $description = mysqli_real_escape_string($db,$_POST['description']);
	  $pagecount = mysqli_real_escape_string($db,$_POST['pagecount']);
	  $wordcount = mysqli_real_escape_string($db,$_POST['wordcount']);
	  $claimdeadline = mysqli_real_escape_string($db,$_POST['claimdeadline']);
	  $completiondeadline = mysqli_real_escape_string($db,$_POST['completiondeadline']);
	  $discipline = mysqli_real_escape_string($db,$_POST['discipline']);
	  $userid = $_SESSION['userId'];
	  
	  
	  if(!is_numeric($_POST['wordcount']) || !is_numeric($_POST['pagecount']))
		  $error = true;
	  
	  
	  if($todaydate > $claimdeadline || $todaydate > $completiondeadline){
		  $errormsg .= "<br>Claim and completion deadlines must be after today.";
		  $error = true;
	    }
		
		
	  if ($claimdeadline > $completiondeadline){
	  	  $errormsg .= "<br>Claim deadline must be before the completion deadline.";
		  $error = true;
	    }
		
		$claimdate = date_parse($claimdeadline);
		$completiondate = date_parse($completiondeadline);
		
		if(($claimdate["error_count"] !== 0 && !checkdate($claimdate["month"], $claimdate["day"], $claimdate["year"]))
			 || ($completiondate["error_count"] !== 0 && !checkdate($completiondate["month"], $completiondate["day"], $completiondate["year"]))){
			$errormsg .= "<br>Invalid date.";
			$error = true;
		 }
		
	  
	  
	  if(!$error) {
	        $sql = "INSERT INTO task(userId, taskTitle, taskType, taskDesc, pageCount, wordCount, taskClaimDeadline, taskCompletionDeadline, taskSubject) VALUES('$userid', '$title', '$type', '$description', '$pagecount', '$wordcount', '$claimdeadline', '$completiondeadline', '$discipline')";
	        mysqli_query($db,$sql);
	        $taskId = mysqli_insert_id($db);
		    $filepath = "uploads/tasks/$taskId/$file_name";
		    $sql = "INSERT INTO file_paths VALUES('$taskId', '$filepath')";
		    mysqli_query($db,$sql);
		    mkdir("uploads/tasks/$taskId");
		    move_uploaded_file($file_tmp,$filepath);
	        header("Location: task.php?id=" . $taskId);
	  }
	}
	
	else
	  $error = true;	 
 }
  
  
  $errorbox = "<div class='alert alert-danger' role='alert'><span class='glyphicon glyphicon-warning-sign'></span>  Error: Please try again. $errormsg</div>";

?>


<!DOCTYPE html>
<!-- Template by Quackit.com -->
<html lang="en">
<head>
    <meta charset="utf-8">

    <title>Create a New Task - Proofreaders</title>

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
                    <li>
                        <a href="dashboard.html">Dashboard</a>
                    </li>
                    <li>
                        <a href="profile.html">My Profile</a>
                    </li>
                    <li>
                        <a href="claimedtasks.html">Claimed Tasks</a>
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
			<h3 class="panel-title">Create New Task</h3>
		  </div>
		  <div class="panel-body">
		  <?php if($error) {
						echo $errorbox;
					} ?>
 

		
			<form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="post" enctype="multipart/form-data">
					<div class="form-group">
						<input type="text" class="form-control" id="title" name="title" placeholder="Task title">
					</div>
					
					<div class="form-group">
						<input type="text" class="form-control" id="type" name="type" placeholder="Task Type (e.g. Thesis, Project)">
					</div>
					
					
					<div class="form-group">
						<textarea class="form-control" rows="8" id="description" name="description" placeholder="Task Description"></textarea>
					</div>
					<div class="form-group">
						<p>Task Subject:</p>
							<select class="form-control" name="discipline" id="discipline">
								<option value="Education and Health Sciences">Education and Health Sciences</option>
								<option value="Arts and Humanities">Arts and Humanities</option>
								<option value="Science and Engineering">Science and Engineering</option>
								<option value="Business">Business</option>
							</select>
						</div>
					<div class="form-group">
					
						<input type="number" class="form-control" id="pagecount" name="pagecount" placeholder="Page Count">
					</div>
					<div class="form-group">
					
						<input type="number" class="form-control" id="wordcount" name="wordcount" placeholder="Word Count">
					</div>
					
					<div class="form-group">
					<p>Task Claim Deadline (Task will be unpublished if not claimed by this date.)</p>
						<input type="date" class="form-control" id="claimdeadline" name="claimdeadline">
					</div>
					<div class="form-group">
					<p>Task Completetion Deadline</p>
						<input type="date" class="form-control" id="completiondeadline" name="completiondeadline">
						
					</div>
					<div class="form-group">
						<input type="file" name="taskfile" />
					</div>
					
					<button type="submit" class="btn btn-default">Create Task</button>
				</form>
			
			
			
			
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
