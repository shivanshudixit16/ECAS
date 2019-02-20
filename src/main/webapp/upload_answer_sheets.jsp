<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

  <form action="submitcopyimages" method="post" enctype="multipart/form-data">
        Copy Number<input type="text" name="copy_no" required><br>
        <%for(int i=1;i<=30;i++){ %>
Image of page <%=i%> <input type="file" name="photo<%=i%>" accept="image/*" ><br>
<%} %>
   
         <input type="submit" value="Submit">
      </form>
</form>
</body>
</html>