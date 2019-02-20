

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.DatabaseConnection;
import model.Student;
import model.Subject;

/**
 * Servlet implementation class GetExamResult
 */
public class GetExamResult extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out= response.getWriter();
		String header,sem;
		Student stud = new Student();
		String roll=request.getParameter("roll_no");
		try {
			Connection con=DatabaseConnection.getCon();
			PreparedStatement p=con.prepareStatement("select max(semester) from  resultreleased group by roll_no having roll_no=?");
			p.setString(1, roll);
			ResultSet rs= p.executeQuery();
			if(rs.next())
			{
				stud.semester=Integer.parseInt(rs.getString(1));
			}
			else
			{
				out.print("Result Not Released Yet");
				return;
			}
			 p=con.prepareStatement("select STDNAME,COURSE,BRANCH,BATCH,CLGNAME,STDEMAIL,STDCONTACT,FATHER_NAME,DOB,gender from studentinfo where roll_no=?");
			p.setString(1, roll);
			 rs= p.executeQuery();
			
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
				 @SuppressWarnings("rawtypes")
				HashMap<Integer,ArrayList> smap=new HashMap<Integer,ArrayList>();
				 for(int i=1;i<=stud.semester;i++)//stud.semester or8 for all semesters 
				 {
					 p=con.prepareStatement("select SUB_CODE,INTERNALMARKS,EXTERNALMARKS,session_start from studentsub where roll_no=?  and semester=?");
					 p.setString(1,stud.roll);
					 p.setString(2,""+i);//semester in subjects table is string but in studentsinfo is int
				     rs=p.executeQuery();
				     ArrayList<Subject> subjects = new ArrayList<Subject>();
				     while(rs.next())
				     {
				    	 Subject sub=new Subject();
				    	 sub.subcode=rs.getString(1);
				    	 sub.subname=new DatabaseConnection().getSubjectName(sub.subcode);
				    	 sub.internalmarks=rs.getString(2);
				    	 sub.externalmarks=rs.getString(3);
				    	 sub.exam_session=rs.getString(4);
				    	 sub.type=new DatabaseConnection().getSubjectType(sub.subcode);
				    	 p=con.prepareStatement("select INTERNAL_MM,external_mm from subjectsassigned where SUB_CODE=? and COURSE=? and BRANCH=? and SEMESTER=? and CUR_SESSION=?");
				    	 p.setString(1,sub.subcode);
						 p.setString(2,stud.course);
						 p.setString(3,stud.branch);
						 p.setString(4,""+stud.semester);
						 p.setString(5,cursession);//sub.exam_session
						 ResultSet r1=p.executeQuery();
						 if(r1.next())
						 {
							 sub.internal_mm=r1.getString(1);
							 sub.external_mm=r1.getString(2);
						 }
				    	 subjects.add(sub);
				     }
				     smap.put(i, subjects);
				 }
				 request.setAttribute("results",smap);
				 RequestDispatcher rd=request.getRequestDispatcher("exam_result.jsp");
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
