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
	 $pwd2 = mysqli_real_escape_string($db,$_POST['pwd2']); 
	 $firstname = mysqli_real_escape_string($db, $_POST['firstname']);
	 $lastname = mysqli_real_escape_string($db, $_POST['lastname']);
	 $id = mysqli_real_escape_string($db, $_POST['id']);
	 $discipline= mysqli_real_escape_string($db,$_POST['discipline']);
	
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
		if ( !in_array($domain, $allowed))
		{
        $error = true;
		$errormsg .= "<br>Please enter valid UL email address";
		}
	} else {
		$error = true;
		$errormsg .= "<br>Please enter valid UL email address";
	}
	
	if(empty($discipline)){
		$error = true;
		$errormsg .="<br>Please choose a discipline.";
		
	}
	//studentID val
	if(empty($id)){
		$error=true;
		$errormsg .="<br>Please enter youur student ID.";
	}
	else if(strlen($id)!=8){
		$error=true;
		$errormsg .="<br>Student ID be 8 characters long.";
	}
	else if(!preg_match("/^(?:0|[1-9][0-9]*)$/",$id)){
		$error=true;
		$errormsg .="<br>Student ID may only contain numbers.";
	}
	// password validation
	if (empty($pwd)){
		$error = true;
		$errormsg .= "<br>Please enter password.";
	} else if(strlen($pwd) < 6) {
		$error = true;
		$errormsg .= "<br>Password must have atleast 6 characters.";
	}
	if($pwd != $pwd2)
	{
		$error = true;
		$errormsg .= "<br>Passwords must match.";
	}
	// password encrypt using SHA256();
	$password = hash('sha256', $pwd);
	if( !$error ) {
		$query = "INSERT INTO users(firstName,lastName,studentId,email,password,dateJoined) VALUES('$firstname','$lastname','$id','$email','$password','$todaydate')";
		mysqli_query($db,$query);
		$userId=mysqli_insert_id($db);
		
		$query=("INSERT INTO subject_streams(userId, subjectStream) VALUES ('$userId','$discipline')");
		mysqli_query($db,$query);
		if($query)
		{
			echo "<br>".$discipline."inserted";
		}

		

		header("location: index.php?success=1");
	}
} 
$errorbox = "<div class='alert alert-danger' role='alert'><span class='glyphicon glyphicon-warning-sign'></span>  Error: Please try again. $errormsg</div>";
?>

<html lang="en"><head>
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<link rel="icon" type="image/png" href="/favicon.png">

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
							<input type="text" class="form-control" id="email" name="email" placeholder="Email" value="<?php echo isset($_POST['email']) ? htmlspecialchars($_POST['email']) : '' ?>">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" id="firstname" name="firstname" placeholder="First Name" value="<?php echo isset($_POST['firstname']) ? htmlspecialchars($_POST['firstname']) : '' ?>">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" id="lastname" name="lastname" placeholder="Last Name" value="<?php echo isset($_POST['lastname']) ? htmlspecialchars($_POST['lastname']) : '' ?>">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" id="id" name="id" placeholder="Student/Staff ID" value="<?php echo isset($_POST['id']) ? htmlspecialchars($_POST['id']) : '' ?>">
						</div>
						<div class="form-group">
						<p>Select a discipline</p>
							<select class="form-control" name="discipline" id="discipline">
								<option value="">Select...</option>
								<option value="Education and Health Sciences">Education and Health Sciences</option>
								<option value="Arts and Humanities">Arts and Humanities</option>
								<option value="Science and Engineering">Science and Engineering</option>
								<option value="Business">Business</option>
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