<!--
Author: W3layouts
Author URL: http://w3layouts.com
Licen se: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8" %>
    <%if(session.getAttribute("logged")!=null) {
	out.println("<script>alert(\"you are already loged in as a "+session.getAttribute("logged")+"\");</script>");
	session.removeAttribute("logged");
}
%>
<%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
response.setHeader("Expires", "0");%>									 
<!DOCTYPE html>
<html lang="en" >
<head>
<title>Exam Cell Automation System</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
<link href="css/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all">
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="all" />
<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
<link href="css/smoothbox.css" rel='stylesheet' type='text/css'/>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link rel="shortcut icon" type="image/x-icon" href="./images/icon.ico"/>
<!--<link href="//fonts.googleapis.com/css?family=Roboto:400,500,700,900" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700,800" rel="stylesheet">-->

 <style type="text/css">
            .wrapper1{width: 100%;height:100%}
            .parllax-1{width: 100%;
			height:100%;}
            .parallax-window {
			height: 800px;
			background: transparent;
			}
			
			

			
        </style>
     
</head>
<body>

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
  <a class="active" href="#home">Home</a>
  <a href="admin_login.jsp">Admin Login</a>
  <a href="teacher_login.jsp">Teacher Login</a>
  <a href="#services">Student Corner</a>
  <a href="javascript:void(0)">Circulars</a>
  <a href="#gallery">Gallery</a>
  <a href="#team">Our Team</a>
  <a href="#about">About</a>
  <a href="#map">Directions</a>
  <a href="#testimonials">Testinomials</a>
  <a href="#contact">Connect With Us</a>
  
  
  <!--<form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" required="" aria-label="Search" >
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><i class="fas fa-search" style=" margin-top:20px"></i></button>
    </form>-->
</div>
   
          



<!-- Header -->
<section class="inner_cover parallax-window" data-parallax="scroll" data-image-src="images/baner.jpg">

<div class="w3_banner">
	<div class="inner_cover_content">
			<div class="slider">
					<div class="flexslider">

							  

						  

						<ul class="slides">
							<li>
								<div class="banner-text-w3-agileits">
									
									<h2>AKTU Ranking 2018 Under performance Analysis Criteria</h2>
									<p></p>
 

																																																														  
											 
		   

									<div class="botton">
										<a href="http://www.srms.ac.in/cet/about-us/overview/" >READ MORE</a>
									</div>
								</div>
																												 
							</li>
							<li>
								<div class="banner-text-w3-agileits">
									
									<h3>Excellence In Higher Education In India Award</h3>
									<p>Presented to Shri Dev Murti Hon'ble Chairman SRMS Trust</p>
															   
																										  
														 
															  
		   
									<div class="botton">
										<a href="http://www.srms.ac.in/cet/about-us/overview/">READ MORE</a>
										   
												 
																					  
																													
									</div>
																					   
								</div>
							</li>
							<li>
								<div class="banner-text-w3-agileits">
									
									<h3>SRMS College of Engg. & Technology,Bareilly</h3>
									<p>7th RANKED amongst Top 10 Colleges in U.P. by AKTU</p>
										   
												 
																					  
																													
																																								  
																					   
			   
	  
									<div class="botton">
										  <a href="http://www.srms.ac.in/cet/about-us/overview/">READ MORE</a>
									</div>
  
								</div>
							</li>
							
						</ul>
					</div>
				</div>
								 
		</div>
	</div>

	

		
					
															   
 

					 
															 
 
					 
																
 

					  
															  
 
			
			 
		 
										   
																											 
																											   
		   
		   
	  
											
							
							  
						  
			
																									   
		  
																																										  
				 
							  
									 
				
			   
			 
			
																									   
		  
																								
																																										  
							  
									
				
			   
			 
			
																									   
		  
																							 
																									
							  
									  
				
			   
			 
			
			
			  
		 
	  
	  
	  
</section>
<br><br><br>

<!-- /Header -->

<!-- About -->
<section class="about" id="about">
<div class="container">
<div class="row">
<div class="col-lg-6 col-md-6 col-sm-6 w3l_abtl">
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
	 <img src="./images/sovan.jpg" style="width:400px; border-style:solid; border-color:white;">
    </div>
    <div class="carousel-item">
	  <img src="./images/ls.jpg" style="width:400px; border-style:solid;border-color:white;">
    </div>
    <div class="carousel-item">
	  <img src="./images/sanjeev.jpg" style="width:400px; border-style:solid;border-color:white;">
    </div>
  </div>
  
  
