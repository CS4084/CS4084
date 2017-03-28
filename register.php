<?php
//ob_start();
session_start();
 include('config.php');
 
 if ( isset($_SESSION['userId'])!="" ) {
  header("Location: dashboard.php");
  exit;
 }
$errormsg = "";
$error = false;

 if ($_SERVER['REQUEST_METHOD'] == 'POST'){
	 
	 $todaydate =  date("Y-m-d");
	// clean user inputs to prevent sql injections
	 $email = mysqli_real_escape_string($db,$_POST['email']);
	 $email = trim($_POST['email']);
     $pwd = mysqli_real_escape_string($db,$_POST['pwd']); 
	 $firstname = mysqli_real_escape_string($db, $_POST['firstname']);
	 $lastname = mysqli_real_escape_string($db, $_POST['lastname']);
	 $id = mysqli_real_escape_string($db, $_POST['id']);
	
	// email validation, strips the email down to the last part and matches it against the allowed emails.
	
	 $allowed=array('ul.ie', 'studentmail.ul.ie');
	 
	if (filter_var($email,FILTER_VALIDATE_EMAIL)) {
		$explodedEmail = explode('@', $email);
		$domain = array_pop($explodedEmail);
		$sql = "SELECT email FROM users WHERE email='$email'";
		$result = mysqli_query($db,$sql)
		or die("Error: ".mysqli_error($db));
		$row = mysqli_fetch_array($result,MYSQLI_ASSOC);
		$count = mysqli_num_rows($result);
      
		// If result matched table row must be 1 row
		
		if($count > 0) {
         $error = true;
		}
		if ( ! in_array($domain, $allowed))
		{
        $error = true;
		$errormsg .= "Please enter valid UL email address";
		}
	} else {
		echo 'doot doot';
	}
	
	//studentID val
	if(empty($id)){
		$error=true;
		$errormsg .="Please enter youur student ID.";
	}
	else if(strlen($id)!=8){
		$error=true;
		$errormsg .="Student ID be 8 characters long.";
	}
	else if(!preg_match("/^(?:0|[1-9][0-9]*)$/",$id)){
		$error=true;
		$errormsg .="Student ID may only contain numbers.";
	}
	// password validation
	if (empty($pwd)){
		$error = true;
		$errormsg .= "Please enter password.";
	} else if(strlen($pwd) < 6) {
		$error = true;
		$errormsg .= "Password must have atleast 6 characters.";
	}
	// password encrypt using SHA256();
	$password = hash('sha256', $pwd);
	if( !$error ) {
		$query = "INSERT INTO users(firstName,lastName,studentId,email,password,dateJoined) VALUES('$firstname','$lastname','$id','$email','$password','$todaydate')";
		mysqli_query($db,$query);
		$userId=mysqli_insert_id($db);
		if(isset($_GET['discipline']))
		{
			$discipline=$_GET['discipline'];
			$query=("INSERT INTO subject_streams(userId, subjectStream) VALUES ('$userId','$discipline')");
			mysqli_query($db,$query);
			if($query)
			{
				echo "<br>".$discipline."inserted";
			}

		}

		header("location: index.php?success=1");
	}
} 
$errorbox = "<div class='alert alert-danger' role='alert'><span class='glyphicon glyphicon-warning-sign'></span>  Error: Please try again. $errormsg</div>";
?>

<html lang="en"><head>
    <meta charset="utf-8">


    <title>Register - Proofreaders</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS: You can use this stylesheet to override any Bootstrap styles and/or apply your own styles -->
    <link href="css/custom.css" rel="stylesheet">


</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-static-top" role="navigation">
        <div class="container">
            <!-- Logo-->
            <div class="navbar-header">
                <a class="navbar-brand" href="index.php"><span class="glyphicon glyphicon-education"></span> Proofreaders</a>
            </div>
        </div>
        <!-- /.container -->
    </nav>

<div class="container-fluid">

	
	  <div class="col-center">

			<!-- Form --> 
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">
						<span class="glyphicon glyphicon-log-in"></span> 
						Register an account
					</h3>
				</div>
				<div class="panel-body">
				<?php
				if($error){
					echo($errorbox);
				}
				?>
					<form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="post">
						<div class="form-group">
							<input type="text" class="form-control" id="email" name="email" placeholder="Email">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" id="firstname" name="firstname" placeholder="First Name">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" id="lastname" name="lastname" placeholder="Last Name">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" id="id" name="id" placeholder="Student/Staff ID">
						</div>
						<div class="form-group">
						<p>Select a discipline</p>
							<select class="form-control" name="discipline" id="discipline">
								<option value="">Select...</option>
								<option value="1">Education and Health Sciences</option>
								<option value="2">Arts and Humanities</option>
								<option value="3">Science and Engineering</option>
								<option value="4">Business</option>
							</select>
						</div>			
						<div class="form-group">
							<input type="password" class="form-control" id="pwd" name="pwd" placeholder="Password">
						</div>
						<div class="form-group">
							<input type="password" class="form-control" id="pwd2" name="pwd2" placeholder="Re-enter Password">
						</div>
						<button type="submit" class="btn btn-default">Register</button>
					</form>
					
				</div>
			</div>
			
	  </div>

	</div><!--/container-fluid-->
	</body>
</html>