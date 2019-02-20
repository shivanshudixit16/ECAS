

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
import javax.servlet.http.HttpSession;

import database.DatabaseConnection;

/**
 * Servlet implementation class SubmitTeachersSubjects
 */
public class SubmitTeachersSubjects extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 HttpSession session =request.getSession();
		 PrintWriter out=response.getWriter();
		 String course=(String) session.getAttribute("course");
		 String branch=(String) session.getAttribute("branch");
		 String semester=(String) session.getAttribute("semester");
		 String csession=(String) session.getAttribute("session");
		 ArrayList<String> subjects=(ArrayList<String>)session.getAttribute("subjects");
		 for(String s: subjects)
		 {
			 String temail=request.getParameter("t"+s);
			 try {
				 Connection con = DatabaseConnection.getCon();
				 PreparedStatement ps= con.prepareStatement("insert into teachersub(temail,subcode,course,branch,semester,cur_session) values(?,?,?,?,?,?)");
				 ps.setString(1, temail);
				 ps.setString(2, s);
				 ps.setString(3, course);
				 ps.setString(4, branch);
				 ps.setString(5, semester);
				 ps.setString(6, csession);
				 ps.executeQuery();
				 out.println(temail+"  "+s);
				 
			 }
			 catch(SQLIntegrityConstraintViolationException e)
			 {
				 e.printStackTrace();
				 out.write("teacher already assigned for "+s);
				
			 }
			 catch(Exception e)
			 {
				 out.write("some error");
				 e.printStackTrace();
			 }
		 }
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
