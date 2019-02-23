

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
 * Servlet implementation class SessionStart
 */
public class SessionStart extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con=DatabaseConnection.getCon();
		PrintWriter out = response.getWriter();
		int year=new DatabaseConnection().getCurrentSession();
		PreparedStatement ps;
		
		try {
		
			ps = con.prepareStatement("update current_session set current_session=?");
			year++;
			ps.setString(1, ""+year);
			ps.executeQuery();
		    request.setAttribute("semmsg", "Success");
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("semmsg", "Failure");
		}
		request.getRequestDispatcher("confirm_start_session.jsp").forward(request, response);
	}

}
