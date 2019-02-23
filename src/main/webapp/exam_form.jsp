<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
  <%@page import="database.DatabaseConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="model.*,java.util.*" pageEncoding="ISO-8859-1"%>
<%
	Student stud = (Student) request.getAttribute("student");
	if (stud == null) {
		response.sendRedirect("student_home.jsp");
		return;
	}
	 ArrayList<Subject> subjects=(ArrayList)request.getAttribute("subjects");
%>
<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
	response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
	response.setHeader("Expires", "0");
%>
			  
	  
<head>
	<title>Fill Exam Form</title>
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
	<link href="css/fill_exam_form_style.css" rel="stylesheet" type='text/css' media="all" />
	<!-- /css -->
</head>
 

<body>
				
			 
							
				  
					 
 

	<div class="content-agileits">
		<h1 class="title">Fill Exam Form</h1>
		<div class="left">
			<form action="submitexamform" method="post" data-toggle="validator">
				<div class="form-group">
					<label for="firstname" class="control-label">Name:</label>
					<input type="text" class="form-control" id="firstname" name="name"
						value="<%=stud.name%>" required="" readonly placeholder=" Name" data-error="Enter Your  Name" required>
					<div class="help-block with-errors"></div>
				</div>
				<div class="form-group">
					<label for="lastname" class="control-label">Father's Name:</label>
					<input type="text" class="form-control" id="lastname" placeholder="Father Name" data-error="Enter Your father Name" name="faname"
						value="<%=stud.fathername%>" readonly  required>
					<div class="help-block with-errors"></div>
				</div>
				<div class="form-group">
					<label for="inputEmail" class="control-label">Email:</label>
					<input type="email" class="form-control" name="email"
						value="<%=stud.stdemail%>" readonly required="" id="inputEmail" placeholder="Email" data-error="This email address is invalid" required>
					<div class="help-block with-errors"></div>
				</div>
				
				<div class="form-group">
					<label for="Phone" class="control-label">Phone:</label>
					<input type="text" name="phone"
						required="" value="<%=stud.stdcontact%>" readonly class="form-control" id="Phone" placeholder="Phone" data-error="Enter Your Phone Number" required>
					<div class="help-block with-errors"></div>
				</div>
				
				<div class="form-group">
					<label for="lastname" class="control-label">Course</label>
					<input type="text" name="course" value="<%=stud.course%>" readonly class="form-control" id="lastname" data-error="" required>
					<div class="help-block with-errors"></div>
				</div>
				
				<div class="form-group">
					<label for="lastname" class="control-label">Branch</label>
					<input type="text" name="branch" value="<%=stud.branch%>" readonly class="form-control" id="lastname" data-error="" required>
					<div class="help-block with-errors"></div>
				</div>
				
				<div class="form-group">
					<label for="lastname" class="control-label">Semester</label>
					<input type="text" name="semester" value="<%=stud.semester%>" readonly class="form-control" id="lastname" data-error="" required>
					<div class="help-block with-errors"></div>
				</div>
				
				<div class="form-group">
					<label for="lastname" class="control-label">Session</label>
					<input type="text" value="<%=new DatabaseConnection().getCurrentSession() %>" name="session" readonly class="form-control" id="lastname" data-error="" required>
					<div class="help-block with-errors"></div>
				</div>
				
						
						<div class="form-group">
					<label for="lastname" class="control-label">Subject</label>
					<select name="subjects" class="dropdown" id="demoSel" size="4" multiple="" >
					<option value="" disabled>Select Subject</option>
								<%for(Subject sub:subjects){%><option value="<%=sub.subcode%>"><%=sub.subname%></option><%}%>
							</select> 
					
					<div class="help-block with-errors"></div>
				</div>
				<div class="help-block with-errors"></div>
				

				<div class="form-group">
					<label for="lastname" class="control-label">Selected</label>
					<textarea name="display" class="form-control" id="display"
								placeholder="view select list value(s) onchange" cols="10"
								rows="4" readonly=""></textarea>
					
		</div>
								   
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-lg">submit</button>
				</div>
				
			</form>
					
			
		</div>
																	   
													  
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