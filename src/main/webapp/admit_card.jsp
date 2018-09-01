<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="model.Student"  import="java.net.URI"%>
    <%
    Student stud=(Student)request.getAttribute("student");
    if(stud==null){
    response.sendRedirect("admitform.jsp");
    } %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Admit Card</title>
<head>
<style>
#main    
{
    background-color: #FFFFFF;
    width: 1000px;
    margin: 0px auto;
    border: 1px solid black; /* width, style, colour */
} 
#main1   
{
	margin-left: 10px;
	margin-right: 10px;
}

}
</style>
</head>
<body>
<div id="main">
<div id="main1">
<link rel="icon" href="https://upload.wikimedia.org/wikipedia/commons/8/86/Aktu_logo.png" type="image/png" sizes="16x16">
<center><img src="<%=URI.create(request.getRequestURL().toString()).resolve(request.getContextPath())%>/images/aktubanner.jpg" alt="photo" height = "100" width="900"></center>
<center><h3><%=request.getAttribute("header")%></h3></center>
<table style="width: 100%;">
<tbody><tr><td colspan="2"><hr></td></tr>
    <tr>
		<td style="width: 90%;">
        <table style="width: 100%;">
        <thead>
			<tr>
				<td style="width: 25%;"></td>
				<td style="width: 5%;"></td>
				<td style="width: 70%;"></td>
			</tr>
		</thead>
		<tbody>
		<tr>
			<td>
				<span id="Roll No." style="font-weight: bold;">Roll No.</span></td>
			<td><b>:</b></td>
			<td>
				<span id="Roll_No"><%=stud.roll%></span>
			</td>
		</tr>
		<tr>
			<td>
				<span id="Name of Candidate" style="font-weight: bold;">Name of Candidate</span></td>
			<td><b>:</b></td>
			<td>
				<span id="Name_of_Candidate"><%=stud.name%></span>
			</td>
		</tr>
		<tr>
			<td>
				<span id="Gender" style="font-weight: bold;">Gender</span></td>
			<td><b>:</b></td>
			<td>
				<span id="Sex"><%=stud.gender%></span>
			</td>
		</tr>
		<tr>
			<td>
				<span id="Father's Name" style="font-weight: bold;">Father's Name</span></td>
			<td><b>:</b></td>
			<td>
				<span id="Fathers_Name"><%=stud.fathername%></span>
			</td>
		</tr>
		<tr>
			<td>
				<span id="Institute" style="font-weight: bold;">Institute</span></td>
			<td><b>:</b></td>
			<td>
				<span id="InstituteId">(<%=stud.collegecode%>)</span>
				<span id="InstituteName"><%=stud.clgname%></span>
			</td>
		</tr>
		<tr>
			<td>
				<span id="Course" style="font-weight: bold;">Course</span></td>
			<td><b>:</b></td>
			<td>
				<span id="CourseID"><%=stud.course%></span>
			</td>
		</tr>
		<tr>
			<td>
				<span id="Branch" style="font-weight: bold;">Branch</span></td>
			<td><b>:</b></td>
			<td>
				<span id="BranchID"><%=stud.branch%></span>
				
			</td>
		</tr>
		<tr>
			<td>
				<span id="Semester" style="font-weight: bold;">Semester</span></td>
			<td><b>:</b></td>
			<td>
				<span id="SemesterID"><%=stud.semester%></span>
			</td>
		</tr>
		<tr>
			<td>
				<span id="Examination Center Code" style="font-weight: bold;">Examination Center Code</span></td>
			<td><b>:</b></td>
			<td>
				<span id="Examination_Center_Code_ID"><%=stud.centercode %></span>
			</td>
		</tr>
		<tr>
			<td>
				<span id="Examination_Center_Name" style="font-weight: bold;">Examination Center Name</span></td>
			<td><b>:</b></td>
			<td>
				<span id="Examination_Center_Name_ID"><%=stud.centername%></span>
			</td>
		</tr>
		</tbody></table>
        </td>
		<td style="width: 10%;">
			<table style="width: 100%; padding-right: 10px;">
				<tbody><tr>
					<td>
						<img id="images" src="<%=URI.create(request.getRequestURL().toString()).resolve(request.getContextPath())%>/images?roll=<%=stud.roll%>" style="width: 100px; Height: 120px;">
					</td>
				</tr>
				</tbody></table>
		</td>
    </tr>
