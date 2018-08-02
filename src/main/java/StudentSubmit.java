

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TeacherSubmit
 */
public class StudentSubmit extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String stdname=request.getParameter("stdname");
		String course=request.getParameter("course");
		String branch=request.getParameter("branch");
		String batch=request.getParameter("batch");
		String clgname=request.getParameter("clgname");
		String stdemail=request.getParameter("stdemail");
		String stdcontact=request.getParameter("stdcontact");
		Connection con=DatabaseConnection.getCon();
		PreparedStatement ps;
		try {
			ps = con.prepareStatement("insert into studentinfo values(?,?,?,?,?,?,?)");
			ps.setString(1, stdname);
			ps.setString(2, course);
			ps.setString(3, branch);
			ps.setInt(4,Integer.parseInt(batch));
			ps.setString(5, clgname);
			ps.setString(6, stdemail);
			ps.setLong(7, Long.parseLong(stdcontact));
			ps.execute();
			
			out.write("Student Registered SuccessFully");
		} 
		catch(SQLIntegrityConstraintViolationException e)
		{
			out.write("email already registered");
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}
