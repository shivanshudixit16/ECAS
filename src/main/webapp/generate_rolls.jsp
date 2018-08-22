<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
response.setHeader("Expires", "0");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="genroll" method="post">
College<select name="college" required>
  <option value="" selected disabled hidden>Choose College</option>
  <option value="SRMS">SRMS</option>
  <option value="KIET">KIET</option>
  <option value="RKGIT">RKGIT</option>
  <option value="AKG">AKG</option>
  <option value="HBTI">HBTI</option>
</select><br>
Course<select name="course" required>
  <option value="" selected disabled hidden>Choose Course</option>
  <option value="B.Tech.">B.Tech.</option>
  <option value="M.Tech.">M.Tech.</option>
</select><br>
Branch<select name="branch" required>
  <option value="" selected disabled hidden>Choose Branch</option>
  <option value="CSE">CSE</option>
  <option value="IT">IT</option>
  <option value="EC">EC</option>
  <option value="EN">EN</option>
  <option value="CIVIL">CIVIL</option>
</select><br>
Batch<input type="text" name="batch" required>
<input type="submit">
</form>
</body>
</html>