</div>
</div>
<div class="col-lg-6 col-md-6 col-sm-6 w3l_abtr">
<div class="w3-agileits-team-title"> 
				
				
			<div id="horizontalTab">
			
					<ul class=" resp-tabs-list">
					
					<li>
						<h3 id="about">ABOUT US</h3>
					</li>
					<li>
						<h3>OUR MISSION</h3>
					</li>
					
					</ul>
					<div class=" resp-tabs-container">
					<div class="tab1"> 
					<h4 class="w3_chg">This is a newly hosted website as per our B.Tech 3rd year MiniProject based upon <b>Exam Cell Automation System</b></h4>
					<p class="dng">We are the team of 4 members- Shivanshu Dixit, Mridul Roy, Sonali Singh & Suraj Mishra.</p>
					</div>
					
					<div class="tab2">
					<h4 class="w3_chg"><b>"Exam Cell Automation System"</b> aims to bring a centralized system that will insure the activities in context of an examination that can be effectively managed without wastage of time, paper & possibility of errors are reduced.  "</h4>
					<p class="dng">This system can be used by all the colleges, who autonomously take exams in their colleges.</p>
					</div>
					
					
					</div>
					
					
			</div>
	</div>
</div>
</div>

        
     </div>


</section><br><br><br><br>
<!-- /About -->

	<!-- services -->
   <div class="slideanim" >
	<h3 class="wthree_head" id="services">Our Services</h3>
	</div><br><br>
	<div class="slideanim">
	<section class="services jarallax" id="services">
		<div class="container">
			
			
			<div class="services-grids">
			<div class="row">
				<div class="col-lg-2 col-md-2 col-sm-2 wthree-services-grid">
					<div class="wthree-services-icon">
					<div class="slideanim">
						<a href="examform"> <img src="./images/ExamForm.png" style="width:150px;" ></a>
					</div>
					</div>
					<div class="wthree-services-info">
						<h5>FILL EXAM FORM</h5>
					</div>
				</div>
				<div class="col-lg-2 col-md-2 col-sm-2 wthree-services-grid">
					<div class="wthree-services-icon">
					<div class="slideanim">
					<a href="getadmit"><img src="./images/Admit-Card.png" style="width:150px;" ></a>
					 </div>
					</div>
					<div class="wthree-services-info">
						<h5>VIEW ADMIT CARD</h5>
						
					</div>
				</div>
				<div class="col-lg-2 col-md-2 col-sm-2 wthree-services-grid">
					<div class="wthree-services-icon">
					<div class="slideanim">
					<a href="getexamresult"><img src="./images/student.jpg" style="width:150px;" ></a>
					 </div>
					</div>
					<div class="wthree-services-info">
					<h5>VIEW MARKSHEET</h5>
						
					</div>
				</div>
				<div class="col-lg-2 col-md-2 col-sm-2 wthree-services-grid">
					<div class="wthree-services-icon">
					<div class="slideanim">
						<a href="checkattendance.jsp">	 <img src="./images/16.jpg" style="width:150px;" >
					</div>	 
					</div>
					<div class="wthree-services-info">
						<h5>VIEW ATTENDANCE</h5>
					</div>
				</div>
				<div class="col-lg-2 col-md-2 col-sm-2 wthree-services-grid">
					<div class="wthree-services-icon">
					<div class="slideanim">
						 <a href="timetable.html"> <img src="./images/timetable1.png" style="width:150px;" ></a>
						 </div>
					</div>
					<div class="wthree-services-info">
			         <h5>VIEW TIME-TABLE</h5>
					</div>
				</div>
				
				
			
				</div>
			</div>
			
		</div>
	</section>
	</div><br><br><br><br>
	<!-- //services -->

