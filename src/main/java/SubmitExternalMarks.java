

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Enumeration;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.DatabaseConnection;

/**
 * Servlet implementation class SubmitExternalMarks
 */
public class SubmitExternalMarks extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		Enumeration<String> e=request.getParameterNames();
		Iterator<String> it=e.asIterator();
		try {
		while(it.hasNext())
		{
			
				String subcode=it.next();
				if(subcode.equals("semester")||subcode.equals("roll_no"))
					continue;
				Connection con =DatabaseConnection.getCon();
				PreparedStatement ps=con.prepareStatement("update studentsub set ExternalMARKS=? where ROLL_NO=? and SUB_CODE=? and SESSION_START=? and SEMESTER=?");
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
