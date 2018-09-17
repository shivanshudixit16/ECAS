<%@page import="database.DatabaseConnection,java.util.ArrayList"%>
<%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
response.setHeader("Expires", "0");%>
<%
	ArrayList<String> college=new DatabaseConnection().getAllCollege(); 
 	ArrayList<String> branches= new DatabaseConnection().getAllBranches();
 	ArrayList<String> courses= new DatabaseConnection().getAllCourses();
 %>
<!DOCTYPE html>
<html>
   <body>
    <div> <a href="logout.jsp">Logout</a></div>
   
   <h3>Student Registration form</h3>
      <form action="student_regsubmit" method="post" enctype="multipart/form-data">
         Student Name:<br><input type="text" name="stdname" required><br><br>
         Father's Name:<br><input type="text" name="fathername" required><br><br>
         Gender:<input type="radio" name="gender" value="male" checked> Male  
  		<input type="radio" name="gender" value="female"> Female<br><br>
         Date Of Birth<br><input type="date" name="dob" required><br><br>
        
        College<select name="clgname" required>
  			 <%for(String co:college){%><option value="<%=co%>"><%=co%></option><%}%>
		</select><br><br>
		Course<select name="course" required>
  			  <option value="" selected disabled hidden>Choose Course</option>
			 <%for(String cr:courses){%><option value="<%=cr%>"><%=cr%></option><%}%>
			</select><br><br>
		Branch<select name="branch" required>
			 <%for(String br:branches){%><option value="<%=br%>"><%=br%></option><%}%>
 		 </select><br><br>
 		 Batch<input type="text" name="batch" value="<%=new DatabaseConnection().getCurrentSession() %>" readonly><br><br>
         Student Email:<br> <input type="email" name="stdemail" required><br><br>
         Student ContactNo:<br> <input type="number" name="stdcontact" required><br><br>
         Upload Your Photo  <input type="file" name="photo" accept="image/*" > <br>
         <input type="submit" value="Submit">
      </form>
   </body>
</html>