<!-- team-->
<div class="slideanim">
<h3 class="title">Our Team</h3>
</div>
	 <section class="team agileits" id="team">
                <div class="team-info">
                        <div class="container">
                                        
                                        <div class="row">
                                        <div class="col-md-3 col-sm-3 col-xs-6 team-grids">
                                                <div class="team-agile-img">
												
                                                        <a href="#"><img src="images/shivanshu.jpg" alt="" class="img-responsive"height="344px"></a>
																			
                                                     <div class="view-caption">
                                                        <p>Shivanshu Dixit</p>
														<p>B.Tech</p>
														<p>Computer Science & Engineering</p>
														<p>Batch-2016</p>
                                                                <ul>
                                                                        <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                                                <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                                                <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                                                                </ul>
                                                        </div>

                                                </div>
                                                <div class="t-info">
                                                        <h5>Shivanshu Dixit</h5>
                                                        
                                                </div>
                                        </div>
                                        <div class="col-md-3 col-sm-3  col-xs-6 team-grids">
                                                <div class="team-agile-img">
                                                        <a href="#"><img src="images/Mridul.jpg" alt="" class="img-responsive" height="344px"></a>
                                                        <div class="view-caption">
                                                        <p>Mridul Roy</p>
														<p>B.Tech</p>
														<p>Computer Science & Engineering</p>
														<p>Batch-2016</p>
                                                                <ul>
                                                                        <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                                                <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                                                <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                                                                </ul>
                                                        </div>
                                                </div>
                                                <div class="t-info">
                                                        <h5>Mridul Roy</h5>
                                                        
                                                </div>
                                        </div>

                        
                                <div class="col-md-3 col-sm-3 col-xs-6 team-grids">
                                        <div class="team-agile-img">
                                                <a href="#"><img src="images/17.jpg" alt="" class="img-responsive"></a>
                                                <div class="view-caption">
                                                <p>Sonali Singh</p>
												<p>B.Tech</p>
												<p>Computer Science & Engineering</p>
												<p>Batch-2016</p>
                                                        <ul>
                                                                <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                                                <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                                                <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                                                        </ul>
                                                </div>
                                        </div>
                                        <div class="t-info">
                                                <h5>Sonali Singh</h5>
                                                
                                        </div>
                                </div>
                                <div class="col-md-3 col-sm-3 col-xs-6  team-grids">
                                        <div class="team-agile-img">
                                                <a href="#"><img src="images/suraj.jpg" alt="" class="img-responsive"></a>
                                                <div class="view-caption">
                                                <p>Suraj Mishra</p>
												<p>B.Tech</p>
												<p>Computer Science & Engineering</p>
												<p>Batch-2016</p>
                                                        <ul>
                                                                <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                                                <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                                                <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                                                        </ul>
                                                </div>
                                        </div>
                                        <div class="t-info">
                                                <h5>Suraj Mishra</h5>
                                                
                                        </div>
                                </div>

                        </div>
                        
                                </div>
                </div>
        </section>
		<br><br><br><br>

	<!-- //team -->
<!-- Gallery -->
<div class="slideanim" id="gallery">

<h2 class="wthree_head" >Our Gallery</h2>
 </div><br><br>
