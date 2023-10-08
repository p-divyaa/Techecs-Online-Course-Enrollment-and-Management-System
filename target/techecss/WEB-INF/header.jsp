
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="css/header.css"> -->
<style type="text/css">
@charset "ISO-8859-1";

.header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	background-color: #191970;
}

.header .logo {
	font-size: 25px;
	font-family: "Sriracha", cursive;
	color: #000;
	text-decoration: none;
	margin-left: 30px;
}

.nav-items {
	display: flex;
	justify-content: space-around;
	align-items: flex-end;
	/* background-color: #89CFF0; */
	margin-right: 20px;
}

.nav-items a {
	text-decoration: none;
	color: #000;
	align-items: flex-end;
	padding: 35px 20px;
}


</style>
</head>
<body>
	<header class="header">
		<img alt="Logo Not Available"
			src="/techecss/resources/img/sitelogo.jpg" width="160" height="90">
		<a href="index.html" target="main" class="logo"><strong>TECHECS</strong></a>
		<nav class="nav-items">
			<a target="main" href="main"><button class ="button-85 ">Home</button></a> <a
				href="login" target="main"><button class ="button-85 ">Login/Logout</button></a> <a
				target="main" href="registration" class ="button-85 "><button>SignUp</button></a>

		</nav>
	</header>
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
</body>
</html>