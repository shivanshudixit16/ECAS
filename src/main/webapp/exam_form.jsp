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

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html5/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fill_Form</title>
<style>
.contact-form {
	padding: 2em;
	background-color: #0c2149;
}

.map iframe {
	width: 100%;
	min-height: 350px;
	border: none;
}

.contact-form h5 {
	font-size: 1.6em;
	color: #fff;
	text-transform: capitalize;
	font-weight: 600;
	letter-spacing: 2px;
}

.contact-right h5 {
	font-size: 2em;
	color: #fff;
	text-transform: capitalize;
	font-weight: 600;
	letter-spacing: 2px;
}

.contact-right p {
	font-size: 1em;
	color: #555;
	margin: 1em 0 3em;
	font-weight: 500;
}

.address.address-mdl {
	margin: 2em 0;
}

.address p {
	font-size: 0.9em;
	color: #e1e6e9;
	margin-top: 1em;
	font-weight: 500;
}

.address p i.glyphicon {
	font-size: 1em;
	color: #face77;
	margin-right: 0.5em;
}

.address p a {
	color: #e1e6e9;
}

form.form_w3layouts {
	margin: 2em 0 0;
}

.contact-form input[type="text"], .contact-form input[type="email"] {
	width: 45%;
	color: #fff;
	background: none;
	outline: none;
	font-size: 1em;
	padding: 0.8em;
	border: solid 1px #fff;
	-webkit-appearance: none;
	display: inline-block;
	margin-bottom: 25px;
	box-sizing: border-box;
	margin-right: 22px;
}

.contact-form textarea {
	resize: none;
	width: 94%;
	background: none;
	color: #fff;
	font-size: 1em;
	outline: none;
	padding: .6em .8em;
	border: solid 1px #fff;
	min-height: 9em;
	-webkit-appearance: none;
	box-sizing: border-box;
}

.contact-form ::-webkit-input-placeholder {
	color: #fff;
}

.contact-form :-moz-placeholder { /* Firefox 18- */
	color: #fff;
}

.contact-form ::-moz-placeholder { /* Firefox 19+ */
	color: #fff;
}

.contact-form :-ms-input-placeholder {
	color: #fff;
}

.contact-form input[type="submit"] {
	border: none;
	outline: none;
	color: #fff;
	padding: 0.4em 1.5em;
	font-size: 1em;
	margin: 1em 1em 0 0;
	-webkit-appearance: none;
	background: #0099e5;
	transition: 0.5s all;
	-webkit-transition: 0.5s all;
	-moz-transition: 0.5s all;
	letter-spacing: 3px;
	cursor: pointer;
}

.contact-form input[type="submit"]:hover {
	background-color: #05cc47;
}

.agileits-w3layouts-map iframe {
	width: 100%;
	min-height: 350px;
	border: none;
}

.w3-contact-pos {
	position: absolute;
}

.contact {
	padding: 2em 0em;
}

.w3-contact-pos {
	position: absolute;
	left: 31%;
	bottom: 90%;
	background: #66ccbe;
	padding: 2em;
}

.w3-contact-pos h3 {
	font-size: 2em;
	color: #fff;
	text-transform: Capitalize;
}

.w3-contact-pos p {
	color: #fff;
	font-size: 1.2em;
	text-align: center;
}

.contact-head h3 {
	margin-top: 0.3em;
}

.contact-left {
	padding-top: 50px;
}
/*--//contact--*/
/*--map--*/
.faq li {
	margin-top: 0.5em;
}

.faq li:nth-child(1) {
	margin: 0;
}

ul.faq li {
	list-style-type: none;
}

.faq li a {
	padding: 1.2em;
	width: 100%;
	display: block;
	position: relative;
	color: #fff;
	text-decoration: none;
	background: #ff4f81;
	text-align: center;
	font-size: 1.1em;
	text-transform: uppercase;
	letter-spacing: 1px;
}

.faq li a:hover, .faq li a.active {
	color: #fff;
	background: #0c2149;
}

.faq iframe {
	width: 100%;
	min-height: 25em;
	border: none;
	margin: 0 0 -6px;
}

.w3ls-section contact {
	
}

.container {
	
}

.w3-heading-all contact-head {
	
}

.w3-heading-icon {
	
}

.row {
	
}
</style>
</head>

<div class="w3ls-section contact" id="contact">
	<div class="container">
		<div class="w3-heading-all contact-head">
			<div>
				<a href="logout.jsp">Logout</a>
			</div>
			<br> <span class="w3-heading-icon"> </span>
		</div>

		<div class="contact-form">
			<div class="row">

				<h5>Fill Examination Form</h5>
				<form action="submitexamform" class="form_w3layouts" method="post">
					<input type="text" placeholder="Name" name="name"
						value="<%=stud.name%>" required="" readonly><br> 
						<input
						type="text" placeholder="Father's Name" name="faname"
						value="<%=stud.fathername%>" readonly required=""><br>
					<input type="text" placeholder="Roll No." name="roll"
						value="<%=stud.roll%>" readonly required=""><br> 
						<input
						type="date" required="" value="<%=stud.dob%>" readonly size="30"
						name="dob"
						style="background-color: #001A4F; border: 1px solid white; font-size: 18px; color: white; font-family: Times New Roman"><br>
					<br> 
					<input type="email" placeholder="Email" name="email"
						value="<%=stud.stdemail%>" readonly required=""><br>
					<input type="text" placeholder="Phone Number" name="phone"
						required="" value="<%=stud.stdcontact%>" readonly
						style="background-color: #001A4F; border: 1px solid white; width: 572px; height: 45px; font-size: 18px; color: white; font-family: Times New Roman"><br>

					<input type="text" name="course" value="<%=stud.course%>" readonly
						style="background-color: #001A4F; border: 1px solid white; width: 572px; height: 45px; font-size: 18px; color: white; font-family: Times New Roman font-variant : small-caps">
					<br> <br> <input type="text" select name="branch"
						value="<%=stud.branch%>" readonly
						style="background-color: #001A4F; border: 1px solid white; width: 572px; height: 45px; font-size: 18px; color: white; font-family: Times New Roman font-variant : small-caps">
						<br><input type="text" placeholder="semester" name="semester"
						value="<%=stud.semester%>" readonly required=""><br>
					<br> <input type="text" placeholder="Session" required=""
						value="<%=new DatabaseConnection().getCurrentSession() %>" name="session" ><br>
					<p style="font-size: 30px; color: #FFFFFF">Add Subjects :</p>
					<br>

					<fieldset>
						<legend>Demo: Get Selected Options</legend>
						<p>
							<select name="subjects" id="demoSel" size="4" multiple="" >
								<%for(Subject sub:subjects){%><option value="<%=sub.subcode%>"><%=sub.subname%></option><%}%>
							</select> 
							<input type="submit" value="Submit">
							<textarea name="display" id="display"
								placeholder="view select list value(s) onchange" cols="10"
								rows="4" readonly=""></textarea>
						</p>
					</fieldset>
				</form>
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
				<br>
			</div>
		</div>
	</div>
</div>
</html>