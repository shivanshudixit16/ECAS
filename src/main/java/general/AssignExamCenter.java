package general;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.DatabaseConnection;

public class AssignExamCenter extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public AssignExamCenter() {
        super();
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String college= request.getParameter("college");
		String center=request.getParameter("center");
		//String collegecode = null,centercode = null;
		Connection con =DatabaseConnection.getCon();
		try {
			/*
			 //uncomment if want to store codes in database 
			  * 
			  * 
			 PreparedStatement pr= con.prepareStatement("select 	CLGCODE from collegelist where clgname=?");
			 
			pr.setString(1,college);
			
			ResultSet rs=pr.executeQuery();
			if(rs.next())
			{
				collegecode=rs.getString(1);
			}
			pr= con.prepareStatement("select CLGCODE from collegelist where clgname=?");
			pr.setString(1,center);
			
			rs=pr.executeQuery();
			if(rs.next())
			{
				centercode=rs.getString(1);
			}*/
			PreparedStatement pr= con.prepareStatement("insert into examcenter values(?,?)");
			pr.setString(1,college);//use collegecode to store collegecode
			pr.setString(2,center);//do
			pr.executeQuery();

			out.write("exam center  alloted");
			
		} catch (SQLIntegrityConstraintViolationException e) {
		
			
			out.write("exam center already alloted");
			e.printStackTrace();
		}
		catch (SQLException e) {
			
			e.printStackTrace();
		}
		
	}

}
