<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><!DOCTYPE html>
<%@page isELIgnored="false"%>
<html>
<head>
<meta charset="ISO-8859-1">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>Insert title here</title>
<%-- <link rel="stylesheet"
	href="<c:url value="/techecss/resources/img/course.css"/>"> --%>
<style>
body {
	/* background-color: #c4ffe1; */
	background-image: url("/techecss/resources/img/coursebackground.png");
	color: #2b2b2b;
	font-size: 100%;
}

h4 {
	text-align: center;
	color: white;
}

a:link {
	color: #0000ff;
}

a:visited {
	color: #0000a0;
}

a:hover {
	color: #0000ff;
}

a:active {
	color: #ff8000;
}

h1 {
	text-align: center;
}

li {
	padding: 5px;
	List-style: none;
	color: #ffffff;
}

@charset "ISO-8859-1";

.course_page {
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
</style>

</head>
<body>
	<div id="course_page">
		<h4>All Courses</h4>
		<ul>
			<c:forEach var="cours" items="${course}">
				<li><c:out value="${cours}">
					</c:out>
			</c:forEach>
			</li>
			<li><a href="coursedetails" target="main"> <input
					type="hidden" name="id" value="24">
				<button>Check Courses</button>
			</a></li>
			<!--<li><a href="c.html" target="main">Java</a></li>
			<li><a href="c.html" target="main">Python</a></li>
			<li><a href="c.html" target="main">Flutter</a></li> -->

		</ul>
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
</body>
</html>