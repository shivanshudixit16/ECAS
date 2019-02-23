<!doctype html>
<%@page import="database.DatabaseConnection,java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%
 	ArrayList<String> branches= new DatabaseConnection().getAllBranches();
 	ArrayList<String> courses= new DatabaseConnection().getAllCourses();
 	ArrayList<String> subjects= new DatabaseConnection().getTeacherSubjects((String)session.getAttribute("tusername"));
 %>
    
 >

<%ArrayList<String> college=new DatabaseConnection().getAllCollege(); %>						  
							   
		   
									
								   
																													 
   
	
  

									
																									  
<html>

<head>
	<title>Assign Daily Attendance</title>
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
	<link href="css/assign_subjects_session_style.css" rel="stylesheet" type='text/css' media="all" />
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
		<h1 class="title">Assign Daily Attendance</h1>
		<div class="left">
			<form action="getrollforattendance" method="post" data-toggle="validator">
			<div class="form-group">
					<label for="lastname" class="control-label">Teacher Email</label>
					<input type="email"  value="<%=session.getAttribute("tusername")%>" readonly class="form-control" id="lastname" placeholder="Enter Email" data-error="Enter email " required>
					<div class="help-block with-errors"></div>
			</div>
			<div class="form-group">
					<label for="lastname" class="control-label">College</label>
					<input type="text" readonly name="clgname" value="<%=new DatabaseConnection().getCollegeNameOfTeacher((String)session.getAttribute("tusername")) %>" class="form-control" id="lastname" placeholder="Enter Email" data-error="Enter email " required>
					<div class="help-block with-errors"></div>
			</div>
				
				<div class="form-group">
					<label for="lastname" class="control-label">Course</label>
					<select name="course" class="dropdown">
							<option value="" selected disabled hidden>Choose Course</option>
<%for(String cr:courses){%><option value="<%=cr%>"><%=cr%></option><%}%>

									
						</select>
					<div class="help-block with-errors"></div>
				</div>
				<div class="form-group">
					<label for="lastname" class="control-label">Branch</label>
					<select name="branch" class="dropdown">
					<option value="" selected disabled hidden>Choose Branch</option>
							<%for(String br:branches){%><option value="<%=br%>"><%=br%></option><%}%>
		
						</select>
					<div class="help-block with-errors"></div>
				</div>
				<div class="form-group">
					<label for="lastname" class="control-label">Batch</label>
					<input type="number" class="form-control" name="batch" id="lastname" placeholder="batch" data-error="Enter batch " required>
					<div class="help-block with-errors"></div>
				</div>
				
				<div class="form-group">
					<label for="lastname" class="control-label">semester</label>
					<input name="semester" type="number" class="form-control" id="lastname" placeholder="Semester" data-error="Enter semester " required>
					<div class="help-block with-errors"></div>
				</div>
				
				<div class="form-group">
					<label for="lastname" class="control-label">Subject</label>
					<select name="subcode" class="dropdown">
							<option value="" selected disabled hidden>Choose Subject</option>
<%for(String s:subjects){%><option value="<%=s%>"><%=s%></option><%}%>

									
						</select>
					<div class="help-block with-errors"></div>
				</div>
				
				
				<div class="form-group">
					<button type="submit" class="btn btn-lg">Submit</button>
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