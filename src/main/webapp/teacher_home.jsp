<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
response.setHeader("Expires", "0");%>
<html>
<head>
</head>
<body>
<div><a href="logout.jsp">Logout</a></div><br>
<h3><a href="student_reg.jsp">Add Students></a></h3>
<h3><a href="internal_marks_choose_roll.jsp">Fill Internal marks</a></h3>
<h3><a href="allocateteacherschooseclass.jsp">Allocate teachers for a subject</a></h3>
<h3><a href="enter_daily_attendance_home.jsp">Enter daily attendance</a></h3>
<h3><a href="choose_copies.jsp">Check Copies</a></h3>
</body>
</html>