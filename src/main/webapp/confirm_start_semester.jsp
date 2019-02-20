															
<%
String msg = null;
msg = (String)request.getAttribute("semmg"); %>		   
<!DOCTYPE html>
<html>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.city {display:none}
header{
color:#0c2149;
}
body{background-color:#BCD4E6;;}


</style>
<body>
<center>
<div class="w3-container">
<h2>Start New Semester</h2>
<p>Click Button To Start a New Semester</p>
<form action="start_semester">
<button onclick="document.getElementById('id01').style.display='block'" style="background-color: #0c2149;color:white">New Semester</button>
</form>
<div id="id01" class="w3-modal">
 <div class="w3-modal-content w3-card-4 w3-animate-zoom">
  <header class="w3-container w3-blue"> 
   <span onclick="document.getElementById('id01').style.display='none'" 
   class="w3-button w3-blue w3-xlarge w3-display-topright">&times;</span>
   <h2><%if(msg!=null && msg.equals("Success")){out.write("Successful");}else out.write("Failure");%></h2>
  </header>
<img src="./images/emoji.jpg">
 <h1><%=msg %></h1>
   <p><%if(msg!=null && msg.equals("Success")){out.write("You have successfully started a new semester.");}else out.write("Error");%></p>


  
  <div class="w3-container w3-light-grey w3-padding">
   <button class="w3-button w3-right w3-white w3-border" 
   onclick="document.getElementById('id01').style.display='none'">Close</button>
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
