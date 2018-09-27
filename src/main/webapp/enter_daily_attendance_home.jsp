<%@page import="database.DatabaseConnection,java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%
 	ArrayList<String> branches= new DatabaseConnection().getAllBranches();
 	ArrayList<String> courses= new DatabaseConnection().getAllCourses();
 %>
    
 >

<%ArrayList<String> college=new DatabaseConnection().getAllCollege(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Attendance Portal
<br>
<form action="getrollforattendance">
Teacher Email <input type="text" name="temail" value="<%=session.getAttribute("tusername")%>" readonly><br>
College Name<input type="text" readonly name="clgname" value="<%=new DatabaseConnection().getCollegeNameOfTeacher((String)session.getAttribute("tusername")) %>"><br>
Course<select name="course" required>
  <option value="" selected disabled hidden>Choose Course</option>
<%for(String cr:courses){%><option value="<%=cr%>"><%=cr%></option><%}%>

</select><br>
Branch<select name="branch" required>
  <option value="" selected disabled hidden>Choose Branch</option>
  <%for(String br:branches){%><option value="<%=br%>"><%=br%></option><%}%>
</select><br>
Batch<input type="text" name="batch" required><br>
Semester<input type="text" name="semester" required>
<input type="submit" ><br>
<br>
</form>
</body>
</html>