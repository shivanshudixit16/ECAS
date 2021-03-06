<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
    pageEncoding="ISO-8859-1" import="java.util.ArrayList"%>
    <%
    String roll=(String)request.getAttribute("roll_no");
   ArrayList<String> subjects=(ArrayList<String>)request.getAttribute("subjects");
    %>
<!doctype html>
<html>

<head>
	<title>Assign Answer Sheets</title>
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
		<h1 class="title">Assign Answer Sheets To Students</h1>
		<%if(roll==null){ %>
		
<div class="left">
			<form action="fetchsubjectsforanswersheet" method="post" data-toggle="validator">
			<div class="form-group">
					<label for="firstname" class="control-label">Roll Number</label>
					<input type="number" name="roll_no" id="firstname" class="form-control" placeholder="Enter Roll Number" data-error="Enter Roll Number" required>
					<div class="help-block with-errors"></div>
				</div>
				
			
				

				<div class="form-group">
					<button type="submit" class="btn btn-lg">submit</button>
				</div>
				
			</form>
			
		</div>
<%} else{%>
		<div class="left">
			<form action="submitassignedanswersheet" method="post" data-toggle="validator">
			<div class="form-group">
					<label for="firstname" class="control-label">Roll Number</label>
					<input type="number" value="<%=roll %>" readonly id="firstname" class="form-control" placeholder="Enter Roll Number" data-error="Enter Roll Number" required>
					<div class="help-block with-errors"></div>
				</div>
				
				<div class="form-group">
					<label for="firstname" class="control-label">Copy Number</label>
					<input type="number" id="firstname" class="form-control" name="copy_no" placeholder="Enter Copy Number" data-error="Copy Number" required>
					<div class="help-block with-errors"></div>
				</div>
				
				<div class="form-group">
					<label for="lastname" class="control-label">Select Subjects</label>
					<select name="subcode" class="dropdown" id="firstname" required>
									<option value="" selected disabled hidden >Choose subject</option>
<%for(String tr:subjects){
%><option value="<%=tr%>" ><%=tr%></option><%}%>
	
</select>
						</select>
					<div class="help-block with-errors"></div>
				</div>
				
				

				<div class="form-group">
					<button type="submit" class="btn btn-lg">submit</button>
				</div>
				
			</form>
			
		</div>
		<% }%>
		
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