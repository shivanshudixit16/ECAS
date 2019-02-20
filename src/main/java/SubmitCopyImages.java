

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import database.DatabaseConnection;

@MultipartConfig
public class SubmitCopyImages extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out=response.getWriter();
		String cpyno=request.getParameter("copy_no");
		try
		{
			Connection con =DatabaseConnection.getCon();
			PreparedStatement ps=con.prepareStatement("insert into sheetimages values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, cpyno);
			for(int i=1;i<=30;i++)
			{
				InputStream st=null;
				Part filePart = request.getPart("photo"+i);
				if(filePart!=null)
				{
					st= filePart.getInputStream();
				}
				ps.setBlob(i+1, st);
			}
			ps.executeQuery();
			out.write("success");
			
		}
		catch(SQLIntegrityConstraintViolationException e)
		{
			out.write("copy alerady uploaded");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
