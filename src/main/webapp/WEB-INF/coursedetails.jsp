<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.*,com.techecs.beans.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Course Details</title>
<style type="text/css">
.styled-table {
	border-collapse: collapse;
	margin: 25px 0;
	font-size: 0.9em;
	font-family: sans-serif;
	min-width: 400px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}

.styled-table thead tr {
	background-color: #009879;
	color: #ffffff;
	text-align: left;
}

.styled-table th, .styled-table td {
	padding: 12px 15px;
}

.styled-table tbody tr {
	border-bottom: 1px solid #dddddd;
}

.styled-table tbody tr:nth-of-type(even) {
	background-color: #f3f3f3;
}

.styled-table tbody tr:last-of-type {
	border-bottom: 2px solid #009879;
}

.styled-table tbody tr.active-row {
	font-weight: bold;
	color: #009879;
}
</style>

</head>
<body>

	<h2>${message}</h2>
	<table class="styled-table">


		<tr>
			<th>Course</th>
			<th>Course Id</th>
			<th>About Course</th>
			<th>Click to Enroll</th>
		</tr>
		<%!int i = 0;
	Courses cou = null;%>
		<c:forEach var="cours" items="${coursetext}">
			<tr>
				<td><c:out value="${cours.getCourse()}"></c:out></td>
				<td><c:out value="${cours.getCourseid()}"></c:out></td>
				<td><c:out value="${cours.getAboutcourse()}"></c:out></td>
				<td><c:out value="${cours.getAmount()}"></c:out></td>
			</tr>
		</c:forEach>

	</table>

	<form action="clicked">
		<label for="courseid">Enroll Courses</label><br> <input
			type="text" name="courseid" id="courseid"
			placeholder="Enter your Courseid"></input> <br>
		<label for="amount">Enter Amount</label><br> <input type="text"
			name="amount" id="amount" placeholder="Enter Amount"></input> <input
			type="submit" value="submit">
	</form>

</body>
</html>