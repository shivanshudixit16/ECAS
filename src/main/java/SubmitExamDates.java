

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
 * Servlet implementation class SubmitExamDates
 */
public class SubmitExamDates extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String subcode=request.getParameter("sub_code");
		String date=request.getParameter("date");
		String time=request.getParameter("time")+request.getParameter("time2");
		String session=request.getParameter("session");
		try {
			Connection con = DatabaseConnection.getCon();
			PreparedStatement ps=con.prepareStatement("insert into exam_dates values(?,?,?,?)");
			ps.setString(1, subcode);
			ps.setString(2, session);
			ps.setString(3, date);
			ps.setString(4, time);
			ps.executeQuery();
			out.println("sucess");
		} catch (Exception e) {
			e.printStackTrace();
			out.println("error");
			
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
