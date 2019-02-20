																			
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
session=request.getSession();
if(session.getAttribute("ausername")!=null)
{
 response.sendRedirect("admin_home.jsp");
}
if(session.getAttribute("tusername")!=null)
{
session.setAttribute("logged","teacher");
response.sendRedirect("index.jsp");
}
if(session.getAttribute("susername")!=null)
{
session.setAttribute("logged","student");
response.sendRedirect("index.jsp");
}
 %>
    <%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
response.setHeader("Expires", "0");
%>


<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <form action="admin_home.jsp">
																							  
  <title>Login_Form</title>
  
  
  
      <link rel="stylesheet" href="css/login_style.css">
 <script src='https://cdnjs.cloudflare.com/ajax/libs/animejs/2.2.0/anime.min.js'></script>
  
	
</head>

<body>

  <div class="page">
  <div class="container">
    <div class="left">
      <div class="login">Login</div>
																																										 
    </div>
																																								
    <div class="right">
      <svg >
        <defs>
          <linearGradient
                          inkscape:collect="always"
                          id="linearGradient"
                          x1="13"
                          y1="193.49992"
                          x2="307"
                          y2="193.49992"
                          gradientUnits="userSpaceOnUse">
            <stop
                  style="stop-color:#ff00ff;"
                  offset="0"
                  id="stop876" />
            <stop
                  style="stop-color:#ff0000;"
                  offset="1"
                  id="stop878" />
          </linearGradient>
        </defs>
        <path d="m 40,120.00016 239.99984,-3.2e-4 c 0,0 24.99263,0.79932 25.00016,35.00016 0.008,34.20084 -25.00016,35 -25.00016,35 h -239.99984 c 0,-0.0205 -25,4.01348 -25,38.5 0,34.48652 25,38.5 25,38.5 h 215 c 0,0 20,-0.99604 20,-25 0,-24.00396 -20,-25 -20,-25 h -190 c 0,0 -20,1.71033 -20,25 0,24.00396 20,25 20,25 h 168.57143" />

      </svg>
      <div class="form">
	 
        <label for="email">Email</label>
        <input type="text" id="email" name="ausername" >
        <label for="password">Password</label>
        <input type="password" id="password" name="apassword">
        <input type="submit" id="submit" value="Submit">
      </div>
    </div>
  </div>
</div>
</form>
 
 <script  src="js/index.js"></script>
 


 <script  src="js/extjs.js"></script>


</body>

</html>
