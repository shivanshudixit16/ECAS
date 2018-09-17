

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLIntegrityConstraintViolationException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.DatabaseConnection;

/**
 * Servlet implementation class SubmitSubjectsForSession
 */
public class SubmitSubjectsForSession extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		Connection con=DatabaseConnection.getCon();
		String subcode=request.getParameter("sub_code");
		String session=request.getParameter("session");
		String course=request.getParameter("course");
		String branch=request.getParameter("branch");
		String semester=request.getParameter("semester");
		String mm_internal=request.getParameter("mm_internal");
		String mm_external=request.getParameter("mm_external");
		String min_lectures=request.getParameter("min_lectures");
		try {
			
			PreparedStatement ps=con.prepareStatement("insert into subjectsassigned(SUB_CODE,COURSE,BRANCH,SEMESTER,CUR_SESSION,INTERNAL_MM	,EXTERNAL_MM,MIN_LECTURES) values(?,?,?,?,?,?,?,?)");
			ps.setString(2, course);
			ps.setString(3, branch);
			ps.setString(4, semester);
			ps.setString(5, session);
			ps.setString(6, mm_internal);
			ps.setString(7, mm_external);
			ps.setString(8, min_lectures);
			ps.setString(1, subcode);
			ps.executeQuery();
		
			out.write("succes fuly added");
		} 
		catch (SQLIntegrityConstraintViolationException e) 
		
		{
			
			out.write("subject already added");
			
		}
		catch (Exception e) {
			// TODO: handle exception
			out.write("errorr");
		}
		
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
