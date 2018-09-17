package general;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
 * Servlet implementation class ExamForm
 */
public class ExamForm extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		Student stud=new Student();
		stud.stdemail=(String) session.getAttribute("susername");
		Connection con=DatabaseConnection.getCon();
		PreparedStatement p;
		try {
			
		p = con.prepareStatement("select STDNAME,COURSE,BRANCH,BATCH,CLGNAME,roll_no,STDCONTACT,FATHER_NAME,DOB,gender,semester from studentinfo where STDEMAIL=?");
		p.setString(1, stud.stdemail);
		ResultSet rs= p.executeQuery();
		if(rs.next())
		{
			 stud.name=rs.getString(1);
			 stud.course=rs.getString(2);	
			 stud.branch=rs.getString(3);
			 stud.batch=rs.getString(4);	
			 stud.clgname=rs.getString(5);
			 stud.roll=rs.getString(6);
			 stud.stdcontact=rs.getString(7);
			 stud.fathername=rs.getString(8);
			 stud.dob=rs.getString(9);	
			 stud.gender=rs.getString(10);
			 stud.collegecode=new DatabaseConnection().getCollegeCode(stud.clgname);
			// stud.centername=new DatabaseConnection().getCenter(stud.clgname);
			// stud.centercode=new DatabaseConnection().getCollegeCode(stud.centername);
			 stud.semester=(int) rs.getInt(11);
			 request.setAttribute("student",stud);
			 p=con.prepareStatement("select SUB_CODE from subjectsassigned where BRANCH=? and SEMESTER=? and Cur_session=? and course=?");
			 p.setString(1,stud.branch);
			 p.setString(2,""+stud.semester);//semester in subjects table is string but in studentsinfo is int
			 p.setString(3, ""+new DatabaseConnection().getCurrentSession());
			 p.setString(4, stud.course);
		     rs=p.executeQuery();
		     ArrayList<Subject> subjects = new ArrayList<Subject>();
		     while(rs.next())
		     {
		    	 Subject sub=new Subject();
		    	 sub.subcode=rs.getString(1);
		    	 sub.subname=new DatabaseConnection().getSubjectName(sub.subcode);
		    	 subjects.add(sub);
		     }
		     request.setAttribute("subjects",subjects);
			 RequestDispatcher rd=request.getRequestDispatcher("exam_form.jsp");
			 rd.forward(request, response);
		}
		else {
			response.getWriter().write("email not registered");
		}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
