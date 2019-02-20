<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1" import="java.util.ArrayList"%>
    <%
    String roll=(String)request.getAttribute("roll_no");
   ArrayList<String> subjects=(ArrayList<String>)request.getAttribute("subjects");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Assign answersheet to students</h2>
<%if(roll==null){ %>
<form action="fetchsubjectsforanswersheet">
Roll. No.<input type="text"  required name="roll_no"><br>
<input type ="submit" value="fetchsubjects">
</form>
<%} else{%>
<form action="submitassignedanswersheet">
Roll. No.<input type="text" value="<%=roll %>" readonly name="roll_no"><br>
Copy No. <input type="text" required name="copy_no"><br>
<select name="subcode" required>
<option value="" selected disabled hidden >Choose subject</option>
<%for(String tr:subjects){
%><option value="<%=tr%>" ><%=tr%></option><%}%>
</select></td></tr>
<input type ="submit" value="submit">
</form>
<%} %>
</body>
</html>