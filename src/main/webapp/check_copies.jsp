<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.net.URI"%>
    <%String copyno=request.getParameter("cc"); %>										  
<!DOCTYPE html>
<html>
<head>
<title>Copy Check</title>
<style>
input[type=number]::-webkit-inner-spin-button,
input[type=number]::-webkit-outer-spin-button{
-webkit-appearance: none;
-moz-appearance: none;
appearance: none;
margin:0;
}
input{
width: 70px;
}
.display-left {
}
.display-right {
}
.imgs {
width: 75%;
float: left;
}
.marks {
margin-top: 0px;
padding: 10px;
float: left;
width:250px
}

table{
border: 1px solid #337ab7;
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
h1{
color:#FFFFFF;
font-size:60px;
}

#button {
  border-radius: 4px;
  background-color: #0c2149;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 200px;
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
</style>
</head>
<body>
<center>
<h1>Copy Checking System</h1>

																																																											  

<button onclick="init1()" id="button"><span>Start Checking</span></button>

</center>

<div class="imgs" id="imgs">
<img id="myImg" src="<%=URI.create(request.getRequestURL().toString()).resolve(request.getContextPath())%>/copyimages?cc=<%=copyno%>&pn=p1" alt="img" style="height:600px;width:50%;">
</div>
<div class="marks" id="marks">

<form id="form1" action="submitcheckedcopies" method="post">
<input type="text" readonly value="<%=copyno%>" name="cc">
<p id="pg">Page 1</p>
<input type="text" id="clk" readonly value="00:00" name="clk">
<table border="1">
																		  
										   

<tr>
<td>Question</td><td>Marks</td><td>Max Marks</td></tr>
<%for(int i=1;i<=30;i++){%>

				<tr>
													  
	
                    <td><%=i%></td><td><input required name="q<%=i%>" type="number" min="0" max="2" step="0.5" value="0" id="q<%=i%>" onchange="gettot()"></td>
                    <td><input  required name="q<%=i%>m" type="number" min="0" max="15" step="0.5" value="0" id="q<%=i%>m" onchange="checkit()"></td>
                </tr>
				<%}%>
							

<tr>
<td>Total</td><td><input id="tot" type="text" name="marks_ob" value="0" readonly></td><td ><input type="text" id="tot1" name="marks_mm" value="0" readonly></td>
</tr>
</table>

<input type="submit" value="Submit">
</form>

<button onclick="prev()">&#10094;</button>
<button onclick="next()">&#10095;</button>

</div>

 <script>
        init();
        function gettot()
        {
        	document.getElementById('tot').value= parseInt(document.getElementById('q1').value)
        	<%for(int i=2;i<=30;i++){%>+ parseInt(document.getElementById('q<%=i%>').value)<%}%>;
        	document.getElementById('tot1').value= parseInt(document.getElementById('q1m').value)
        	<%for(int i=2;i<=30;i++){%>+ parseInt(document.getElementById('q<%=i%>m').value)<%}%>;
            
        }
        function checkit()
        {
        	<%for(int i=1;i<=30;i++){%>
																		 
        		  document.getElementById('q<%=i%>').max = document.getElementById('q<%=i%>m').value;
        		<%}%>
	
            gettot();
        }
        function init()
        {
            checkit();
            document.getElementById("imgs").style.display = "none";
            document.getElementById("marks").style.display = "none";
        }
        function init1()
        {
        document.getElementById("button").style.display = "none";
        document.getElementById("imgs").style.display = "block";
        document.getElementById("marks").style.display = "block";
        Countdown();
        }

        var i = 1;
        function prev() {
            if (i > 1)
                document.getElementById("myImg").src = "<%=URI.create(request.getRequestURL().toString()).resolve(request.getContextPath())%>/copyimages?cc=<%=copyno%>&pn=p" + (--i);
            document.getElementById("pg").innerHTML = "Page " + i;
        }
        function next() {
            if (i < 30)
                document.getElementById("myImg").src = "<%=URI.create(request.getRequestURL().toString()).resolve(request.getContextPath())%>/copyimages?cc=<%=copyno%>&pn=p" + (++i);
            document.getElementById("pg").innerHTML = "Page " + i;
        }
        var j = 0;
        var S;
        function Countdown()
        {
            if ((j / 60) < 10)
            {
                if (parseInt(j % 60) < 10)
                    S = "0" + parseInt(j / 60) + ":0" + parseInt((j++) % 60);
                else
                    S = "0" + parseInt(j / 60) + ":" + parseInt((j++) % 60);
            } else
            {
                if (parseInt(j % 60) < 10)
                    S = parseInt(j / 60) + ":0" + parseInt((j++) % 60);
                else
                    S = parseInt(j / 60) + ":" + parseInt((j++) % 60);
            }
            wait();
            document.getElementById('clk').value = S;
        }
        function wait()
        {
            window.setTimeout(function () {
                Countdown();
            }, 1000);
        }
    </script>

</body>
</html>