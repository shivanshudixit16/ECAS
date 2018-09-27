

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.DatabaseConnection;


public class ReleaseResultCard extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con=DatabaseConnection.getCon();
		try {
			PrintWriter out=response.getWriter();
			String college=request.getParameter("college");
			String course=request.getParameter("course");
			String branch=request.getParameter("branch");
			String batch=request.getParameter("batch");
			String semester=request.getParameter("semester");
			PreparedStatement p=con.prepareStatement("select  roll_no from studentinfo where clgname=? and course=? and branch=? and batch=? and semester=?");
			p.setString(1, college);
			p.setString(2, course);
			p.setString(3, branch);
			p.setString(4, batch);
			p.setString(5, semester);
			ResultSet rs=p.executeQuery();
			while(rs.next())
			{
				
				String roll=rs.getString(1);
				p=con.prepareStatement("insert into ResultRELEASED values(?,?,?)");
				p.setString(1,roll);
				p.setString(2,semester);
				p.setString(3,new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
				p.executeQuery();
				out.println(roll);
			}
			out.println("sucessfully released result cards");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
