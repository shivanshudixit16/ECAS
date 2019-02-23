

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.DatabaseConnection;

/**
 * Servlet implementation class StartSemester
 */
public class StartSemester extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out =response.getWriter();
		try {
			Connection con=DatabaseConnection.getCon();
			PreparedStatement ps= con.prepareStatement("update studentinfo set semester=semester+1 where roll_no is not null");
			ps.executeQuery();
		    request.setAttribute("semmsg", "Success");
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("semmsg", "Failure");
		}
		request.getRequestDispatcher("confirm_start_semester.jsp").forward(request, response);
	}

}
