<!doctype html>
		<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.ArrayList,database.DatabaseConnection"%>
    <%String email=(String)request.getAttribute("email");
    ArrayList<String> copycodes = (ArrayList<String>)request.getAttribute("copycodes");
    %>
																	
														 
																					   
	  
																									  
<html>

<head>
	<title>Allocate Copies to check</title>
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
		<h1 class="title">Allocate Teacher for Copies</h1>
		<div class="left">
			<form action="submitcopycodesforteachers" method="post" data-toggle="validator">
<div class="form-group">
					<label for="firstname" class="control-label">Enter Teacher Email</label>
					<input type="email" id="firstname" class="form-control" placeholder="Enter Teacher Email" data-error="Enter Teacher Email" required name="email" value="<%=email%>" readonly>
					<div class="help-block with-errors"></div>
				</div>
<div class="form-group">
					<label for="firstname" class="control-label">Select Subjects</label>
<select name="copycodes" id="demoSel"  multiple="" required>
									<%for(String cc:copycodes){%><option value="<%=cc%>"><%=cc%></option><%}%>
</select> 
<div class="help-block with-errors"></div>
				</div>
<div class="form-group">
					<label for="firstname" class="control-label">View Selected Subjects</label>
<textarea name="display" id="display" placeholder="view select list value(s) " cols="10" rows="4" readonly=""></textarea>
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