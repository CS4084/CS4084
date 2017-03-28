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
	 
	
	 
	 //Error checking
	 if(empty(trim($_POST['title'])))
		 $errormsg .= "Please enter a title.<br>";
	 
	 if(empty(trim($_POST['type'])))
		 $errormsg .= "Please enter a task type.<br>";
	 
	 if(empty(trim($_POST['description'])))
		 $errormsg .= "Please enter a description.<br>";
	 
	 if(empty(trim($_POST['pagecount'])))
		 $errormsg .= "Please enter the page count.<br>";
	 
	 if(empty(trim($_POST['wordcount'])))
		 $errormsg .= "Please enter the word count.<br>";
	 
	 if(empty(trim($_POST['claimdeadline'])))
		 $errormsg .= "Please enter a claim deadline.<br>";
	 
	 if(empty(trim($_POST['completiondeadline'])))
		 $errormsg .= "Please enter a completion deadline.<br>";
	 
	 if(empty($_FILES['taskfile']['tmp_name']))
		 $errormsg .= "Please choose a task file to upload.<br>";
	 else {
		 //Check file format
		 $okExtensions = array('doc', 'docx', 'pdf', 'txt', 'odt', 'rtf');
		 $file_name = $_FILES['taskfile']['name'];
		 $nameparts = explode("." ,$file_name);
		 if( !in_array( strtolower( end($nameparts) ), $okExtensions) )
			$errormsg .= "Invalid file format <br>";
	 }
	 if(empty($_FILES['samplefile']['tmp_name']))
		 $errormsg .= "Please choose a sample file to upload.<br>";
	 else {
		 //Check file format
		 $okExtensions = array('doc', 'docx', 'pdf', 'txt', 'odt', 'rtf');
		 $samplefilename = $_FILES['samplefile']['name'];
		 $nameparts = explode("." ,$samplefilename);
		 if( !in_array( strtolower( end($nameparts) ), $okExtensions) )
			$errormsg .= "Invalid file format <br>";
	 }
	 
	 
	 if(empty(trim($_POST['discipline'])))
		 $errormsg .= "Please select a task subject.<br>";
	 
	 if(empty(trim($_POST['tags'])))
		 $errormsg .= "Please enter at least one tag.";
	 else{
		 $tags = mysqli_real_escape_string($db,$_POST['tags']);
		 $tagarray = explode(",", $tags); 
		 foreach ($tagarray as &$tag) {
				$tag = trim($tag); //remove spaces
			}
		 $tagarray = array_filter($tagarray);//array_filter removes empty entries from the array
		 
		 if(sizeof($tagarray) < 1)
			 $errormsg .= "Please enter at least one tag.";
		 else if(sizeof($tagarray) > 4)
			 $errormsg .= "Please enter at most 4 tags.";
	 }
	 
	 
	 
	 
	 
	 
	if($errormsg == "")//if no errors
	{
		
	  $todaydate =  date("Y-m-d");
      $file_tmp =$_FILES['taskfile']['tmp_name'];
	  $samplefiletmp = $_FILES['samplefile']['tmp_name'];
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
	        $sql = "INSERT INTO task(userId, taskTitle, taskType, taskDesc, pageCount, wordCount, taskClaimDeadline, taskCompletionDeadline, taskSubject, taskDate) VALUES('$userid', '$title', '$type', '$description', '$pagecount', '$wordcount', '$claimdeadline', '$completiondeadline', '$discipline', '$todaydate')";
	        mysqli_query($db,$sql);
	        $taskId = mysqli_insert_id($db);
		    $filepath = "uploads/tasks/$taskId/$file_name";
			$samplefilepath = "uploads/tasks/$taskId/sample/$samplefilename";
		    $sql = "INSERT INTO file_paths VALUES('$taskId', '$filepath', '$samplefilepath')";
		    mysqli_query($db,$sql);
		    mkdir("uploads/tasks/$taskId");
			mkdir("uploads/tasks/$taskId/sample");
			
		    move_uploaded_file($file_tmp,$filepath);
			move_uploaded_file($samplefiletmp,$samplefilepath);

			
			for($i = 0; $i < count($tagarray); $i++)
			{
				$tagarray[$i] = strtolower($tagarray[$i]);
				$sql = "SELECT tagId FROM tags WHERE tag = '$tagarray[$i]'";
				$result = mysqli_query($db,$sql);
				$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
				$count = mysqli_num_rows($result);
				
				if ($count == 0)
				{
					//If the tag is not already in the table, add it
					$sql = "INSERT INTO tags(tag) VALUES('$tagarray[$i]')";
					mysqli_query($db,$sql);
					$tagid = mysqli_insert_id($db);	
				}
				else{
					$tagid = $row['tagId'];
				}
					
				
				//Add the task tags to the DB
				$sql = "INSERT INTO task_tags(taskId, tagId) VALUES('$taskId','$tagid')";
				mysqli_query($db,$sql);
			}
			
			
			
			
			
	        header("Location: task.php?taskId=" . $taskId);
	  }
	}
	
	else
	  $error = true;	 
 }
  
  
  $errorbox = "<div class='alert alert-danger' role='alert'><span class='glyphicon glyphicon-warning-sign'></span>  Error: <br> $errormsg</div>";

