package imagehandler;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.DatabaseConnection;

/**
 * Servlet implementation class ImageSend
 */
@WebServlet("/images")
public class ImageSend extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stubSystem.out.println("hello");
		try {
			String roll=request.getParameter("roll");
		Connection con=DatabaseConnection.getCon(); 
		PreparedStatement statement = con.prepareStatement("select photo from studentinfo where roll_no=?");
		statement.setString(1, roll);

           ResultSet resultSet = statement.executeQuery();
                if (resultSet.next()) {
                    byte[] content = resultSet.getBytes("photo");
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


}
