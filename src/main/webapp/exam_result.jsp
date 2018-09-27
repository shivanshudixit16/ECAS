<%@page import="database.DatabaseConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="model.*,java.util.*"  import="java.net.URI"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


    <%
    Student stud=(Student)request.getAttribute("student");
    if(stud==null){
    response.sendRedirect("admitform.jsp");
    } 
    HashMap<Integer,ArrayList> smap=(HashMap<Integer,ArrayList>)request.getAttribute("results");
%>


<title>Result</title>
	<style>
	#main    
	{
		background-color: #FFFFFF;
		width: 1300px;
		margin: 0px auto;
		border: 1px solid black; /* width, style, colour */
	} 
	#main1   
	{
		margin-left: 10px;
		margin-right: 10px;
	}
	</style>
</head>
<body>
	<link rel="icon" href="https://upload.wikimedia.org/wikipedia/commons/8/86/Aktu_logo.png" type="image/png" sizes="16x16">
	<center><img src="https://erp.aktu.ac.in/Images/Site/AKTUBanner.jpg" alt="photo"></center>
	<center><h3>Student Result Card</h3></center>
	<table class="table-responsive" style="width: 100%;">
	<caption>
	</caption><tbody><tr>
			<td style="width: 85%; border: 1px solid #d2d2d2; padding: 10px;">
				<table style="width: 100%; font-family: Verdana; font-size: 8pt; vertical-align: top;">
					<thead style="width: 100%;">
						<tr>
							<td style="width: 18%;"></td>
							<td style="width: 2%;"></td>
							<td style="width: 30%;"></td>
							<td style="width: 18%;"></td>
							<td style="width: 2%;"></td>
							<td style="width: 30%;"></td>
						</tr>
					</thead>
					<tbody><tr class="highlight">
						<td>
							<span id="forlblInstituteCodeName" style="font-weight: bold;">Institute Code &amp; Name</span>
						</td>
						<td><b>:</b></td>
						<td>
							<div style="width: 255%;">
								<span id="lblInstitute">(<%=stud.collegecode%>)<%=stud.clgname %></span></div>
						</td>
					</tr>
					<tr class="highlight">
						<td>
							<span id="forlblCourseCodeName" style="font-weight: bold;">&amp; Name</span>
						</td>
						<td><b>:</b></td>
						<td>
							<span id="lblCourse"><%=stud.course %></span>
						</td>
						<td>
							<span id="forlblBranchCodeName" style="font-weight: bold;">Branch Code &amp; Name</span>
						</td>
						<td><b>:</b></td>
						<td>
							<span id="lblBranch">(<%=new DatabaseConnection().getBranchCode(stud.course,stud.branch)%>) <%=stud.branch %></span>
						</td>
					</tr>
					<tr class="highlight">
						<td>
							<span id="forlblRollNo" style="font-weight: bold;">RollNo</span>
						</td>
						<td><b>:</b></td>
						<td>
							<span id="lblRollNo"><%=stud.roll %></span>
						</td>
					</tr>
					<tr class="highlight">
						<td>
							<span id="forlblFullName" style="font-weight: bold;">Name</span>
						</td>
						<td><b>:</b></td>
						<td>
							<span id="lblFullName"><%=stud.name%></span>
						</td>

					</tr>
					<tr class="highlight">
						<td>
							<span id="forlblFatherName" style="font-weight: bold;">Father's Name</span>
						</td>
						<td><b>:</b></td>
						<td>
							<span id="lblFatherName"><%=stud.fathername%></span>
						</td>
						<td>
							<span id="forlblGender" style="font-weight: bold;">Gender</span>
						</td>
						<td><b>:</b></td>
						<td>
							<span id="lblGender"><%=stud.gender%> </span>
						</td>
					</tr>
					<tr class="highlight">
						<td>
							<span id="forlblCategory" style="font-weight: bold;">Category</span>
						</td>
						<td><b>:</b></td>
						<td>
							<span id="lblCategory">GEN</span>
						</td>
					</tr>
				</tbody></table>
			</td>
			<td style="width: 14%; border: 1px solid #d2d2d2; padding: 10px;">
				<table style="width: 100%; padding-right: 10px; text-align: center; font-family: Verdana; font-size: 8pt; vertical-align: top;">
					<tbody><tr>
						<td>
							<img id="imgphoto" src="<%=URI.create(request.getRequestURL().toString()).resolve(request.getContextPath())%>/images?roll=<%=stud.roll%>" style="height:100px;margin-right: 10px;">
						</td>
					</tr>
				</tbody></table>
				<table style="width: 100%; padding-right: 10px; text-align: center; font-family: Verdana; font-size: 8pt; vertical-align: top;">
					<tbody><tr>
						<td>
							
						</td>
					</tr>
				</tbody></table>
				<table style="width: 100%; padding-right: 10px; text-align: center; font-family: Verdana; font-size: 8pt; vertical-align: top;">
						<td><a href="#" onclick="return PrintDiv();"><i class="fa fa-print" aria-hidden="true"></i>Print Result</a> </td>
					<tbody><tr>
					</tr>
				</tbody></table>
			</td>
		</tr>
	</tbody></table>

