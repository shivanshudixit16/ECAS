package imagehandler;

import java.io.IOException;
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
 * Servlet implementation class CopyImagesSend
 */
public class CopyImagesSend extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try {
			String cc=request.getParameter("cc");
			String pn=request.getParameter("pn");
			//System.out.println(cc+"   "+pn);
		 Connection con=DatabaseConnection.getCon(); 
		PreparedStatement statement = con.prepareStatement("select "+pn+" from SHEETIMAGES where copy_no=?");
		//statement.setString(1, pn);
		statement.setString(1, cc);
           ResultSet resultSet = statement.executeQuery();
                if (resultSet.next()) {
                    byte[] content = resultSet.getBytes(1);
                    response.setContentType("image/jpg");
                    response.setContentLength(content.length);
                    response.getOutputStream().write(content);
                } else {
                    response.sendError(HttpServletResponse.SC_NOT_FOUND); // 404.
                }
            
        } 
	catch (SQLException e) {
            throw new ServletException("Something failed at SQL/DB level.", e);
        }
		
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
