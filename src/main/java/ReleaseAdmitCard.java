

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

/**
 * Servlet implementation class ReleaseAdmitCard
 */
public class ReleaseAdmitCard extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con=DatabaseConnection.getCon();
		try {
			PrintWriter out=response.getWriter();
			DatabaseConnection db= new DatabaseConnection();
			String college=request.getParameter("college");
			String course=request.getParameter("course");
			String branch=request.getParameter("branch");
			String batch=request.getParameter("batch");
			PreparedStatement p=con.prepareStatement("select  roll_no,semester from studentinfo where clgname=? and course=? and branch=? and batch=?");
			p.setString(1, college);
			p.setString(2, course);
			p.setString(3, branch);
			p.setString(4, batch);
			ResultSet rs=p.executeQuery();
			while(rs.next())
			{
				
				String roll=rs.getString(1);
				String semester=rs.getString(2);
				p=con.prepareStatement("delete from ADMITRELEASED where roll_no=?");
				p.setString(1, roll);
				p.executeQuery();
				p=con.prepareStatement("insert into ADMITRELEASED values(?,?,?,?)");
				p.setString(1,roll);
				p.setString(2,semester);
				p.setString(3,new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
				String attd[]=db.getTotalClassesAttendedByARollAndTotalClass(roll);
				//System.out.println(attd[1]+"/"+attd[0]);
				float per= (float) (((float)Integer.parseInt(attd[1])/(float)Integer.parseInt(attd[0]))*100.0);
				//System.out.println(per);
				if(per<75)
				{
					p.setString(4,"low_attendance");
				}
				else
				{
					p.setString(4,"success");
				}
				p.executeQuery();
			}
			out.println("sucessfully released admit cards");
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
