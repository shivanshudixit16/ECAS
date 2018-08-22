package general;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.DatabaseConnection;

/**
 * Servlet implementation class GenerateRolls
 */
public class GenerateRolls extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con=DatabaseConnection.getCon();
		try {
			String college=request.getParameter("college");
			String course=request.getParameter("course");
			String branch=request.getParameter("branch");
			String batch=request.getParameter("batch");
			PreparedStatement p=con.prepareStatement("select stdemail,roll_no from studentinfo where clgname=? and course=? and branch=? and batch=? ORDER BY roll_no,stdname");
			p.setString(1, college);
			p.setString(2, course);
			p.setString(3, branch);
			p.setString(4, batch);
			ResultSet rs=p.executeQuery();
			String roll="1601410";
			int num=0;
			while(rs.next())
			{
				roll="1601410";
				PrintWriter out=response.getWriter();
				String mail=rs.getString(1);
				String proll=null;
				proll=rs.getString(2);
				if(proll==null)
				{
					out.write(mail+"\n");
					num++;
					roll+=String.format("%03d",num);
					PreparedStatement pa=con.prepareStatement("update studentinfo set roll_no=? where stdemail=?");
					pa.setString(1, roll);
					pa.setString(2, mail);
					pa.executeQuery();
				}
				else
				{
					num=Integer.parseInt(proll.substring(proll.length()-3, proll.length()));
					//System.out.println(num);
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}