<section class="gallery" >
        <div class="container">
        <div class="row">
        
        <div class="col-lg-4 col-md-4 col-sm-4 w3l_glr">
		<div class="slideanim">
        <img src="images/acdbl.png"  alt="ghg" class="img-responsive">
		</div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4 w3l_glr">
		<div class="slideanim">
        <img src="images/acad.jpg" onmouseover="bigImg(this)" onmouseout="normalImg(this)" alt=""    class="img-responsive" width="250px" height="218px">
        </div>
		</div>
        <div class="col-lg-4 col-md-4 col-sm-4 w3l_glr">
		<div class="slideanim">
        <img src="images/acad1.jpg" onmouseover="bigImg(this)" onmouseout="normalImg(this)" alt=""    class="img-responsive"width="250px" height="218px">
        </div>
		</div>
        
        <div class="col-lg-4 col-md-4 col-sm-4 w3l_glr">
		<div class="slideanim">
        <img src="images/LIBY.png"  alt=""    class="img-responsive">
        </div>
		</div>
        <div class="col-lg-4 col-md-4 col-sm-4 w3l_glr1">
		<div class="slideanim">
        <img src="images/lib1.jpg" onmouseover="bigImg(this)" onmouseout="normalImg(this)"alt=""    class="img-responsive"width="250px" height="218px">
        </div>
		</div>
        <div class="col-lg-4 col-md-4 col-sm-4 w3l_glr1">
		<div class="slideanim">
        <img src="images/lib2.jpg" onmouseover="bigImg(this)" onmouseout="normalImg(this)" alt=""    class="img-responsive"width="250px" height="218px">
        </div>
		</div>
		<div class="col-lg-4 col-md-4 col-sm-4 w3l_glr">
		<div class="slideanim">
        <img src="images/labs.png" alt="ghg"    class="img-responsive">
        </div>
		</div>
		
		<div class="col-lg-4 col-md-4 col-sm-4 w3l_glr">
		<div class="slideanim">
        <img src="images/lab1.jpg" onmouseover="bigImg(this)" onmouseout="normalImg(this)" alt=""    class="img-responsive"width="250px" height="218px">
        </div>
		</div>
		<div class="col-lg-4 col-md-4 col-sm-4 w3l_glr">
		<div class="slideanim">
        <img src="images/lab2.jpg" onmouseover="bigImg(this)" onmouseout="normalImg(this)" alt=""    class="img-responsive"width="250px" height="218px">
        </div>
		</div>
		
		<div class="col-lg-4 col-md-4 col-sm-4 w3l_glr">
		<div class="slideanim">
        <img src="images/HOSTEL.png" alt=""    class="img-responsive">
        </div>
		</div>
		<div class="col-lg-4 col-md-4 col-sm-4 w3l_glr">
		<div class="slideanim">
        <img src="images/hstl1.jpg" onmouseover="bigImg(this)" onmouseout="normalImg(this)" alt=""    class="img-responsive"width="250px" height="218px">
        </div>
		</div>
		<div class="col-lg-4 col-md-4 col-sm-4 w3l_glr">
		<div class="slideanim">
        <img src="images/hstl2.jpg" onmouseover="bigImg(this)" onmouseout="normalImg(this)" alt=""    class="img-responsive"width="250px" height="218px">
        </div>
		</div>
		<div class="col-lg-4 col-md-4 col-sm-4 w3l_glr">
		<div class="slideanim">
        <img src="images/GYMY.png" alt=""    class="img-responsive">
        </div>
		</div>
		
		<div class="col-lg-4 col-md-4 col-sm-4 w3l_glr">
		<div class="slideanim">
        <img src="images/gym1.jpg" onmouseover="bigImg(this)" onmouseout="normalImg(this)" alt=""    class="img-responsive"width="250px" height="218px">
        </div>
		</div>
		
		<div class="col-lg-4 col-md-4 col-sm-4 w3l_glr">
		<div class="slideanim">
        <img src="images/gym2.jpg" onmouseover="bigImg(this)" onmouseout="normalImg(this)" alt=""    class="img-responsive"width="250px" height="218px">
        </div>
		</div>
		<div class="col-lg-4 col-md-4 col-sm-4 w3l_glr">
		<div class="slideanim">
        <img src="images/audi.png" alt=""    class="img-responsive">
        </div>
		</div>
        
		<div class="col-lg-4 col-md-4 col-sm-4 w3l_glr">
		<div class="slideanim">
        <img src="images/audi1.jpg" onmouseover="bigImg(this)" onmouseout="normalImg(this)" alt=""    class="img-responsive"width="250px" height="218px">
        </div>
		</div>
		
		<div class="col-lg-4 col-md-4 col-sm-4 w3l_glr">
		<div class="slideanim">
        <img src="images/audi2.jpg" onmouseover="bigImg(this)" onmouseout="normalImg(this)" alt=""    class="img-responsive"width="250px" height="218px">
        </div>
		</div>
		
		<div class="col-lg-4 col-md-4 col-sm-4 w3l_glr">
		<div class="slideanim">
        <img src="images/TECHFEST.png" alt=""    class="img-responsive">
        </div>
		</div>
		
		<div class="col-lg-4 col-md-4 col-sm-4 w3l_glr">
		<div class="slideanim">
        <img src="images/tech1.jpg" onmouseover="bigImg(this)" onmouseout="normalImg(this)" alt=""    class="img-responsive"width="250px" height="218px">
        </div>
		</div>
		<div class="col-lg-4 col-md-4 col-sm-4 w3l_glr">
		<div class="slideanim">
        <img src="images/tech2.jpg" onmouseover="bigImg(this)" onmouseout="normalImg(this)" alt=""    class="img-responsive" width="250px" height="218px">
        </div>
		</div>
		
		<div class="col-lg-4 col-md-4 col-sm-4 w3l_glr">
		<div class="slideanim">
        <img src="images/CULTURE.png" alt=""    class="img-responsive">
        </div>
		</div>
		<div class="col-lg-4 col-md-4 col-sm-4 w3l_glr">
		<div class="slideanim">
        <img src="images/zest1.jpg" onmouseover="bigImg(this)" onmouseout="normalImg(this)" alt=""    class="img-responsive"width="250px" height="218px">
        </div>
		</div>
		<div class="col-lg-4 col-md-4 col-sm-4 w3l_glr">
		<div class="slideanim">
        <img src="images/zest2.jpg" onmouseover="bigImg(this)" onmouseout="normalImg(this)" alt=""    class="img-responsive"width="250px" height="218px">
        </div>
		</div>
		
		<div class="col-lg-4 col-md-4 col-sm-4 w3l_glr">
		<div class="slideanim">
        <img src="images/SPORTY.png" alt=""    class="img-responsive">
        </div>
		</div>
		<div class="col-lg-4 col-md-4 col-sm-4 w3l_glr">
		<div class="slideanim">
        <img src="images/sports1.jpg" onmouseover="bigImg(this)" onmouseout="normalImg(this)" alt=""    class="img-responsive"width="250px" height="218px">
        </div>
		</div>
		<div class="col-lg-4 col-md-4 col-sm-4 w3l_glr">
		<div class="slideanim">
        <img src="images/sports2.jpg" onmouseover="bigImg(this)" onmouseout="normalImg(this)" alt=""    class="img-responsive"width="250px" height="218px">
        </div>
		</div>
		
		<div class="col-lg-4 col-md-4 col-sm-4 w3l_glr">
		<div class="slideanim">
        <img src="images/CANTEEN.png" alt=""    class="img-responsive">
        </div>
		</div>
		<div class="col-lg-4 col-md-4 col-sm-4 w3l_glr">
		<div class="slideanim">
        <img src="images/cant1.jpg" onmouseover="bigImg(this)" onmouseout="normalImg(this)" alt=""    class="img-responsive"width="250px" height="218px">
        </div>
		</div>
		
		
		<div class="col-lg-4 col-md-4 col-sm-4 w3l_glr">
		<div class="slideanim">
        <img src="images/disp.jpg" onmouseover="bigImg(this)" onmouseout="normalImg(this)" alt=""    class="img-responsive"width="250px" height="218px">
		</div>
        </div>
        </div>
        </div>
        
        </section>

