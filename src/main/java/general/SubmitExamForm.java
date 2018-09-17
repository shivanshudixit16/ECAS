package general;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.DatabaseConnection;

/**
 * Servlet implementation class SubmitExamForm
 */
public class SubmitExamForm extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String roll=request.getParameter("roll");
		String session=request.getParameter("session");
		String semester=request.getParameter("semester");
		String s[]=request.getParameterValues("subjects");
		int ses=Integer.parseInt(session);
		if(ses<2000 || ses>3000)
		{
			out.write("error session wrong");
			return;
		}
		Connection con=DatabaseConnection.getCon();
		try
		{
			for(String s1:s) 
			{
				PreparedStatement ps=con.prepareStatement("insert into studentsub(ROLL_NO,SUB_CODE,SESSION_START,SEMESTER) values(?,?,?,?)");
				ps.setString(1, roll);
				ps.setString(2, s1);
				ps.setString(3, session);
				ps.setString(4, semester);
				ps.executeQuery();				
				out.write(s1+"\n");
			}
		}
		catch(Exception e)
		{
			out.write("some error occured");
			PreparedStatement ps;
			try {
				ps = con.prepareStatement("delete from studentsub where ROLL_NO=? and SESSION_START=? and SEMESTER=?");
				ps.setString(1, roll);
				ps.setString(3, session);
				ps.setString(4, semester);
				ps.executeQuery();
				out.write("\n"+"please fill the form again no updation made");
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
		

	}

}
