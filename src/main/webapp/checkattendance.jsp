<%@page import="database.DatabaseConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%String dailyattend[]=null,date=null;
    DatabaseConnection db=new DatabaseConnection();
    String tattend[]=db.getTotalClassesAttendedByARollAndTotalClass(db.getRoll((String)session.getAttribute("susername")));
    if(tattend==null)
    {
    	out.write("no record for this roll_no");
    			return;
    }
    try{
     dailyattend=(String[])request.getAttribute("dailyattend");
     date=(String)request.getAttribute("date");
    }
    catch(Exception e)
    {}
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Attendance</h1><br>
Total Attendance=<%=tattend[1]+"/"+tattend[0] %><br>
<%
if(date!=null)
{
    if(dailyattend==null)
    {
    	out.println("\nyour atendance for "+date+"is not updated yet"+"\n");
    }
    else
    {
    	out.println("\nyour atendance for "+date+"is"+dailyattend[1]+"/"+dailyattend[0]+"\n");
    }
}

%>
<br>To Check date wise<br>
Choose date
<form action="fetchattendancedatewise">
<input type="date" name="date"><br>
<input type="submit">
</form>
</body>
</html>