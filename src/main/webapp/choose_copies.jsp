<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.ArrayList,database.DatabaseConnection"%>
    <%ArrayList<String> copies = new DatabaseConnection().getCopies((String)session.getAttribute("tusername"));%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="check_copies.jsp">
<%for(String c : copies){ %>
<input type="submit" value="<%=c %>" name="cc">
<br>
<%} %>
</form>
</body>
</html>