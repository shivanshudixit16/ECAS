<!--A Design by W3layouts 
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!doctype html>
<html>

<head>
	<title>Upload Answer Sheets</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="scdsgfg"/>
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
		<h1 class="title">Upload Answer Sheet</h1>
		<div class="left">
			<form action="submitcopyimages" method="post" enctype="multipart/form-data">
				<div class="form-group">
					<label for="Phone" class="control-label">Copy Number</label>
					<input type="text" class="form-control" id="Phone" placeholder="Copy Number" data-error="Enter Copy Number" required>
					<div class="help-block with-errors"></div>
				</div>
				
  <%for(int i=1;i<=30;i++){ %>
  <div class="form-group">
					<label for="lastname" class="control-label">Image of Page <%=i%></label>
					<input type="file" name="photo<%=i%>" class="form-control" id="lastname" data-error="choose file" accept="image/*" required>
				</div>
				<%} %>
      
   
							
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