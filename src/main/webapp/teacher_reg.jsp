<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
response.setHeader("Expires", "0");%>
<%@page import="database.DatabaseConnection,java.util.ArrayList"%>
<%ArrayList<String> college=new DatabaseConnection().getAllCollege(); %>
  
<!doctype html>
<html>

<head>
	<title>Teacher Registration Form</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="width=device-width"/>
   
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!--back-->
	<script>
	function goBack() {
		window.history.back()
	}
</script>
	<!--back-->
	<!-- css -->
	<link href="css/bootstrap.css" rel="stylesheet" type='text/css' media="all" />
	<link href="css/teacher_reg_style.css" rel="stylesheet" type='text/css' media="all" />
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
	<!-- /css -->
</head>

<body>
<div class="back"><button onclick="goBack()">Go Back</button></div>
	<div class="content-agileits">
		 <h1 class="title">Teacher Registration Form</h1>
		<div class="left">
			<form action="teacher_regsubmit" method="post" data-toggle="validator">
				<div class="form-group">
					<label for="firstname" class="control-label">First Name:</label>
					<input type="text" class="form-control" id="firstname"  name="tname" placeholder="First Name" data-error="Enter Your First Name" required>
					<div class="help-block with-errors"></div>
				</div>
				
				
				<div class="form-group">
					<label for="inputEmail" class="control-label">Email:</label>
					<input type="email"  name="temail"  class="form-control" id="inputEmail" placeholder="Email" data-error="This email address is invalid" required>
					<div class="help-block with-errors"></div>
				</div>
				<div class="form-group">
					<label for="Phone" class="control-label">Contact:</label>
					<input type="text" name="tno"  class="form-control" id="Phone" placeholder="Phone" data-error="Enter Your Phone Number" required>
					<div class="help-block with-errors"></div>
				</div>
				
				
				<div class="form-group">
					<label for="lastname" class="control-label">College</label>
					<select class="dropdown" name="college">
									<option value="" style="color:#000">Select College</option>
										<%for(String co:college){%><option style="color:#000" value="<%=co%>"><%=co%></option><%}%>
									
		
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