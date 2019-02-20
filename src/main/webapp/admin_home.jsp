<!doctype html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
response.setHeader("Expires", "0");
%>																	
							   
																							  
													  
								   
  
<html>

<head>
	<title>Admin_Home</title>
	<meta name="view-port" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content=" Registration Form Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"
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
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
	<!-- /fonts -->
	<!-- css -->
	<link href="css/bootstrap.css" rel="stylesheet" type='text/css' media="all" />
	<link href="css/admin_style.css" rel="stylesheet" type='text/css' media="all" />
	<!-- /css -->
	
</head>

<div class="header" style=" padding-top:0px;">                             
       <img src="./images/srms1.jpg" width="550px"   style="text-align: left;">  
	   <img src="./images/rammurti.jpg" width="140px;"  style="float: right; margin-right:30px;margin-top:6px;"> 
	   <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">


<div class="wrapper">
  <ul>
    <li class="facebook"><i class="fa fa-facebook fa-2x" aria-hidden="true"></i></li>
    <li class="twitter"><i class="fa fa-twitter fa-2x" aria-hidden="true"></i></li>
    <li class="instagram"><i class="fa fa-instagram fa-2x" aria-hidden="true"></i></li>
    <li class="google"><i class="fa fa-google fa-2x" aria-hidden="true"></i></li>
    <li class="whatsapp"><i class="fa fa-whatsapp fa-2x" aria-hidden="true"></i></li>
  </ul>
</div>
</div>

	<div id="navbar">
		<a class="active" href="index.html">Home</a>
		<a href="teacher_login.jsp">Teacher Login</a>
		<a href="index.jsp#services">Student Corner</a>
		<a href="index.jsp">Circulars</a>
		<a href="index.jsp#gallery">Gallery</a>
		<a href="" class="fa">&#xf08b;Logout</a>
   </div>

	<div class="content-agileits">
		<h1 class="title"></h1>
		<div class="left">
			<form action="#" method="post" data-toggle="validator">
				<div class="form-group">
					<label for="firstname" class="control-label">Click Here to Register Teacher</label>
					<a href="teacher_reg.jsp" class="form-control" id="firstname">Teacher Registration</a>
				</div><br>
				<div class="form-group">
					<label for="lastname" class="control-label">Click Here to Generate Student Roll No.</label>
					<a href="generate_rolls.jsp" class="form-control" id="firstname">Generate Roll No.</a>
					<div class="help-block with-errors"></div>
				</div><br>
				<div class="form-group">
					<label for="lastname" class="control-label">Click Here to Assign Exam Center</label>
					<a href="assign_exam_center.jsp" class="form-control" id="firstname">Assign Exam Center</a>
					<div class="help-block with-errors"></div>
				</div><br>
				<div class="form-group">
					<label for="lastname" class="control-label">Click Here to Assign Exam Dates</label>
					<a href="assign_exam_dates.jsp" class="form-control" id="firstname">Assign Exam Dates</a>
					<div class="help-block with-errors"></div>
				</div><br>
				
				<div class="form-group">
					<label for="lastname" class="control-label">Click Here to Release Admit Cards</label>
					<a href="release_admit_cards.jsp" class="form-control" id="firstname">Release Admit Cards</a>
					<div class="help-block with-errors"></div>
				</div><br>
				
				<div class="form-group">
					<label for="lastname" class="control-label">Click Here to Release Result Cards</label>
					<a href="release_result_cards.jsp" class="form-control" id="firstname">Release Result Cards</a>
					<div class="help-block with-errors"></div>
				</div><br>
				
				<div class="form-group">
					<label for="lastname" class="control-label">Click Here to Confirm Start Session</label>
					<a href="confirm_start_session.jsp" class="form-control" id="firstname">Confirm Start Session</a>
					<div class="help-block with-errors"></div>
				</div><br>
				<div class="form-group">
					<label for="lastname" class="control-label">Click Here to Confirm Start Semester</label>
					<a href="confirm_start_semester.jsp" class="form-control" id="firstname">Confirm Start Semester</a>
					<div class="help-block with-errors"></div>
				</div><br>
				
				<div class="form-group w3ls-opt">
					<label for="lastname" class="control-label">Click Here to assign Subjects for this Session</label>
					<a href="assign_subjects_to_session.jsp" class="form-control" id="firstname">Assign Subjects for this session</a>
				</div><br>
				
				<div class="form-group w3ls-opt">
					<label for="lastname" class="control-label">Click Here to Fill External Marks</label>
					<a href="external_marks_choose_roll.jsp" class="form-control" id="firstname">Fill External Marks</a>
				</div><br>
				<div class="form-group w3ls-opt">
					<label for="lastname" class="control-label">Allocate Answer Sheets To Students</label>
					<a href="allocate_answer_sheets_to_students.jsp" class="form-control" id="firstname">Allocate Answer Sheets</a>
				</div><br>
				<div class="form-group w3ls-opt">
					<label for="lastname" class="control-label">Upload Answer Sheets</label>
					<a href="upload_answer_sheets.jsp" class="form-control" id="firstname">Upload Answer Sheets</a>
				</div><br>
				<div class="form-group w3ls-opt">
					<label for="lastname" class="control-label">Assign Answer Sheets To Teachers To Check</label>
					<a href="assign_answer_sheets_choose_teachers.jsp" class="form-control" id="firstname">Assign Answer Sheets To Check</a>
				</div><br>
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
	
	
	
	

	
	
	
	<script>
window.onscroll = function() {myFunction()};

var navbar = document.getElementById("navbar");
var sticky = navbar.offsetTop;

function myFunction() {
  if (window.pageYOffset >= sticky) {
    navbar.classList.add("sticky")
  } else {
    navbar.classList.remove("sticky");
  }
}
</script>
	<!-- /js files -->
</body>

</html>