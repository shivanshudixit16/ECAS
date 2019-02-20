<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.ArrayList,database.DatabaseConnection"%>
    <%ArrayList<String> teachers=(ArrayList<String>)request.getAttribute("teachers");
    ArrayList<String> subjects=(ArrayList<String>)session.getAttribute("subjects");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h3>Assign Teachers</h3>
<form action ="submitteacherssubjects">
<table border="1">
<tr> <th>Subject</th><th>Teacher</th></tr>
<%  for(String s:subjects)
{%>
<tr><td><%=s %></td>
<td> <select name="t<%=s%>" required>
 <option value="" selected disabled hidden >Choose teacher</option>
<%for(String tr:teachers){
String tra[]=tr.split(",");%><option value="<%=tra[0]%>" title="<%=tra[0]%>"><%=tra[1]%></option><%}%>
</select></td></tr>
<%}%>
</table>
<input type="submit">
</form>
</body>
</html>