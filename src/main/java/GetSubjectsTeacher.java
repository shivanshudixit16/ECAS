

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import database.DatabaseConnection;

/**
 * Servlet implementation class GetSubjectsTeacher
 */
public class GetSubjectsTeacher extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession();
		String temail=(String) session.getAttribute("tusername");
		//System.out.println(temail);
		PreparedStatement ps;
		ResultSet rs;
		ArrayList<String> teacheremails= new ArrayList<String>();
		Connection con=DatabaseConnection.getCon();
		try {
		ps=con.prepareStatement("select TEMAIL,TNAME from teacherinfo where tcname = (select TCNAME from teacherinfo where temail=?)");
		ps.setString(1, temail);
		rs=ps.executeQuery();
		while(rs.next())
		{
			teacheremails.add(rs.getString(1)+","+rs.getString(2));
			//System.out.println(teacheremails.toString());
		}
		}
		catch (SQLException e) {
			
			e.printStackTrace();
		}
		ArrayList<String> subjects= new ArrayList<String>();
	     request.setAttribute("teachers", teacheremails);
		 String course=request.getParameter("course");
		 String branch=request.getParameter("branch");
		 String semester=request.getParameter("semester");
		 String csession=request.getParameter("session");
		 session.setAttribute("course", course);
		 session.setAttribute("branch", branch);
		 session.setAttribute("semester", semester);
		 session.setAttribute("session", csession);
		 try {
				ps=con.prepareStatement("select SUB_CODE from subjectsassigned where COURSE=? and BRANCH=? and SEMESTER=? and CUR_SESSION=?");
				ps.setString(1, course);
				ps.setString(2, branch);
				ps.setString(3, semester);
				ps.setString(4, csession);
				rs=ps.executeQuery();
				while(rs.next())
				{
					subjects.add(rs.getString(1));
				}
				}
				catch (SQLException e) {
					
					e.printStackTrace();
				}
		 session.setAttribute("subjects", subjects);
		 request.getRequestDispatcher("enter_subjects_teacher.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