<style type="text/css">
.accordion {
    background-color: #FF9999;
    color: #444;
    cursor: pointer;
    padding: 18px;
    width: 100%;
    border: none;
    text-align: left;
    outline: none;
    font-size: 15px;
    transition: 0.4s;
}

    .contentclass {
        margin: 1em;
        border-collapse: collapse;
        display: flexbox;
    }

    .headerclass {
        padding: 25px 10px 25px 10px;
        border: 1.25px #740d02 solid;
        background: #ffefef;
        margin-bottom: 4px;
        display: flexbox;
    }



        .active, .headerclass:hover {
            background-color: #f9dada;
        }



        .headerclass:after {
            background: url('../../Images/Site/Artifacts/eyeicon.png') no-repeat;
            margin-left: 20px;
            margin-top: -25px;
        }

    

    .button {
        background-color: #004A7F;
        -webkit-border-radius: 10px;
        border-radius: 10px;
        border: none;
        color: #FFFFFF;
        cursor: pointer;
        display: inline-block;
        padding: 5px 10px;
        text-align: center;
        text-decoration: none;
    }

    @-webkit-keyframes glowing {
        0% {
            background-color: #B20000;
            -webkit-box-shadow: 0 0 3px #B20000;
        }

        50% {
            background-color: #FF0000;
            -webkit-box-shadow: 0 0 10px #FF0000;
        }

        100% {
            background-color: #B20000;
            -webkit-box-shadow: 0 0 3px #B20000;
        }
    }

    @-moz-keyframes glowing {
        0% {
            background-color: #B20000;
            -moz-box-shadow: 0 0 3px #B20000;
        }

        50% {
            background-color: #FF0000;
            -moz-box-shadow: 0 0 10px #FF0000;
        }

        100% {
            background-color: #B20000;
            -moz-box-shadow: 0 0 3px #B20000;
        }
    }

    @-o-keyframes glowing {
        0%; {
            background-color: #B20000;
            box-shadow: 0 0 3px #B20000;
        }

        50% {
            background-color: #FF0000;
            box-shadow: 0 0 10px #FF0000;
        }

        100% {
            background-color: #B20000;
            box-shadow: 0 0 3px #B20000;
        }
    }

    @keyframes glowing {
        0% {
            background-color: #B20000;
            box-shadow: 0 0 3px #B20000;
        }

        50% {
            background-color: #FF0000;
            box-shadow: 0 0 10px #FF0000;
        }

        100% {
            background-color: #B20000;
            box-shadow: 0 0 3px #B20000;
        }
    }

    .button {
        -webkit-animation: glowing 1500ms infinite;
        -moz-animation: glowing 1500ms infinite;
        -o-animation: glowing 1500ms infinite;
        animation: glowing 1500ms infinite;
    }
</style>

