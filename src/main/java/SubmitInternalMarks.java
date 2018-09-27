

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLIntegrityConstraintViolationException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.DatabaseConnection;

/**
 * Servlet implementation class SubmitInternalMarks
 */
public class SubmitInternalMarks extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out=response.getWriter();
		List<String> e = new ArrayList<String>(request.getParameterMap().keySet());
		try {
		for(String subcode :e)
		{
			
				if(subcode.equals("semester")||subcode.equals("roll_no"))
					continue;
				Connection con =DatabaseConnection.getCon();
				PreparedStatement ps=con.prepareStatement("update studentsub set INTERNALMARKS=? where ROLL_NO=? and SUB_CODE=? and SESSION_START=? and SEMESTER=?");
				ps.setString(1,request.getParameter(subcode));
				ps.setString(2,request.getParameter("roll_no"));
				ps.setString(3,subcode);
				ps.setString(4,""+new DatabaseConnection().getCurrentSession());
				ps.setString(5, request.getParameter("semester"));
				ps.executeQuery();
			    out.write("succes fuly added marks of "+subcode+"\n");
			} 

		}
		catch (Exception ex) {
			// TODO: handle exception
			out.write("error\n");
			ex.printStackTrace();
		}
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
