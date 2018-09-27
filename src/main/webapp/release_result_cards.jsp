<%@page import="database.DatabaseConnection,java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%
 	ArrayList<String> branches= new DatabaseConnection().getAllBranches();
 	ArrayList<String> courses= new DatabaseConnection().getAllCourses();
 %>
    
     <%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
response.setHeader("Expires", "0");%>

<%ArrayList<String> college=new DatabaseConnection().getAllCollege(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
response.setHeader("Expires", "0");
%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="releaseresultcard" method="post">
College<select name="college" required>
  <option value="" selected disabled hidden>Choose College</option>
  <%for(String co:college){%><option value="<%=co%>"><%=co%></option><%}%>
</select><br>
Course<select name="course" required>
  <option value="" selected disabled hidden>Choose Course</option>
<%for(String cr:courses){%><option value="<%=cr%>"><%=cr%></option><%}%>

</select><br>
Branch<select name="branch" required>
  <option value="" selected disabled hidden>Choose Branch</option>
  <%for(String br:branches){%><option value="<%=br%>"><%=br%></option><%}%>
</select><br>
Batch<input type="number" name="batch" required><br>
Semester<input type="number" name="semester" required>
<input type="submit">
</form>
</body>
</html>