

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

import database.DatabaseConnection;

/**
 * Servlet implementation class SubmitAssignedAnswersheet
 */
public class SubmitAssignedAnswersheet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out=response.getWriter();
		String roll=request.getParameter("roll_no");
		String cpyno=request.getParameter("copy_no");
		String subcode=request.getParameter("subcode");
		try {
			Connection con=DatabaseConnection.getCon();
			PreparedStatement ps=con.prepareStatement("insert into sheetsassigned(roll_no,copy_no,subcode) values(?,?,?)");
			ps.setString(1, roll);
			ps.setString(2, cpyno);
			ps.setString(3, subcode);
			ps.executeQuery();
			out.write(roll+"   "+cpyno+"   "+subcode);
		}
		catch(SQLIntegrityConstraintViolationException e)
		{
			out.write("copy already assigned");
			
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
