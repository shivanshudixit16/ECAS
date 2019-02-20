<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="database.DatabaseConnection,java.util.ArrayList,model.Subject"%>
 <%
 	ArrayList<Subject> subjects= new DatabaseConnection().getAllSubjects();
 	ArrayList<String> branches= new DatabaseConnection().getAllBranches();
 	ArrayList<String> courses= new DatabaseConnection().getAllCourses();
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="getsubjectsteacher">
Session
<input type="text"  name="session" value="<%=new DatabaseConnection().getCurrentSession()%>" readonly><br>
Course
<select name="course" recquired>
<%for(String cr:courses){%><option value="<%=cr%>"><%=cr%></option><%}%>
</select><br>
Branch
<select name="branch" recquired>
<%for(String br:branches){%><option value="<%=br%>"><%=br%></option><%}%>
</select><br>
Semester
<input type="text"  name="semester"  recquired><br>
<br>
<input type="submit">
</form>
</body>
</html>