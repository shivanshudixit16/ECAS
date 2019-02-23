<!doctype html>
	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="database.DatabaseConnection,java.util.ArrayList,model.Subject"%>
 <%
 	ArrayList<Subject> subjects= new DatabaseConnection().getAllSubjects();
 	ArrayList<String> branches= new DatabaseConnection().getAllBranches();
 	ArrayList<String> courses= new DatabaseConnection().getAllCourses();
 %>						   
																					
   
									 
									
								   
   
																									  
<html>

<head>
	<title>Choose Class</title>
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
		
		select,textarea{
			width:840px;
		}
	</style>
	
	
	
</head>



<body>
<div class="back"><button onclick="goBack()">Go Back</button></div>	
	<div class="content-agileits">
		<h1 class="title">Choose class for Teacher </h1>
		<div class="left">
			<form action="getsubjectsteacher" method="post" data-toggle="validator">
			
			
<div class="form-group">
					<label for="firstname" class="control-label">Session</label>
					<input type="text" id="firstname" class="form-control" placeholder="Session" data-error="Session" required name="session" value="<%=new DatabaseConnection().getCurrentSession()%>" readonly>>
					<div class="help-block with-errors"></div>
				</div>
<div class="form-group">
					<label for="firstname" class="control-label">Course</label>
<select name="course"  required class="dropdown">
								<%for(String cr:courses){%><option value="<%=cr%>"><%=cr%></option><%}%>
</select> 
<div class="help-block with-errors"></div>
				
				</div>
				
				<div class="form-group">
					<label for="firstname" class="control-label">Branch</label>
<select name="branch"  class="dropdown" required>
								<%for(String br:branches){%><option value="<%=br%>"><%=br%></option><%}%>
</select> 

<div class="help-block with-errors"></div>
				</div>
				<div class="form-group">
					<label for="firstname" class="control-label">Semester</label>
					<input type="text" id="firstname" class="form-control" placeholder="semester" data-error="Session" required name="semester">
					<div class="help-block with-errors"></div>
				</div>

<div class="form-group">
					<button type="submit" class="btn btn-lg">Submit</button>
				</div>
</form>
	<p class="copyright-w3ls">Made with<span style="font-size:150%;color:red;"> &hearts;</span></p>
	
	<script type="text/javascript">
					(function() {

						function getSelectedOptions(sel, fn) {
							var opts = [], opt;

							// loop through options in select list
							for (var i = 0, len = sel.options.length; i < len; i++) {
								opt = sel.options[i];
								if (opt.selected) {
									opts.push(opt);
									if (fn) {

										fn(opt);
									}
								}
							}
							return opts;
						}
						document.getElementById('demoSel').onchange = function(
								e) {
							var display = document.getElementById('display');
							display.innerHTML = '';
							getSelectedOptions(this, callback);
							var str = display.innerHTML.slice(0, -2);
							display.innerHTML = str;
						};
						function callback(opt) {
							var display = document.getElementById('display');
							display.innerHTML += opt.value+'  -  '+opt.innerHTML + ' \n';
						}
					}());
				</script>
	
	
	
	
	<!-- js -->
	<script src="js/jquery-2.1.4.min.js"></script>
	<!-- //js -->

	<script src="js/bootstrap.min.js"></script>
	<script src="js/validator.min.js"></script>
	<!-- /js files -->
</body>

</html>