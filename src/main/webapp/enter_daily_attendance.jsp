<!doctype html>
			   
			   
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.util.ArrayList"
    pageEncoding="ISO-8859-1"%>
	  
														  
    <%ArrayList<String> rolls=(ArrayList<String>)session.getAttribute("rolls"); %>
		   
																							  
<html>

<head>
	<title>Enter Attendance</title>
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
	
	<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #337ab7;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>



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
		<h1 class="title">Enter Attendance</h1>
		<div class="left">
			<form action="submitdailyattendamce" method="post" data-toggle="validator">
			<div class="form-group">
					<label for="lastname" class="control-label">Date</label>
					<input name="date" recqired type="date" class="form-control" id="lastname"  placeholder="Enter DATE" data-error="EnterDATE " required>
							   
		<div class="help-block with-errors"></div>
				</div>
				
				
				<table>
			<tr>
			<th>Roll No</th>
			<th>Present</th>
			
			</tr>
																																																	  
		  
<%for(String r:rolls)
{%>
<tr>
<td><%=r%></td>
<td><input type="checkbox" name="present" value="<%=r %>" ></td>
	   
	
</tr>
	
   
<%} %>
</table>
			<br><br>
				
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