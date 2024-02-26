<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');

if(isset($_POST['login']))
  {
    $countryEmail=$_POST['email'];
    $password=$_POST['password'];
    $query=mysqli_query($con,"select ID from country where  email='$countryEmail' && password='$password' ");
    $ret=mysqli_fetch_array($query);
    if($ret>0){
      $_SESSION['vpmsaid']=$ret['ID'];
     header('location:dashboard.php');
    }
    else{
  
     echo "<script>alert('Invalid Details.');</script>";
    }
  }
  ?>
  <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,800">
	<link rel="icon" href="img.png" type="image/png">
    <title>AfMAR</title>
</head>

<body>
    <div class="container" id="container">
        <div class="form-container sign-in-container">
            <form method="post" onsubmit="return validateForm()">
				<h1>Sign in</h1>
				<input type="email" id="email" placeholder="Email" name="email" required/>
				<input type="password" id="password" placeholder="Password" name="password"required/>
				<a href="#">Forgot your password?</a>
				<button type="submit" id="btn" name="login">
					<p id="btnText">SUBMIT</p>
					<div class="check-box">
						<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50">
							<path fill="transparent" d="M14.1 27.2l7.1 7.2 16.7-16.8" />
						</svg>
					</div>
				</button>
			</form>
        </div>
        <div class="overlay-container">
            <div class="overlay">
                <div class="screen__background">
                    <video autoplay loop muted playsinline class="resizable-video">
                        <source src="vid.mp4" type="video/mp4">
                    </video>
                </div>
                <div class="overlay-panel overlay-right">
                    <h1 style="color: rgb(42, 173, 129); font-size: 70px;">AfMAR</h1>
                    <p style="font-size: 17px;">Monitoring, Reporting and Learning through tracking progress</p>
                </div>
            </div>
        </div>
    </div>

	<script>
		function validateForm() {
			var email = document.getElementById('email').value;
			var password = document.getElementById('password').value;
	
			// Validation de l'e-mail
			if (!validateEmail(email)) {
				alert('Veuillez saisir une adresse e-mail valide.');
				return false;
			}
	
			const btn = document.querySelector("#btn");
			const btnText = document.querySelector("#btnText");

			btn.onclick = () => {
				btnText.innerHTML = "Submitted";
				btn.classList.add("active");
        };
		}
	
		function validateEmail(email) {
			// Expression régulière simple pour la validation de l'e-mail
			var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
			return emailRegex.test(email);
		}
	</script>
	
</body>

</html>
