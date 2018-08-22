<%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
response.setHeader("Expires", "0");%>
<!DOCTYPE html>
<html>
   <body>
    <div> <a href="logout.jsp">Logout</a></div>
   
   <h3>Student Registration form</h3>
      <form action="student_regsubmit" method="post" enctype="multipart/form-data">
         Student Name:<br><input type="text" name="stdname" required><br><br>
         Father's Name:<br><input type="text" name="fathername" required><br><br>
         Date Of Birth<br><input type="date" name="dob" required><br><br>
        
        College<select name="clgname" required>
  			  <option value="" selected disabled hidden>Choose College</option>
			  <option value="SRMS">SRMS</option>
			  <option value="KIET">KIET</option>
			  <option value="RKGIT">RKGIT</option>
			  <option value="AKG">AKG</option>
			  <option value="HBTI">HBTI</option>
		</select><br><br>
		Course<select name="course" required>
  			  <option value="" selected disabled hidden>Choose Course</option>
			  <option value="B.Tech.">B.Tech.</option>
			  <option value="M.Tech.">M.Tech.</option>
			</select><br><br>
		Branch<select name="branch" required>
			  <option value="" selected disabled hidden>Choose Branch</option>
			  <option value="CSE">CSE</option>
			  <option value="IT">IT</option>
			  <option value="EC">EC</option>
			  <option value="EN">EN</option>
			  <option value="CIVIL">CIVIL</option>
 		 </select><br><br>
 		 Batch<input type="text" name="batch" required><br><br>
         Student Email:<br> <input type="email" name="stdemail" required><br><br>
         Student ContactNo:<br> <input type="number" name="stdcontact" required><br><br>
         Upload Your Photo  <input type="file" name="photo" accept="image/*" > <br>
         <input type="submit" value="Submit">
      </form>
   </body>
</html>
