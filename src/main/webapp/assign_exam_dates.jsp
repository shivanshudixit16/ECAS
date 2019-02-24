<%@page import="database.DatabaseConnection,java.util.ArrayList,model.Subject"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%ArrayList<Subject> subjects= new DatabaseConnection().getAllSubjects();%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Assign Exam Dates</title>
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
	<link href="css/assign_exam_date_style.css" rel="stylesheet" type='text/css' media="all" />
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
		<h1 class="title">Assign Exam Date & Time</h1>
		<div class="left">
			<form action="submit_exam_dates" method="post" data-toggle="validator">
			<div class="form-group">
					<label for="lastname" class="control-label" size="20" >Session</label>
					
					<input type="text" name="session" required class="date" value="<%=new DatabaseConnection().getCurrentSession()%>" readonly>

					<div class="help-block with-errors"></div>
				</div>
			
			
				<div class="form-group">
					<label for="lastname" class="control-label" >Subject</label>
					<select class="dropdown" name="sub_code">
									<option value="">Select Subject</option>
									<%for(Subject sub:subjects){%><option value="<%=sub.subcode%>"><%=sub.subname%></option><%}%>
		
						</select>
					<div class="help-block with-errors"></div>
				</div>
				<div class="form-group">
					<label for="lastname" class="control-label" size="20" >Date</label>
					
					<input type="date" name="date" required class="date">

					<div class="help-block with-errors"></div>
				</div>
				
				<div class="form-group">
					<label for="lastname" class="control-label" size="20">Time</label>
					<input type="time" name="time" required class="date">
					<div class="help-block with-errors"></div>
					</div>
					<div class="form-group">
					<label for="lastname" class="control-label" >DAy/Night</label>
					<select class="dropdown" name="time2" recquired>
									<option value="AM">AM</option>
<option value="PM">PM</option>
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