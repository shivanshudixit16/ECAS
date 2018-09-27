

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import database.DatabaseConnection;

/**
 * Servlet implementation class FetchAttendanceDateWise
 */
public class FetchAttendanceDateWise extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String date=request.getParameter("date");
		String email=(String) session.getAttribute("susername");
		DatabaseConnection db= new DatabaseConnection();
		String dailyattend[]=db.getTotalClassesAttendedByARollAndTotalClassAtADate(db.getRoll(email), date);
		request.setAttribute("dailyattend", dailyattend);
		request.setAttribute("date", date);
		request.getRequestDispatcher("checkattendance.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
