<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.util.ArrayList"
    pageEncoding="ISO-8859-1"%>
    <%ArrayList<String> rolls=(ArrayList<String>)session.getAttribute("rolls"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Enter Attendance</h1>
<form action="submitdailyattendamce">
<h5>Date<input type="date" recqired="" name="date"></h5>
<br>
Total Number Of Lectures Today <input type="text"  name="nol" recquired>
<table>
<tr>
<th>Roll. No.</th>
<th>No. Of Lectures Attended today</th>
</tr>
<%for(String r:rolls)
{%>
<tr>
<td><%=r %></td>
<td><input type="text" name="<%=r %>" recqired></td>
</tr>
<%} %>

</table>

<input type="submit">
</form>
</body>
</html>