<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
  <%@page import="database.DatabaseConnection,java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%
 	ArrayList<String> branches= new DatabaseConnection().getAllBranches();
 	ArrayList<String> courses= new DatabaseConnection().getAllCourses();
 %>
    
     <%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
response.setHeader("Expires", "0");%>

<%ArrayList<String> college=new DatabaseConnection().getAllCollege(); %>

	
																							   
													  
									 

									
																											  
<html>

<head>
	<title>Genrate Roll No.</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Student Registration Form Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"
	/>
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- back -->
	<script>
	function goBack() {
		window.history.back()
	}
</script>
	<!-- /back -->
	<!-- css -->
	<link href="css/bootstrap.css" rel="stylesheet" type='text/css' media="all" />
	<link href="css/generate_roll_style.css" rel="stylesheet" type='text/css' media="all" />
	<!-- /css -->
	<style>
		.back{
				margin-top: 10px;
    margin-left: 1220px;
	}
	button{
	background-color:#0c2149;
	color:#ffffff;
	width:100px;
	height:30px;
	
		}
		button:hover{
		background-color:green;
		}
	</style>
	
	
</head>



<body>
	<div class="back"><button onclick="goBack()">Go Back</button></div>			
	<div class="content-agileits">
		<h1 class="title">Generate Roll Number</h1>
		<div class="left">
			<form action="genroll" method="post" data-toggle="validator">
			<div class="form-group">
					<label for="firstname" class="control-label">Batch</label>
					<input type="text" id="firstname" class="form-control" placeholder="Batch" data-error="Enter Your Batch" required>
					<div class="help-block with-errors"></div>
				</div>

				<div class="form-group">
					<label for="lastname" class="control-label">College</label>
					<select class="dropdown">
									  <%for(String co:college){%><option style="color:#000" value="<%=co%>"><%=co%></option><%}%>
									
		
						</select>
					<div class="help-block with-errors"></div>
				</div>
				<div class="form-group">
					<label for="lastname" class="control-label">Select Course</label>
					<select class="dropdown">
									<option value="" style="color:#000">Select Course</option>
									<%for(String cr:courses){%><option style="color:#000" value="<%=cr%>"><%=cr%></option><%}%>
						</select>
					<div class="help-block with-errors"></div>
				</div>
				
				<div class="form-group">
					<label for="lastname" class="control-label">Select Branch</label>
					<select class="dropdown" id="firstname">
									<option value="" style="color:#000">Select Branch</option>
									 <%for(String br:branches){%><option  style="color:#000" value="<%=br%>"><%=br%></option><%}%>
		
						</select>
					<div class="help-block with-errors"></div>
				</div>
				

				<div class="form-group">
					<button type="submit" class="btn btn-lg">submit</button>
				</div>
				
			</form>
			
		</div>
		
		<div class="right"></div>
		<div class="clear"></div>
	</div>
	<p class="copyright-w3ls">Made with<span style="font-size:150%;color:red;"> &hearts;</span></p>
	<!-- js -->
	<script src="js/jquery-2.1.4.min.js"></script>
	<!-- //js -->

	<script src="js/bootstrap.min.js"></script>
	<script src="js/validator.min.js"></script>
	<!-- /js files -->
</body>

</html>