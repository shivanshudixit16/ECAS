

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import database.DatabaseConnection;

/**
 * Servlet implementation class SubmitCheckedCopies
 */
public class SubmitCheckedCopies extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out=response.getWriter();
		HttpSession session =request.getSession();
		String email=(String) session.getAttribute("tusername");
		String copycode=request.getParameter("cc");
		String time=request.getParameter("clk");
		String marks_ob=request.getParameter("marks_ob");
		String marks_mm=request.getParameter("marks_mm");
		try 
		{
			String roll=null,subcode=null,external_mm=null,csession=null,semester=null;
			Connection con= DatabaseConnection.getCon();
			PreparedStatement ps=con.prepareStatement("select ROLL_NO,SUBCODE,cur_session,semester from SHEETSASSIGNED where COPY_NO=?");
			ps.setString(1, copycode);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				roll=rs.getString(1);
			    subcode = rs.getString(2);
			    csession=rs.getString(3);
			    semester=rs.getString(4);
			    
			}
			ps=con.prepareStatement("select EXTERNAL_MM from SUBJECTSASSIGNED where  SUB_CODE=?");
			ps.setString(1, subcode);
			rs=ps.executeQuery();
			if(rs.next())
			{
				external_mm=rs.getString(1);
			}
			if(marks_mm!=external_mm)
			{
				out.write("the total marks are not correct");
				return;
			}
			ps=con.prepareStatement("insert into CHECKEDCOPIES values(?,?,?)");
			ps.setString(1, email);
			ps.setString(2, copycode);
			ps.setString(3, time);
			ps.executeQuery();
			ps=con.prepareStatement("update studentsub set ExternalMARKS=? where ROLL_NO=? and SUB_CODE=?");
			ps.setString(1, marks_ob);
			ps.setString(2, roll);
			ps.setString(3, subcode);
			ps.executeQuery();
			out.write("sucess");

		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
