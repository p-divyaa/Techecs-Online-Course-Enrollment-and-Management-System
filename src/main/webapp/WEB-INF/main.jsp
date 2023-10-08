<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<!-- <meta http-equiv="refresh" content="10"> -->
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Simple HTML HomePage</title>
<!-- <link rel="stylesheet" href="css/style1.css"> -->
<style type="text/css">
* {
	box-sizing: border-box;
}

/* Style the header */
header {
	background-color: #666;
	padding: 30px;
	text-align: center;
	font-size: 35px;
	color: white;
}

/* Container for flexboxes */
section {
	display: -webkit-flex;
	display: flex;
}

/* Style the navigation menu */

/* Style the content */
aside {
	-webkit-flex: 3;
	-ms-flex: 3;
	flex: 3;
	background-color: #f1f1f1;
	padding: 10px;
}

/* Responsive layout - makes the menu and the content (inside the section) sit on top of each other instead of next to each other */
@media ( max-width : 600px) {
	section {
		-webkit-flex-direction: column;
		flex-direction: column;
	}
}

@import
	url("https://fonts.googleapis.com/css2?family=Sriracha&display=swap");

body {
	margin: 0;
	box-sizing: border-box;
}

/* CSS for header */
.header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	background-color: #f5f5f5;
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
	align-items: center;
	background-color: #f5f5f5;
	margin-right: 20px;
}

.nav-items a {
	text-decoration: none;
	color: #000;
	padding: 35px 20px;
}

/* CSS for main element */
.intro {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	width: 100%;
	height: 520px;
	background: linear-gradient(to bottom, rgba(0, 0, 0, 0.5) 0%,
		rgba(0, 0, 0, 0.5) 100%),
		url("https://images.unsplash.com/photo-1587620962725-abab7fe55159?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80");
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat;
}

.intro h1 {
	font-family: sans-serif;
	font-size: 60px;
	color: #fff;
	font-weight: bold;
	text-transform: uppercase;
	margin: 0;
}

.intro p {
	font-size: 20px;
	color: #d1d1d1;
	text-transform: uppercase;
	margin: 20px 0;
}

.intro button {
	background-color: #5edaf0;
	color: #000;
	padding: 10px 25px;
	border: none;
	border-radius: 5px;
	font-size: 20px;
	font-weight: bold;
	cursor: pointer;
	box-shadow: 0px 0px 20px rgba(255, 255, 255, 0.4)
}

.achievements {
	display: flex;
	justify-content: space-around;
	align-items: center;
	padding: 40px 80px;
}

.achievements .work {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	padding: 0 40px;
}

.achievements .work i {
	width: fit-content;
	font-size: 50px;
	color: #333333;
	border-radius: 50%;
	border: 2px solid #333333;
	padding: 12px;
}

.achievements .work .work-heading {
	font-size: 20px;
	color: #333333;
	text-transform: uppercase;
	margin: 10px 0;
}

.achievements .work .work-text {
	font-size: 15px;
	color: #585858;
	margin: 10px 0;
}

.about-me {
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 40px 80px;
	border-top: 2px solid #eeeeee;
}

.about-me img {
	width: 100px;
	max-width: 50%;
	height: auto;
	border-radius: 10px;
}

.about-me-text h2 {
	font-size: 30px;
	color: #333333;
	text-transform: uppercase;
	margin: 0;
}

.about-me-text p {
	font-size: 15px;
	color: #585858;
	margin: 10px 0;
}

/* CSS for footer */
.footer {
	display: flex;
	justify-content: space-between;
	align-items: center;
	background-color: #302f49;
	padding: 40px 80px;
}

.footer .copy {
	color: #fff;
}

.bottom-links {
	display: flex;
	justify-content: space-around;
	align-items: center;
	padding: 40px 0;
}

.bottom-links .links {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	padding: 0 40px;
}

.bottom-links .links span {
	font-size: 20px;
	color: #fff;
	text-transform: uppercase;
	margin: 10px 0;
}

.bottom-links .links a {
	text-decoration: none;
	color: #a1a1a1;
	padding: 10px 20px;
}
</style>

</head>

<body>

	<main>
		<div class="intro">
			<h1>A Web Developer</h1>
			<p>I am a web developer and I love to create websites.</p>
			<a href="index1.html"><button>Learn More..</button></a>
		</div>

		<div class="achievements">
			<div class="work">
				<i class="fas fa-atom"></i>
				<p class="work-heading">Projects</p>
				<p class="work-text">I have worked on many projects and I am
					very proud of them. I am a very good developer and I am always
					looking for new projects.</p>
			</div>
			<div class="work">
				<i class="fas fa-skiing"></i>
				<p class="work-heading">Skills</p>
				<p class="work-text">I have a lot of skills and I am very good
					at them. I am very good at programming and I am always looking for
					new skills.</p>
			</div>
			<div class="work">
				<i class="fas fa-ethernet"></i>
				<p class="work-heading">Network</p>
				<p class="work-text">I have a lot of network skills and I am
					very good at them. I am very good at networking and I am always
					looking for new network skills.</p>
			</div>
		</div>
		<div class="about-me">
			<div class="about-me-text">
				<h2>About Me</h2>
				<p>I am a web developer and I love to create websites. I am a
					very good developer and I am always looking for new projects. I am
					a very good developer and I am always looking for new projects.</p>
			</div>
			<img
				src="https://images.unsplash.com/photo-1596495578065-6e0763fa1178?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80"
				alt="me">
		</div>



	</main>

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