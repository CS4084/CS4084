<?php
 ob_start();
 include('config.php');
 session_start();
 
 
 // it will never let you open index(login) page if session is set
 if ( isset($_SESSION['userId'])!="" ) {
  header("Location: dashboard.php");
  exit;
 }
 $error = false;
 if ($_SERVER['REQUEST_METHOD'] == 'POST'){
 
 $errorbox = "<div class='alert alert-danger' role='alert'><span class='glyphicon glyphicon-warning-sign'></span>  Invalid email or password.</div>";
 
 echo $_POST['email'];
 echo $_POST['password'];
 if (isset($_POST['email']) && isset($_POST['password']))
 {
	$email = $_POST['email'];
	$password = $_POST['password'];
	
	if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
		$error = true;
		
	}
	
	if(!$error)
	{
      $myemail = mysqli_real_escape_string($db,$email);
      $mypassword = mysqli_real_escape_string($db,$password); 
      
      $sql = "SELECT userId FROM students WHERE email = '$myemail' and password = '$mypassword'";
      $result = mysqli_query($db,$sql);

      $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
      
      
      $count = mysqli_num_rows($result);
      
      // If result matched $myusername and $mypassword, table row must be 1 row
		
      if($count == 1) {
        
         $_SESSION['userId'] = $result;
         
         header("location: dashboard.php");
      }else {
         $error = true;
      }
   
	}
 }
 
 else {
	 $error = true;

 }
 }
 ?>



<html lang="en"><head>
    <meta charset="utf-8">


    <title>Login - Proofreaders</title>

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
                <a class="navbar-brand" href="index.html"><span class="glyphicon glyphicon-education"></span> Proofreaders</a>
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
						Log In
					</h3>
				</div>
				<div class="panel-body">
					<?php if($error) {
						echo $errorbox;
					} ?>
					<form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="post">
						<div class="form-group">
							<input type="text" class="form-control" id="email" name="email" placeholder="Email">
						</div>
						<div class="form-group">
							<input type="password" class="form-control" id="password" name="password" placeholder="Password">
						</div>
						<button type="submit" class="btn btn-default">Log In</button>
					</form>
					<div class="register">
						<a href="register.html">Not a member? Click here to register now.</a>
					</div>
				</div>
			</div>
			
			<div class="row">
				<article class="col-xs-12">
					<h2>What is proofreaders?</h2>
					<p>Proofreaders is a crowd sourced proofreading community. Submit your academic work for proofreading by your peers, and proofread others' work. Register today and become part of our growing community.</p>
					
				</article>
			</div>
 
			
			

			 
 			
			

	  </div>

	</div><!--/container-fluid-->
	