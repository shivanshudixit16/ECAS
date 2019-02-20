

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
 * Servlet implementation class SubmitCopycodesForTeachers
 */
public class SubmitCopycodesForTeachers extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out =response.getWriter();
		String email =request.getParameter("email");
		String codes[]=request.getParameterValues("copycodes");
		try{
			Connection con=DatabaseConnection.getCon();
			PreparedStatement ps=con.prepareStatement("insert into teachercopies values(?,?)");
			ps.setString(1, email);
			for(String c:codes)
			{
				ps.setString(2, c);
				ps.executeQuery();
				out.println(" "+c);
			}
			
		}
		catch(SQLIntegrityConstraintViolationException e)
		{
			out.print("copy already assigned");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
