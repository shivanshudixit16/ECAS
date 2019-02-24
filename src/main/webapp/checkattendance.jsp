					<%@page import="database.DatabaseConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%String dailyattend[]=null,date=null;
    DatabaseConnection db=new DatabaseConnection();
    String tattend[]=db.getTotalClassesAttendedByARollAndTotalClass(db.getRoll((String)session.getAttribute("susername")));
    if(tattend==null)
    {
    	out.write("no record for this roll_no");
    			return;
    }
    try{
     dailyattend=(String[])request.getAttribute("dailyattend");
     date=(String)request.getAttribute("date");
    }
    catch(Exception e)
    {}
    %>					  
																	
							   
										  
												   
																														   
					 
	 
											 
			  
	 
		
															   
											   
	 
					  
	  
	  
<!doctype html>
<html>

<head>
	<title>Check Daily Attendance</title>
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
	<link href="css/assign_subjects_session_style.css" rel="stylesheet" type='text/css' media="all" />
	<!-- /css -->
</head>



<body>
					<div class="content-agileits">
		<h1 class="title"> Daily Attendance</h1>
		<div class="left">   <br>
Total Attendance=<%=tattend[1]+"/"+tattend[0] %><br>
<%
if(date!=null)
{
    if(dailyattend==null)
    {
    	out.println("\nyour atendance for "+date+"is not updated yet"+"\n");
    }
    else
    {
    	out.println("\nyour atendance for "+date+"is"+dailyattend[1]+"/"+dailyattend[0]+"\n");
    }
}

%>
<br>To Check date wise<br>
Choose date
<form action="fetchattendancedatewise">
													
  
			  
 
						 
	 
																		 
	 
		
	 
																						   
	 
 

	
		
			
					
					<h4 style="color:#4CAF50">Total Attendance=0/1</h4>
					
					<br><br>
					<h4 style="color:#4CAF50">To Check Date Wise</h4>
					
<br><br>

					
				<div class="form-group">
					<label for="lastname" class="control-label">Select Date</label>
					<input type="Date" name="date" class="form-control" id="lastname" placeholder="Select Date" data-error="Select Date " required>


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