<script>
function bigImg(x) {
    x.style.height = "250px";
    x.style.width = "360px";
}

function normalImg(x) {
    x.style.height = "218px";
    x.style.width = "250px";
}
</script>



<script src="js/jquery.min.js"></script>
        <script src="js/jquery.js"></script>
        <script src="js/parallax.js"></script>
        <script src="js/parallax.min.js"></script>
		


  
<!-- /Gallery -->
<!-- testimonials -->
<div class="slideanim">
<section class="testimonials" id="testimonials">
		<div class="slideanim">
			<h3 class="wthree_head">Testimonials</h3>
		</div>
		<ul id="flexiselDemo1">			
			<li>
				<div class="wthree_testimonials_grid_main">
				<div class="row">
					<div class="col-lg-8 col-md-8 col-sm-8 wthree_testimonials_grid">
						<p><img src="images/left-quote.png" alt=" "> Shambhavi Agrawal
CS, 2009 Batch 
Worked at TCS as ASE, Currently pursuing PhD in strategic management from IIM, Kozhikode
 It’s a pleasure to be an alumnus of SRMSCET. The seriousness towards academics and an equal enthusiasm towards cultural and sports activities made life at SRMS worth a ride.  

.
.  <img src="images/right-quote.png" alt=" " class="img-responsive"></p>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-4 wthree_testimonials_grid_pos">
					<div class="row">
						<div class="col-lg-4 col-md-4 col-sm-4 grid-test-w3l">
							<img src="images/Shambhavi-Agarwal.jpg" alt=" " class="img-responsive" width="105px" />
						</div>
						<div class="col-lg-8 col-md-8 col-sm-8 col-xs-7 wthree_testimonials_grid1">
							<h5>Shambhavi </h5>
							<p>Agrawal</p>
						</div>
						
						</div>
					</div>
					
					</div>
				</div>
			</li>
			<li>
				<div class="wthree_testimonials_grid_main">
				<div class="row">
					<div class="col-lg-8 col-md-8 col-sm-8 wthree_testimonials_grid">
						<p><img src="images/left-quote.png" alt=" " class="img-responsive">  Faraz Nomani
