

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
		String[] present=request.getParameterValues("present");
		String semester=(String) session.getAttribute("semester");
		
		String clgname=(String) session.getAttribute("clgname");
		String batch=(String) session.getAttribute("batch");
		String branch=(String) session.getAttribute("branch");
		String course=(String) session.getAttribute("course");
		PreparedStatement ps;
		ResultSet rs;
		//ArrayList<String> rolls=(ArrayList<String>) session.getAttribute("rolls");
		try {
			Connection con =DatabaseConnection.getCon();
			ps=con.prepareStatement("select * from totallectures where CLGNAME=? and BATCH=? and BRANCH=? and COURSE=? and	AT_DATE=? and SEMESTER=?");
			ps.setString(1, clgname);
			ps.setString(2, batch);
			ps.setString(3, branch);
			ps.setString(4, course);
			ps.setString(5, date);
			ps.setString(6, semester);
			rs=ps.executeQuery();
			if(!rs.next())
			{
				ps=con.prepareStatement("insert into totallectures values(?,?,?,?,?,?,?)");
				ps.setString(1, clgname);
				ps.setString(2, batch);
				ps.setString(3, branch);
				ps.setString(4, course);
				ps.setString(5, date);
				ps.setInt(6, 1);
				ps.setString(7, semester);
				ps.executeQuery();
				
			}
			else
			{
				ps=con.prepareStatement("update totallectures  set totallectures=totallectures+1 where CLGNAME=? and BATCH=? and BRANCH=? and COURSE=? and	AT_DATE=? and SEMESTER=?");
				ps.setString(1, clgname);
				ps.setString(2, batch);
				ps.setString(3, branch);
				ps.setString(4, course);
				ps.setString(5, date);
				ps.setString(6, semester);
				ps.executeQuery();
			}
			for(String r:present)
			{
				
				ps=con.prepareStatement("select LECTURESATTENDED from lecturesattended where ROLL_NO=? and AT_DATE=?");
				ps.setString(1, r);
				ps.setString(2, date);
				rs=ps.executeQuery();
				if(!rs.next())
				{
					
					ps=con.prepareStatement("insert into lecturesattended values(?,?,?)");
					ps.setString(1, r);
					ps.setInt(2, 1);
					ps.setString(3, date);
					ps.executeQuery();
				}
				else
				{
					ps=con.prepareStatement("update lecturesattended set lecturesattended=lecturesattended+1 where ROLL_NO=? and AT_DATE=?");
					ps.setString(1, r);
					ps.setString(2, date);
					ps.executeQuery();
				}
				
			}
			out.write("attendance sucessflly updated");
		} 
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
