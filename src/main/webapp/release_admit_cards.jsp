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
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">			  
<html>

<head>
	<title>Release Admit Cards</title>
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
	<!-- fonts -->
	
	<!-- /fonts -->
	<!-- css -->
	<link href="css/bootstrap.css" rel="stylesheet" type='text/css' media="all" />
	<link href="css/release_admit_cards_style.css" rel="stylesheet" type='text/css' media="all" />
	<!-- /css -->
</head>



<body>
											  
									   
																   
																		  
			 
									 
																  
																		

	<div class="content-agileits">
		<h1 class="title">Release Admit Cards</h1>
		<div class="left">
			<form action="releaseadmitcard" method="post" data-toggle="validator">
				<div class="form-group">
					<label for="lastname" class="control-label">College</label>
					<select class="dropdown" name="college">
									<option value="" style="color:#000">Select College</option>
									 <%for(String co:college){%><option value="<%=co%>"><%=co%></option><%}%>
		
						</select>
					<div class="help-block with-errors"></div>
				</div>
				<div class="form-group">
					<label for="lastname" class="control-label">Select Course</label>
					<select class="dropdown" name="course">
									<option value="" style="color:#000">Select Course</option>
									<%for(String cr:courses){%><option value="<%=cr%>"><%=cr%></option><%}%>
									
						</select>
					<div class="help-block with-errors"></div>
				</div>
				
				<div class="form-group" name="branch">
					<label for="lastname" class="control-label">Select Branch</label>
					<select class="dropdown">
									<option value="" style="color:#000">Select Branch</option>
									 <%for(String br:branches){%><option value="<%=br%>"><%=br%></option><%}%>
		
						</select>
					<div class="help-block with-errors"></div>
				</div>
				<div class="form-group">
					<label for="lastname" class="control-label">Batch</label>
					<input type="number" class="form-control" id="lastname" placeholder="Batch" name="batch" data-error="Enter Batch " required>


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