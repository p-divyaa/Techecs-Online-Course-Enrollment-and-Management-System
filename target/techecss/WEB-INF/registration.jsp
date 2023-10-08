<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<!-- Created By CodingLab - www.codinglabweb.com -->
<html lang="en" dir="ltr">
<head>
<meta charset="UTF-8">
<!---<title> Responsive Registration Form | CodingLab </title>--->

<script type="text/javascript"
	src="/techecss/resources/js/registration.js"></script>
<link rel="stylesheet" href="/techecss/resources/css/registration.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<script>
	function validateForm() {
		let x = document.forms["frm"]["name"].value;
		if (x == "") {
			alert("Name must be filled out");
			document.getElementById("name").focus();
			return false;
		}
		let y = document.forms["frm"]["username"].value;
		if (y == "") {
			alert("username must be filled out");
			document.getElementById("username").focus();
			return false;
		}
		let z = document.forms["frm"]["email"].value;
		if (z == "") {
			alert("email must be filled out");
			document.getElementById("email").focus();
			return false;
		}
		let a = document.forms["frm"]["phoneno"].value;
		if (a == "") {
			alert("phoneno must be filled out");
			document.getElementById("phoneno").focus();
			return false;
		}
		let b = document.forms["frm"]["password"].value;
		if (b == "") {
			alert("password must be filled out");
			document.getElementById("password").focus();
			return false;
		}
	}
</script>



</head>
<body>
	<div class="container">
		<div class="title">Registration</div>
		<div class="content">
			${message}
			<form action="signup" method="get" name="frm"
				onsubmit="return validateForm()">
				<div class="user-details">
					<div class="input-box">
						<span class="details">Full Name</span> <input type="text"
							placeholder="Enter your name" name="name" id="name">
					</div>
					<div class="input-box">
						<span class="details">UserName</span> <input type="text"
							placeholder="Enter your username" name="username" id="username">
					</div>
					<div class="input-box">
						<span class="details">Email</span> <input type="text"
							placeholder="Enter your email" name="email" id="email">
					</div>
					<div class="input-box">
						<span class="details">Phone Number</span> <input type="text"
							placeholder="Enter your number" name="phoneno" id="phoneno">
					</div>
					<div class="input-box">
						<span class="details">Password</span> <input type="text"
							placeholder="Enter your password" name="password" id="password">
					</div>

				</div>
				<div class="gender-details">
					<input type="radio" name="gender" id="dot-1"> <input
						type="radio" name="gender" id="dot-2"> <input type="radio"
						name="gender" id="dot-3"> <span class="gender-title">Gender</span>
					<div class="category">
						<label for="dot-1"> <span class="dot one"></span> <span
							class="gender">Male</span>
						</label> <label for="dot-2"> <span class="dot two"></span> <span
							class="gender">Female</span>
						</label> <label for="dot-3"> <span class="dot three"></span> <span
							class="gender">Prefer not to say</span>
						</label>
					</div>
				</div>
				<div class="button">
					<input type="submit" value="Register">
				</div>
			</form>
		</div>
	</div>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>

	<script type="text\javascript"
		src="/techecss/resources/js/registration.js" />
</body>
</html>