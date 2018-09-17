<%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
response.setHeader("Expires", "0");%>
<%@page import="database.DatabaseConnection,java.util.ArrayList"%>
<%ArrayList<String> college=new DatabaseConnection().getAllCollege(); %>
<!DOCTYPE html>
<html>
   <body>
   <div><a href="logout.jsp">Logout</a></div><br>
   <h3>Teacher Registration form</h3>
      <form action="teacher_regsubmit" method ="post">
         Teacher Name:<br><input type="text" name="tname">
         <br><br>
         Teacher Email:<br> <input type="text" name="temail">
         <br><br>
		  Teacher ContactNo:<br> <input type="text" name="tno">
         <br><br>
		  College<select name="tcname" required>
  				<option value="" selected disabled hidden>Choose College</option>
 				<%for(String co:college){%><option value="<%=co%>"><%=co%></option><%}%>
		</select>
		<br>
         <br><br>
         <input type="submit" value="Submit">
      </form>
   </body>
</html>
