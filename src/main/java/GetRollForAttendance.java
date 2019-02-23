

import java.io.IOException;
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

public class GetRollForAttendance extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String temail=request.getParameter("temail");
		String clgname=request.getParameter("clgname");
		String batch=request.getParameter("batch");
		String branch=request.getParameter("branch");
		String course=request.getParameter("course");
		String sem =request.getParameter("semester");
		String sub =request.getParameter("subcode");
		Connection con = DatabaseConnection.getCon();
		try {
			PreparedStatement ps= con.prepareStatement("select studentinfo.roll_no from studentinfo,studentsub where studentinfo.COURSE=? and BRANCH=? and BATCH=? and CLGNAME=? and studentinfo.semester=? and sub_code=? and studentsub.roll_no=studentinfo.roll_no order by studentsub.roll_no");
			ps.setString(1,course);
			ps.setString(2,branch);
			ps.setString(3,batch);
			ps.setString(4,clgname);
			ps.setString(5,sem);
			ps.setString(6,sub);
			ResultSet rs=ps.executeQuery();
			ArrayList<String> rolls = new ArrayList<String>();
			while(rs.next())
			{
				rolls.add(rs.getString(1));
			
			}
			HttpSession session=request.getSession();
			session.setAttribute("clgname", clgname);
			session.setAttribute("batch", batch);
			session.setAttribute("branch", branch);
			session.setAttribute("course", course);
			session.setAttribute("rolls", rolls);
			session.setAttribute("semester",request.getParameter("semester"));
			request.getRequestDispatcher("enter_daily_attendance.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
