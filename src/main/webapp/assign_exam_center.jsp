<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="assignexamcenter" method="post">
College<select name="college" required>
  <option value="" selected disabled hidden>Choose College</option>
  <option value="SRMS">SRMS</option>
  <option value="KIET">KIET</option>
  <option value="RKGIT">RKGIT</option>
  <option value="AKG">AKG</option>
  <option value="HBTI">HBTI</option>
</select><br>
Exam Center<select name="center" required>
  <option value=""selected disabled hidden>Choose College</option>
  <option value="SRMS">SRMS</option>
  <option value="KIET">KIET</option>
  <option value="RKGIT">RKGIT</option>
  <option value="AKG">AKG</option>
  <option value="HBTI">HBTI</option>
</select><br>
<input type="submit">
</form>
</body>
</html>