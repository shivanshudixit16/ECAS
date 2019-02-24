<!DOCTYPE html>
<html>
<%
String msg = null;
msg = (String)request.getAttribute("semmg"); %>	
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="database.*"%>
<head>
<title>Start New Semester</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.city {display:none}
header{
color:#0c2149;
}
body{
	background-image:url("images/webback.gif");
	background-position: center;
	background-attachment: fixed;
	background-size: 100% 100%;
	-webkit-background-size: 100% 100%;
	-moz-background-size: 100% 100%;
	-o-background-size: 100% 100%;
	-ms-background-size: 100% 100%;
}
</style>
<!-- back -->
	<script>
	function goBack() {
		window.history.back()
	}
</script>
	<!-- /back -->
	
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
#button {
  border-radius: 12px;
  background-color: #0c2149;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 24px;
  padding: 20px;
  width: 200px;
  height:108px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
  margin-top:30px;
}

#button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

#button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

#button:hover span {
  padding-right: 25px;
}

#button:hover span:after {
  opacity: 1;
  right: 0;
}
p.copyright-w3ls {
	text-align: center;
	font-size: 1em;
	font-weight: normal;
	padding: 0 0 2em 0;
	color: #ffffff;
	letter-spacing: 1px;
}

p.copyright-w3ls a {
	color: #000;
	text-decoration: underline;
}

p.copyright-w3ls a:hover {
	color: #ff4200;
}
h2{
	color:#ffffff;
	font-size:60px;
}
p{
	color:#ffffff;
	font-size:20px;
}

</style>
</head>
<body>
<div class="back">
<button onclick="goBack()">Go Back</button></div>
<center>
<div class="w3-container">
<h2>Start New Semester </h2>
<p>Click Button To Start a New Semester The Current Session is <%=new DatabaseConnection().getCurrentSession() %></p>

<button id="button" onclick="document.getElementById('id01').style.display='block'"><span><a href="start_session">New Session</a></span></button>

<div id="id01" class="w3-modal">
 <div class="w3-modal-content w3-card-4 w3-animate-zoom">
  <header class="w3-container w3-blue"> 
   <span onclick="document.getElementById('id01').style.display='none'" 
   class="w3-button w3-blue w3-xlarge w3-display-topright">&times;</span>
   <h2><%if(msg!=null && msg.equals("Success")){out.write("Successful");}else {out.write("Failure");}%></h2>
  </header>
<img src="./images/emoji.jpg">
 <h1><%if(msg!=null && msg.equals("Success")){out.write("Successful");}else {out.write("Failure");}%></h1>
   <p>Y<%if(msg!=null && msg.equals("Success")){out.write("You have successfully started a new semester.");}else out.write("Error");%></p>
<div class="w3-container w3-light-grey w3-padding">
   <button class="w3-button w3-right w3-white w3-border" onclick="document.getElementById('id01').style.display='none'">Close</button>
  </div>
 </div>
</div>

</div>
</center>

<script>
document.getElementsByClassName("tablink")[0].click();

function openCity(evt, cityName) {
  var i, x, tablinks;
  x = document.getElementsByClassName("city");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < x.length; i++) {
    tablinks[i].classList.remove("w3-light-grey");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.classList.add("w3-light-grey");
}
</script>
 
</body>
</html> 
