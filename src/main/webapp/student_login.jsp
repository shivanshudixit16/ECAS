<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
session=request.getSession(false);
if(session.getAttribute("ausername")!=null)
{
session.setAttribute("logged","admin");
 response.sendRedirect("index.jsp");
}
if(session.getAttribute("tusername")!=null)
{
session.setAttribute("logged","teacher");
response.sendRedirect("index.jsp");
}
if(session.getAttribute("susername")!=null)
{
response.sendRedirect("student_home.jsp");
}
 %>
 <%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
response.setHeader("Expires", "0");%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Responsive HTML Contact Form - reusable form</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.2/css/materialize.min.css">
        <link rel="stylesheet" href="form.css" >
       
    </head>
    <body >
        <div class="container">
            <div class="imagebg"></div>
            <div class="container">
                <div class="form-container z-depth-5">
                    <h3>Student Login</h3> 
                    <font color="red"><%  Object s=application.getAttribute("sfmsg");if(s!=null){out.write(s.toString());application.removeAttribute("sfmsg");}%></font>
                    <div class="row">
                        <form class="col s12" id="reused_form" action="student_home.jsp" method="post">
                            <div class="row">
                                <div class="input-field col s12">
                                    <input id="name" type="text" name="susername" required class="validate">
                                    <label for="name">User Name</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field col s12">
                                    <input id="email" type="password" name="spassword" required class="validate">
                                    <label for="email">password</label>
                                </div>
                            </div>
                            
                            <div>
                                <button class="waves-effect waves-light btn submitbtn" type="submit">Submit</button>
                            </div>
                        </form>
                        <div id="error_message" style="width:100%; height:100%; display:none; ">
                            <h4>
                                Error
                            </h4>
                            Sorry there was an error sending your form. 
                        </div>
                        <div id="success_message" style="width:100%; height:100%; display:none; ">
                            <h4>
                                Success! Your Message was Sent Successfully.
                            </h4>
                        </div>
                    </div>
                </div>
            </div>
            <!--Import jQuery before materialize.js-->
            <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.2/js/materialize.min.js"></script>
        </div>
    </body>
</html>