
<!DOCTYPE html>
<html>
   <body>
    <div> <a href="logout.jsp">Logout</a></div>
   
   <h3>Student Registration form</h3>
      <form action="student_regsubmit" method="post">
         Student Name:<br><input type="text" name="stdname" required><br><br>
         Course:<br><input type="text" name="course" required><br><br>
         Branch:<br><input type="text" name="branch" required><br><br>
         Batch:<br><input type="number" name="batch" required><br><br>
         College Name:<br> <input type="text" name="clgname" required><br><br>
         Student Email:<br> <input type="email" name="stdemail"><br><br>
         Student ContactNo:<br> <input type="number" name="stdcontact" required><br><br>
         <input type="submit" value="Submit">
      </form>
   </body>
</html>
