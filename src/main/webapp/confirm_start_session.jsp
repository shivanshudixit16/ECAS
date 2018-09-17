<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="database.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
The Current Session is <%=new DatabaseConnection().getCurrentSession() %>
<br>
If you want to start new session click here <a href="start_session">Start New Session</a>(New Session only changes the current academic year semster should be seperately stated)<br>
</body>
</html>