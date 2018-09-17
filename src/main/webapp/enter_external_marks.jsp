<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="model.*,java.util.*"%>
    <%
    Student stud=(Student)request.getAttribute("student");
    ArrayList<Subject> subjects=(ArrayList<Subject>)request.getAttribute("subjects");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="submitexternalmarks">
Roll Number--<input type="text" name="roll_no" value="<%=stud.roll%>"  readonly><br>
Name---------<%=stud.name%><br>
course-------<%=stud.course%><br>
batch--------<%=stud.batch%><br>
clgname------<%=stud.clgname%><br>
semester-----<input type="text" name="semester" value="<%=stud.semester%>"  readonly><br>
<br>

<table cellspacing="0" rules="all" border="1" style="border-collapse:collapse;width: 100%;">
		<tbody><tr>
			<th scope="col">Subject Code</th><th scope="col">Subject Name</th><th>marks scored</th><th>Maximum marks</th>
		</tr>
		<%for(Subject sub:subjects)
		{%>
		<tr>
		<td><%=sub.subcode%></td><td><%=sub.subname%></td><td><input type="number" name="<%=sub.subcode%>"></td><td><%=sub.external_mm %></td>
		</tr>
		<%
		}
		%>
	</tbody></table>
	</td></tr></tbody></table><br>
	<input type="submit">
	</form>
	</body>
</html>