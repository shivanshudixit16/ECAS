

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLIntegrityConstraintViolationException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.DatabaseConnection;

/**
 * Servlet implementation class FetchSubjectsForAnswersheet
 */
public class FetchSubjectsForAnswersheet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	PrintWriter out=response.getWriter(); 
	String roll=request.getParameter("roll_no");
	 try {
		 ArrayList<String> subjects =new  ArrayList<String>();
		 Connection con=DatabaseConnection.getCon();
		 PreparedStatement ps =con.prepareStatement("select SUB_CODE from studentsub where roll_no=?");
		 ps.setString(1, roll);
		 ResultSet rs=ps.executeQuery();
		 while(rs.next())
		 {
			 
			 String subcode=rs.getString(1);
			 if(subcode==null)
			 {
				 out.println("No subjects assigned");
				 return;
			 }
			 if(new DatabaseConnection().getSubjectType(subcode).equals("theory")) 
			 {
				 subjects.add(subcode);
			 }
		 }
		 request.setAttribute("subjects", subjects);
		 request.setAttribute("roll_no", roll);
		 request.getRequestDispatcher("allocate_answer_sheets_to_students.jsp").forward(request, response);
	 }
	 catch(SQLIntegrityConstraintViolationException e)
	 {
		 out.println("answersheet already assigned");
		 return;
	 }
	 catch (Exception e) {
		e.printStackTrace();
	}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
