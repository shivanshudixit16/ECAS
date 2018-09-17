<%@page import="database.DatabaseConnection,java.util.ArrayList,model.Subject"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%ArrayList<Subject> subjects= new DatabaseConnection().getAllSubjects();%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h4>Set Exam Date And Time For Subjects</h4>
<form action="submit_exam_dates">
Session
<input type="text"  name="session" value="<%=new DatabaseConnection().getCurrentSession()%>" readonly><br>

Subject  
<select name="sub_code" recquired>

<%for(Subject sub:subjects){%><option value="<%=sub.subcode%>"><%=sub.subname%></option><%}%>
<br>
date
<input type="date" name="date" recquired>
time
<input type="time" name="time" recquired><select name="time2" recquired>
<option value="AM">AM</option>
<option value="PM">PM</option>
</select>
<br><input type="submit">
</form>
</select>
</body>
</html>