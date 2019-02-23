package general;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import database.DatabaseConnection;
import model.Student;
import model.Subject;

/**
 * Servlet implementation class GetAdmit
 */
public class GetAdmit extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String header,seme,sem;
		HttpSession sessio=request.getSession();
		PrintWriter out = response.getWriter();
		String roll;//=request.getParameter("roll_no");
		if(sessio.getAttribute("susername")!=null)
		{
			roll=new DatabaseConnection().getRoll((String)sessio.getAttribute("susername"));
		}
		else if(request.getParameter("roll_no") !=null)
		{
			roll =request.getParameter("roll_no");
		}
		else
		{
			response.sendRedirect("admit_choose_roll.jsp");
			return;
		}
		
		try {
			Connection con=DatabaseConnection.getCon();
			PreparedStatement p=con.prepareStatement("select SEMESTER,STATUS from admitreleased where roll_no=?");
			p.setString(1, roll);
			ResultSet rs=p.executeQuery();
			if(rs.next())
			{
				seme=rs.getString(1);
				String status=rs.getString(2);
				if(status.equals("low_attendance"))
				{
					out.write("Your admit card is not released b/s of low attendance");
					return;
				}
			}
			else
			{
				out.write("admit card not uploaded yet");
				return;
			}
			p=con.prepareStatement("select STDNAME,COURSE,BRANCH,BATCH,CLGNAME,STDEMAIL,STDCONTACT,FATHER_NAME,DOB,gender from studentinfo where roll_no=?");
			p.setString(1, roll);
		    rs= p.executeQuery();
			Student stud = new Student();
			if(rs.next())
			{
				 stud.name=rs.getString(1);
				 stud.course=rs.getString(2);	
				 stud.branch=rs.getString(3);
				 stud.batch=rs.getString(4);	
				 stud.clgname=rs.getString(5);
				 stud.stdemail=rs.getString(6);
				 stud.stdcontact=rs.getString(7);
				 stud.fathername=rs.getString(8);
				 stud.dob=rs.getString(9);	
				 stud.roll=roll;
				 stud.gender=rs.getString(10);
				 stud.collegecode=new DatabaseConnection().getCollegeCode(stud.clgname);
				 stud.centername=new DatabaseConnection().getCenter(stud.clgname);
				 stud.centercode=new DatabaseConnection().getCollegeCode(stud.centername);
				 stud.semester=Integer.parseInt(seme);
				 if(stud.semester% 2==0)
				 {
					 sem="Even";
				 }
				 else
				 {
					 sem="Odd";
				 }
				 String cursession=""+new DatabaseConnection().getCurrentSession();
				 String  session = cursession+"-"+(Integer.parseInt(cursession.substring(cursession.length()-2))+1);
				 header=sem+" Semester "+session+" Examination Admit Card";
				 request.setAttribute("header",header);
				 request.setAttribute("student",stud);
				 p=con.prepareStatement("select SUB_CODE from studentsub where roll_no=? and session_start=? and semester=?");
				 p.setString(1,stud.roll);
				 p.setString(2,""+cursession);
				 p.setString(3,""+stud.semester);//semester in subjects table is string but in studentsinfo is int
			     rs=p.executeQuery();
			     ArrayList<Subject> subjects = new ArrayList<Subject>();
			     while(rs.next())
			     {
			    	 Subject sub=new Subject();
			    	 sub.subcode=rs.getString(1);
			    	 sub.subname=new DatabaseConnection().getSubjectName(sub.subcode);
			    	 p=con.prepareStatement("select exam_date,exam_time from exam_dates where sub_code=? and SESSION_START=?");
			    	 p.setString(1,sub.subcode);
					 p.setString(2,cursession);
					 ResultSet r1=p.executeQuery();
					 if(r1.next())
					 {
						 sub.date=r1.getString(1);
						 sub.time=r1.getString(2);
					 }
			    	 subjects.add(sub);
			     }
			     request.setAttribute("subjects",subjects);
				 RequestDispatcher rd=request.getRequestDispatcher("admit_card.jsp");
				 rd.forward(request, response);
				 
			}
			else
			{
			    
				out.write("roll_no doesn't exsists");
			}
		}
		catch(Exception e)
		{
			PrintWriter p= response.getWriter();
			p.write("error occured");
			e.printStackTrace();
		}
	}

}
