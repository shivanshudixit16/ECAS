<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
	response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
	response.setHeader("Expires", "0");
%>

<html>
<head>
</head>
<body>
	<div>
		<a href="logout.jsp">Logout</a>
	</div>
	<br>
	<h3>
		<a href="examform">Fill Exam form</a><br>
		<a href="checkattendance.jsp">Check Attendance</a>
	</h3>
	<br>
</body>
</html>