2012 Batch 
TCS R&D Innovation Lab, IIT Madras Research Park
 It’s a place that gives academic rigor and moral values equal importance while keeping you on your toes all the time. The scholarship program by SRMS Trust is a motivational force for every student to achieve academic excellence. 
.  <img src="images/right-quote.png" alt=" " class="img-responsive"></p>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-4 wthree_testimonials_grid_pos">
					<div class="row">
						<div class="col-lg-4 col-md-4 col-sm-4 grid-test-w3l">
							<img src="images/faraz Nomani.jpg" alt=" " width="105px"class="img-responsive" />
						</div>
						<div class="col-lg-8 col-md-8 col-sm-8 wthree_testimonials_grid1">
							<h5>faraz </h5>
							<p>Nomani</p>
						</div>
						
						</div>
					</div>
					
					</div>
				</div>
			</li>
			
			<li>
				<div class="wthree_testimonials_grid_main width="100px">
				<div class="row">
					<div class="col-lg-8 col-md-8 col-sm-8 wthree_testimonials_grid">
						<p><img src="images/left-quote.png" alt=" " class="img-responsive"> Rahul Ravi
ME, 2005-2009 Batch
Samsung India Electronics Pvt. Ltd.
Very nice to rejoice my memories with college and staff. Just best wishes for college for any support please do call me or mail.The technical expertise I gained there has shaped my corporate outlook and the friends I made at SRMS have moulded me as a person.


.  <img src="images/right-quote.png" alt=" " class="img-responsive"></p>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-4 wthree_testimonials_grid_pos">
					<div class="row">
						<div class="col-lg-4 col-md-4 col-sm-4 grid-test-w3l">
							<img src="images/Rahul Ravi.jpg" alt=" " width="105px" class="img-responsive" />
						</div>
						<div class="col-lg-8 col-md-8 col-sm-8  wthree_testimonials_grid1">
							<h5>Rahul </h5>
							<p>Ravi</p>
						</div>
						
						</div>
					</div>
					
					</div>
				</div>
			</li>
		</ul>
	
</section>
</div>
<!-- //testimonials -->

 <!-- map -->
 <section class="footer">
	<div class="map" id="map">
	
		<ul class="faq">
			<li class="item1"><a href="#"> Click Here For Route Map</a>
				<ul>
					<li class="subitem1">
						<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3507.116983999782!2d79.43247734936688!3d28.47602339781478!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39a009ec16434981%3A0xae78d4c57e1c044d!2sShri+Ram+Murti+Smarak+College+Of+Engineering+And+Technology%2C+Bareilly!5e0!3m2!1sen!2sin!4v1538847943702" width="600" height="450" frameborder="0" style="border:4s" allowfullscreen></iframe>
					</li>										
				</ul>
			</li>
		</ul>
		
		
	</div>