<% String session_year=null;
for(int i=1;i<=stud.semester;i++)//stud.semester or8 for all semesters 
{
	 ArrayList<Subject> subjects=(ArrayList<Subject>)smap.get(i);
	 if(subjects==null || subjects.isEmpty())
	 {
		 break;
	 }
	
	%>


			
		<%if(!(subjects.get(0).exam_session).equals(session_year))
		{
			int tot_ob=0,tot_mm=0;
			for(Subject sub:subjects)
			{
				tot_ob+=Integer.parseInt(sub.internalmarks)+Integer.parseInt(sub.externalmarks);
				tot_mm+=Integer.parseInt(sub.external_mm)+Integer.parseInt(sub.internal_mm);
			}
			ArrayList<Subject> subjects2=subjects2=(ArrayList<Subject>)smap.get(i+1);
			
			 if(!(subjects2==null || subjects2.isEmpty()))
			 {
				 for(Subject sub:subjects2)
					{
					 	tot_ob+=Integer.parseInt(sub.internalmarks)+Integer.parseInt(sub.externalmarks);
						tot_mm+=Integer.parseInt(sub.external_mm)+Integer.parseInt(sub.internal_mm);
					}
			 }
				
		
		%>
		<button class="accordion" id="btn<%=i%>">		
		
                <table style="width: 100%; font-family: Verdana; font-size: 9pt; cursor: pointer;" class="table-responsive">
                    <tbody><tr>
                        <td>
                            <span id="ctl04_lblSession"><b>Session : </b><%=subjects.get(0).exam_session+"-"+(Integer.parseInt(subjects.get(0).exam_session.substring(subjects.get(0).exam_session.length()-2))+1)%>(REGULAR)</span>
                            <b>Semesters : </b>
                            <span id="ctl04_lblSem"><%out.write(i+","+(i+1));%></span>
                            <b>Result : </b>
                            <span id="ctl04_lblResult">CP(0),PASS </span>
                            <b>Marks : </b>
                            <span id="ctl04_lblMarks"><%=tot_ob+"/"+tot_mm%></span>
                            <span id="ctl04_lblCOP"></span>
                            <span id="ctl04_lblIsAUCPassed"></span>
                            <span id="ctl04_lblDivision"></span>


                        </td>
                    </tr>
                </tbody></table>
                	
                	</button>
                	<div id="panel<%=i%>" style="display:none";>
          	<%}
		
        %>	
            
		
<table style="width: 100%; font-family: Verdana; font-size: 8pt;">
    <thead>
        <tr>
            <td style="width: 20%;">
                <span id="ctl04_ctl00_forlblSemesterId" style="font-weight:bold;">Semester</span></td>
            <td style="width: 2%;"><b>:</b></td>
            <td style="width: 18%;">
                <span id=""><%=i%></span>
            </td>

            <td style="width: 20%;">
                <span id="" style="font-weight:bold;">Even/Odd</span></td>
            <td style="width: 2%;"><b>:</b></td>
            <td style="width: 18%;">
            <%
            String sem;
            if(i% 2==0)
			 {
				 sem="Even";
			 }
			 else
			 {
				 sem="Odd";
			 } 
            int noofsub=0,tot_ob=0;
            for(Subject sub:subjects)
			{
            	noofsub++;
				tot_ob+=Integer.parseInt(sub.internalmarks)+Integer.parseInt(sub.externalmarks);
			
			}
			 %>
                <span id=""><%=sem%></span>
            </td>
        </tr>

        <tr>
            <td>
                <span id="" style="font-weight:bold;">Total Subjects</span></td>
            <td><b>:</b></td>
            <td>
                <span id=""><%=noofsub %></span>
            </td>

            <td>
                <span id="" style="font-weight:bold;">Theory Subjects</span></td>
            <td><b>:</b></td>
            <td>
                <span id="">5</span>
            </td>
        </tr>

        <tr>
            <td>
                <span id="" style="font-weight:bold;">Practical Subjects</span></td>
            <td><b>:</b></td>
            <td>
                <span id="">4</span>
            </td>

            <td>
                <span id="" style="font-weight:bold;">Total Marks Obt.</span></td>
            <td><b>:</b></td>
            <td>
                <span id=""><%=tot_ob %></span>
            </td>
        </tr>

        <tr>
            <td>
                <span id="" style="font-weight:bold;">Result Status</span></td>
            <td><b>:</b></td>
            <td>
                <span id="">CP(0)</span>
            </td>
            <td>
                <span id="" style="font-weight:bold;">SGPA</span></td>
            <td><b>:</b></td>
            <td>
                <span id="">---</span>
            </td>
        </tr>

        <tr>
            <td>
                <span id="" style="font-weight:bold;">Date of Declaration</span></td>
            <td><b>:</b></td>
            <td>
                <span id="">-----</span>
            </td>           
        </tr>
       </thead>
       </table>
              
<table style="width: 100%; font-family: Verdana; font-size: 8pt;" class="table table-responsive">
    <tbody>
    <tr>
        <td>
            <div>
					<table cellspacing="0" rules="all" border="1" id="ctl04_ctl00_ctl00_grdViewSubjectMarksheet" style="border-collapse:collapse;width: 100%; font-family: Verdana; font-size: 8pt;table-layout:fixed;">
						<tbody><tr>
							<th scope="col">Code</th><th scope="col">Name</th><th scope="col">Type</th><th scope="col">Internal</th><th scope="col">External</th><th scope="col">Back Paper</th><th scope="col">Grade</th>
						</tr>
						<%for(Subject sub:subjects){%>
						<tr>
							<td>
                            <span id="" style="white-space: pre-wrap;">
							<%=sub.subcode%></span>
                        </td><td>
                            <span id="" style="white-space: pre-wrap;"><%=sub.subname%></span>
                        </td><td>
                            <span id="" style="white-space: pre-wrap;">Theory</span>
                        </td><td><%=sub.internalmarks%></td><td><%=sub.externalmarks%></td><td>--</td><td>B+</td>
						</tr>
						<%}%>
					
					</tbody></table>
				</div>
        </td>
    </tr>
</tbody>
</table>

<%if((subjects.get(0).exam_session).equals(session_year))
{out.write("<br><hr><br></div>");
}
else
{
	out.write("<br><hr><hr>");
	}
session_year=subjects.get(0).exam_session;%>


<script type="text/javascript">
var acc = document.getElementById("btn<%=i%>");
    acc.addEventListener("click", function() {
        
	
        var panel = document.getElementById('panel<%=i%>');
        if (panel.style.display === "block") {
            panel.style.display = "none";
        } else {
            panel.style.display = "block";
        }
    });

</script>


    <%}%>

</body>
</html>
<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
	response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
	response.setHeader("Expires", "0");
%>
