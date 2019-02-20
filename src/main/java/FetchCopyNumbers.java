

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.DatabaseConnection;

/**
 * Servlet implementation class FetchCopies
 */
public class FetchCopyNumbers extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
			String email=request.getParameter("email");
			try 
			{
				Connection con =DatabaseConnection.getCon();
				PreparedStatement ps=con.prepareStatement("select subcode from teachersub where temail=?");
				ps.setString(1, email);
				ArrayList<String> copycodes =new ArrayList<String>();
				ResultSet rs=ps.executeQuery();
				while(rs.next())
				{
					String subcode=rs.getString(1);
					ps=con.prepareStatement("select COPY_NO from SHEETSASSIGNED where SUBCODE=? and copy_no not in(select copy_no from teachercopies)");
					ps.setString(1, subcode);
					ResultSet rp=ps.executeQuery();
					while(rp.next())
					{
						copycodes.add(rp.getString(1));
					}
					
				}
				request.setAttribute("email", email);
				request.setAttribute("copycodes", copycodes);
				request.getRequestDispatcher("choose_copy_codes_for_teacher.jsp").forward(request, response);
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}


}
