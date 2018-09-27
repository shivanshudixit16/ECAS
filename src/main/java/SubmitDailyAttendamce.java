

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import database.DatabaseConnection;

public class SubmitDailyAttendamce extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession();
		String date=request.getParameter("date");
		String semester=(String) session.getAttribute("semester");
		
		String totallectures=request.getParameter("nol");
		String clgname=(String) session.getAttribute("clgname");
		String batch=(String) session.getAttribute("batch");
		String branch=(String) session.getAttribute("branch");
		String course=(String) session.getAttribute("course");
		ArrayList<String> rolls=(ArrayList<String>) session.getAttribute("rolls");
		try {
			Connection con =DatabaseConnection.getCon();
			PreparedStatement ps=con.prepareStatement("insert into totallectures values(?,?,?,?,?,?,?)");
			ps.setString(1, clgname);
			ps.setString(2, batch);
			ps.setString(3, branch);
			ps.setString(4, course);
			ps.setString(5, date);
			ps.setString(6, totallectures);
			ps.setString(7, semester);
			ps.executeQuery();
			for(String r:rolls)
			{
				ps=con.prepareStatement("insert into lecturesattended values(?,?,?)");
				ps.setString(1, r);
				ps.setString(2, request.getParameter(r));
				ps.setString(3, date);
				ps.executeQuery();
			}
			out.write("attendance sucessflly updated");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
