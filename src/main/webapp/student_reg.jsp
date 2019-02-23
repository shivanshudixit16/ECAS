<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
	<%@page import="database.DatabaseConnection,java.util.ArrayList"%>
<%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
response.setHeader("Expires", "0");%>
<%
	ArrayList<String> college=new DatabaseConnection().getAllCollege(); 
 	ArrayList<String> branches= new DatabaseConnection().getAllBranches();
 	ArrayList<String> courses= new DatabaseConnection().getAllCourses();
 %>								
								   
   
<!doctype html>
<html>

<head>
	<title>Student Registration For</title>
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
	<link href="css/stud_reg_style.css" rel="stylesheet" type='text/css' media="all" />
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
		<h1 class="title">Student Registration Form</h1>
		<div class="left">
			<form action="student_regsubmit" method="post" data-toggle="validator" enctype="multipart/form-data">
				<div class="form-group">
					<label for="firstname" class="control-label">Student Name:</label>
					<input type="text" class="form-control" id="firstname" name="stdname" placeholder="First Name" data-error="Enter Your First Name" required>
					<div class="help-block with-errors"></div>
				</div>
				
				<div class="form-group">
					<label for="lastname" class="control-label">Father's Name:</label>
					<input type="text" name="fathername" class="form-control" id="lastname" placeholder="Father Name" data-error="Enter Your father Name" required>
					<div class="help-block with-errors"></div>
				</div>
				<div class="form-group">
					<label for="inputEmail" class="control-label">Email:</label>
					<input type="email" class="form-control" id="inputEmail" name="stdemail" placeholder="Email" data-error="This email address is invalid" required>
					<div class="help-block with-errors"></div>
				</div>
				
				
				
				<div class="form-group w3ls-opt">
					<label for="Phone" class="control-label">Gender</label>

					<label class="w3layouts">
						<input name="gender" type="radio" name="work" id="hire" value="male" checked>Male
					</label>
					<label class="w3layouts label2">
						<input name="gender" type="radio" name="work" id="work" value="female">Female
					</label>
				</div>
				<div class="form-group">
					<label for="lastname" class="control-label">College</label>
					<select class="dropdown" name="clgname">
							<option value="" style="color:#000">Select College</option>
  			 <%for(String co:college){%><option value="<%=co%>"><%=co%></option><%}%>
		</select>
				<div class="help-block with-errors"></div>
				</div>
				<div class="form-group">
					<label for="lastname" class="control-label">Course</label>
					<select class="dropdown" name="course">
									<option value="" style="color:#000">Select Course</option>
								 <%for(String br:branches){%><option value="<%=br%>"><%=br%></option><%}%>
						</select>
				<div class="help-block with-errors"></div>
				</div>
				<div class="form-group">
					<label for="Phone" class="control-label">Batch</label>
					<input type="text" class="form-control" id="Phone" placeholder="Batch" data-error="Enter Your Batch"  name="batch" value="<%=new DatabaseConnection().getCurrentSession() %>" readonly required>
					<div class="help-block with-errors"></div>
				</div>
				<div class="form-group">
					<label for="lastname" class="control-label">Branch</label>
					<select class="dropdown" name="branch">
									<option value="" style="color:#000">Select Branch</option>
								<%for(String br:branches){%><option value="<%=br%>"><%=br%></option><%}%>	
		
						</select>
				<div class="help-block with-errors"></div>
				</div>
				<div class="form-group">
					<label for="inputEmail" class="control-label">Contact No.:</label>
					<input type="number" name="stdcontact" class="form-control" id="inputEmail" name="stdemail" placeholder="Email" data-error="This Field is invalid" required>
					<div class="help-block with-errors"></div>
				</div>
				
				<div class="form-group">
					<label for="lastname" class="control-label">Upload Picture</label>
					<input type="file" class="form-control" id="lastname" data-error="choose file" required name="photo" accept="image/*" >
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