<!-- //map -->
	<!-- contact -->
	<div class="slideanim">
	<div class="w3ls-section contact" id="contact">
		<div class="container">
			<div class="w3-heading-all contact-head">
		
		<span  class="w3-heading-icon">
		</span>
		</div>
			<div class="contact-form">
			<div class="row">
				<div class="col-lg-5 col-md-5 col-sm-5 contact-left">
					<div class="address">
						<h5>Address :</h5>
						<p><i class="fas fa-map-marker"></i>SRMSCET,Bareilly</p>
					</div>
					<div class="address address-mdl">
						<h5>phone :</h5>
						<p><i class="fas fa-phone"></i> +91 9458708500, 9458708074</p>
						
					</div>
					<div class="address">
						<h5>Email :</h5>
						<p><i class="fas fa-envelope"></i> <a href="mailto:info@example.com">Suraj212.brh@gmail.com</a></p>
						<p><i class="fas fa-envelope"></i> <a href="mailto:info@example.com">Shivanshudixit16@gmail.com</a></p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-lg-7 col-md-7 col-sm-7 contact-right">
					<h5>Connect With Us  :</h5>
					<form action="#" class="form_w3layouts" method="post">
						<input type="text" placeholder="First Name" required="">
						<input type="text" placeholder="last Name" required="">
						<input class="email" type="email" placeholder="Email" required="">
						<input type="text" placeholder="Phone Number" required="">
						<textarea placeholder="Message" required=""></textarea>
						<input type="submit" value="SUBMIT">
						
					</form>
				</div>
				</div>
			</div>
		</div>
		
	</div>
	</div>
	
	<!-- //contact -->

<div class="footer-w3layouts">


				<div class="container">
				<div class="agile-copy">
					<p>© 2018 ECAS. All rights reserved | Made with <span style="color:red">&hearts;</span></p>
				</div>
					<div class="clearfix"></div>
				</div>
			</div>
           </section>
		   
		   
		 


<script src="js/jquery-2.2.3.min.js"></script>
<script  src="js/jquery.js"></script>
<script  src="js/bootstrap.min.js"></script>
<script  src="js/move-top.js"></script>
<script  src="js/easing.js"></script>
<script  src="js/SmoothScroll.min.js"></script>	
<script  src="js/smoothbox.min.js"></script>
<script src="js/float-panel.js"></script>

<!-- flexSlider -->
				<script defer src="js/jquery.flexslider.js"></script>
				<script type="text/javascript">
					$(window).load(function(){
					  $('.flexslider').flexslider({
						animation: "slide",
						start: function(slider){
						  $('body').removeClass('loading');
						}
					  });
					});
				</script>
<!-- //flexSlider -->


<!-- tabs -->

<script src="js/easy-responsive-tabs.js"></script>
<script>
$(document).ready(function () {
$('#horizontalTab').easyResponsiveTabs({
type: 'default', //Types: default, vertical, accordion           
width: 'auto', //auto or any width like 600px
fit: true,   // 100% fit in a container
closed: 'accordion', // Start closed if in accordion view
activate: function(event) { // Callback function if tab is switched
var $tab = $(this);
var $info = $('#tabInfo');
var $name = $('span', $info);
$name.text($tab.text());
$info.show();
}
});
$('#verticalTab').easyResponsiveTabs({
type: 'vertical',
width: 'auto',
fit: true
});
});
</script>
<!--//tabs-->

	<script type="text/javascript">
	$(window).load(function() {
	$("#flexiselDemo1").flexisel({
		visibleItems:1,
		animationSpeed: 1000,
		autoPlay:false,
		autoPlaySpeed: 3000,    		
		pauseOnHover: true,
		enableResponsiveBreakpoints: true,
		responsiveBreakpoints: { 
			portrait: { 
				changePoint:480,
				visibleItems: 1
			}, 
			landscape: { 
				changePoint:640,
				visibleItems:1
			},
			tablet: { 
				changePoint:768,
				visibleItems: 1
			}
		}
	});

	});
	</script>
	<script type="text/javascript" src="js/jquery.flexisel.js"></script>
	
<!-- for-Map -->
		<script type="text/javascript">
			$(function() {
			
				var menu_ul = $('.faq > li > ul'),
					   menu_a  = $('.faq > li > a');
				
				menu_ul.hide();
			
				menu_a.click(function(e) {
					e.preventDefault();
					if(!$(this).hasClass('active')) {
						menu_a.removeClass('active');
						menu_ul.filter(':visible').slideUp('normal');
						$(this).addClass('active').next().stop(true,true).slideDown('normal');
					} else {
						$(this).removeClass('active');
						$(this).next().stop(true,true).slideUp('normal');
					}
				});
			
			});
		</script>
<!-- //for-Map -->

<!-- start-smoth-scrolling -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
	<!-- //here ends scrolling icon -->
<!-- scrolling script -->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script> 
<!-- //scrolling script -->
<!--//start-smoth-scrolling -->
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
<script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {

    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>




</body>
</html>