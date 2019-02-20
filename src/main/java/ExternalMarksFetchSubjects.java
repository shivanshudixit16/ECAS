

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
 * Servlet implementation class ExternalMarksFetchSubjects
 */
public class ExternalMarksFetchSubjects extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession();
		String roll=request.getParameter("roll_no");
		try {
			Connection con=DatabaseConnection.getCon();
			PreparedStatement p=con.prepareStatement("select STDNAME,COURSE,BRANCH,BATCH,CLGNAME,semester from studentinfo where roll_no=?");
			p.setString(1, roll);
			ResultSet rs= p.executeQuery();
			Student stud = new Student();
			stud.roll=roll;
			if(rs.next())
			{
				 stud.name=rs.getString(1);
				 stud.course=rs.getString(2);	
				 stud.branch=rs.getString(3);
				 stud.batch=rs.getString(4);	
				 stud.clgname=rs.getString(5);
				 stud.semester=rs.getInt(6);
				 String cursession=""+new DatabaseConnection().getCurrentSession();
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
			    	 if(new DatabaseConnection().getSubjectType(sub.subcode).equals("theory"))
			    	 {
			    		 continue;
			    	 }
			    	 sub.subname=new DatabaseConnection().getSubjectName(sub.subcode);
			    	 p=con.prepareStatement("select External_MM from subjectsassigned where SUB_CODE=? and COURSE=? and BRANCH=? and SEMESTER=? and CUR_SESSION=?");
			    	 p.setString(1,sub.subcode);
					 p.setString(2,stud.course);
					 p.setString(3,stud.branch);
					 p.setString(4,""+stud.semester);
					 p.setString(5,cursession);
					 ResultSet r1=p.executeQuery();
					 if(r1.next())
					 {
						 sub.external_mm=r1.getString(1);
					 }
			    	 subjects.add(sub);
			     }
			     request.setAttribute("student", stud);
			     session.setAttribute("subjects",subjects);
				 RequestDispatcher rd=request.getRequestDispatcher("enter_external_marks.jsp");
				 rd.forward(request, response);
				 
			}
			else
			{
			    out= response.getWriter();
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

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