</tbody>
</table>
<table style="width: 100%;">
	<tbody><tr><td><hr></td></tr>
	<tr><td>
	<div></div><table style="width: 100%;"></table>
	<table cellspacing="0" rules="all" border="1" id="ctl01_grdSubject" style="border-collapse:collapse;width: 100%;">
		<tbody><tr>
			<th scope="col">Subject Code</th><th scope="col">Subject Name</th><th scope="col">Exam Date*</th><th scope="col">Timings</th><th scope="col">AnsBookNo.</th>
		</tr><tr>
			<td>ROE042</td><td>Nano Science</td><td>14/05/2018</td><td>9.30AM-12.30PM</td><td>&nbsp;</td>
		</tr><tr>
			<td>RCS401</td><td>Operating Systems</td><td>16/05/2018</td><td>9.30AM-12.30PM</td><td>&nbsp;</td>
		</tr><tr>
			<td>RCS403</td><td>Theory of Automata and Formal Languages</td><td>18/05/2018</td><td>9.30AM-12.30PM</td><td>&nbsp;</td>
		</tr><tr>
			<td>REC405</td><td>Introduction to Microprocessor</td><td>23/05/2018</td><td>9.30AM-12.30PM</td><td>&nbsp;</td>
		</tr><tr>
			<td>RCS402</td><td>Software Engineering</td><td>25/05/2018</td><td>9.30AM-12.30PM</td><td>&nbsp;</td>
		</tr><tr>
			<td>RAS402</td><td>Environment &amp; Ecology</td><td>26/05/2018</td><td>2.00PM-05.00PM</td><td>&nbsp;</td>
		</tr><tr>
			<td>RCS451</td><td>Operating Systems Lab</td><td>NA</td><td>&nbsp;</td><td>&nbsp;</td>
		</tr><tr>
			<td>RCS452</td><td>Software Engineering Lab</td><td>NA</td><td>&nbsp;</td><td>&nbsp;</td>
		</tr><tr>
			<td>RCS453</td><td>TAFL Lab</td><td>NA</td><td>&nbsp;</td><td>&nbsp;</td>
		</tr><tr>
			<td>RCS454</td><td>Python Language Programming Lab</td><td>NA</td><td>&nbsp;</td><td>&nbsp;</td>
		</tr>
	</tbody></table>
	</td></tr></tbody></table>
	<tr>
	<td>
		<table style="width: 100%;">
			<tbody><tr>
			<td>
				<hr>
				<h4><b>Important Notes</b></h4>
				<hr>
			</td></tr>
			<tr>
				<td><strong>1.:</strong> The student should bring the <strong>Admit Card</strong> along with a <strong>Photo Id</strong> for appearing in the examination failing which he/she shall not be allowed to appear in the examination.
					<br>
					<strong>2.:</strong> This admit card is <strong>PROVISIONAL</strong>.The result will be declared subject to eligibility of the candidate based on the past result on vaild candidature.
					<br>
					<strong>3.:</strong> Please verify the Exam date with date sheet available on website. In case of any discrepancy the date sheet available on the website shall be <b>FINAL</b>. 
					<br>
					<strong>4.:</strong> If photograph of Student is not available in the admit card, paste a recent photgraph attested by the director of respective institute. 
					<br>
					<strong>5.:</strong> AKTU is providing various facilties to student online. Kindly keep visiting Student Dashboard for updates.<br> View your daily exam attendance here https://erp.aktu.ac.in/WebPages/Public/Students/Dashboard.aspx
					<br>
				</td>
			</tr>
			</tbody>
		</table>
		<table style="width: 100%;">
			<tbody><tr>
				<td style="width: 80%; text-align: left;">
				</td>
				<td style="width: 20%; text-align: center;"><strong><img id="ctl01_imgCOESign" src="<%=URI.create(request.getRequestURL().toString()).resolve(request.getContextPath())%>/images/coesign.jpg" style="height:50px;width: 100px; margin-top: 2px;"></strong></td>
				</tr>
				<tr>
					<td style="width: 30%; text-align: left;">
						<b>Counter Signed by Director of Institute</b>
					</td>					
					<td style="width: 20%; text-align: center;"><b>Controller of Examinations</b>
					</td>
				</tr>
			</tbody>
		</table>
		<br><br>
	</td>
	</tr>
	</div></div>
	</body>
</html>