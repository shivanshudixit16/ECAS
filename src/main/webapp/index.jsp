<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body>
<%if(session.getAttribute("logged")!=null) {
	out.println("<script>alert(\"you are already loged in as a "+session.getAttribute("logged")+"\");</script>");
	session.removeAttribute("logged");
}
%>
<%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
response.setHeader("Expires", "0");%>
<div class="topnav">
  <a href="teacher_login.jsp">Teacher Login</a>
  <a href="admin_login.jsp">Admin Login</a>
  <a href="student_login.jsp">Student Login</a>
  
</div>
<p><a href="admit_form.jsp">View Admitcard</a></p>
<p><a href="exam_result_form.jsp">View Marksheet</a></p>

</body>
</html>