?>


<!DOCTYPE html>
<!-- Template by Quackit.com -->
<html lang="en">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
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

			
	
		</div><!--/Left Column-->
  
  
		<!-- Center Column -->
		<div class="col-sm-6">
			
		<div class="panel panel-default">
		  <div class="panel-heading">
			<h3 class="panel-title"><span class="glyphicon glyphicon-plus"></span>  Create New Task</h3>
		  </div>
		  <div class="panel-body">
		  <?php if($error) {
						echo $errorbox;
					}

				?>
 

		
			<form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="post" enctype="multipart/form-data">
					<div class="form-group">
						<input type="text" class="form-control" id="title" name="title" placeholder="Task title" value="<?php echo isset($_POST['title']) ? htmlspecialchars($_POST['title']) : '' ?>">
					</div>
					
					<div class="form-group">
						<input type="text" class="form-control" id="type" name="type" placeholder="Task Type (e.g. Thesis, Project)" value="<?php echo isset($_POST['type']) ? htmlspecialchars($_POST['type']) : '' ?>">
					</div>
					
					
					<div class="form-group">
						<textarea class="form-control" rows="8" id="description" name="description" placeholder="Task Description"><?php echo isset($_POST['description']) ? htmlspecialchars($_POST['description']) : '' ?></textarea>
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
					
						<input type="number" class="form-control" id="pagecount" name="pagecount" placeholder="Page Count" value="<?php echo isset($_POST['pagecount']) ? htmlspecialchars($_POST['pagecount']) : '' ?>">
					</div>
					<div class="form-group">
					
						<input type="number" class="form-control" id="wordcount" name="wordcount" placeholder="Word Count" value="<?php echo isset($_POST['wordcount']) ? htmlspecialchars($_POST['wordcount']) : '' ?>">
					</div>
					
					<div class="form-group">
					<p>Task Claim Deadline (Task will be unpublished if not claimed by this date.)</p>
						<input type="date" class="form-control" id="claimdeadline" name="claimdeadline" value="<?php echo isset($_POST['claimdeadline']) ? htmlspecialchars($_POST['claimdeadline']) : '' ?>">
					</div>
					<div class="form-group">
					<p>Task Completetion Deadline</p>
						<input type="date" class="form-control" id="completiondeadline" name="completiondeadline" value="<?php echo isset($_POST['completiondeadline']) ? htmlspecialchars($_POST['completiondeadline']) : '' ?>">
						
					</div>
					<div class="form-group">
					<p>Enter tags for your task, seperated by commas: (Max 4 tags)
						<input type="text" class="form-control" id="tags" name="tags" placeholder="Tags" value="<?php echo isset($_POST['tags']) ? htmlspecialchars($_POST['tags']) : '' ?>">
					</div>
					<div class="form-group">
					<p>Accepted file formats: <kbd>.doc</kbd> <kbd>.docx</kbd> <kbd>.pdf</kbd> <kbd>.txt</kbd> <kbd>.odt</kbd> <kbd>.rtf</kbd>.</p>
					<p>Upload a <strong>sample</strong> of the document. This will be available for anyone to download.</p>
					<input type="file" name="samplefile" />
					</div>
					<br>
					<br>
					<div class="form-group">
						<p>Upload the <strong>full</strong> document here.</p>
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
