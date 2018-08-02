

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

/**
 * Servlet implementation class TeacherSubmit
 */
public class TeacherSubmit extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String tname=request.getParameter("tname");
		String temail=request.getParameter("temail");
		String tno=request.getParameter("tno");
		String tcname=request.getParameter("tcname");
		String tccode=request.getParameter("tccode");
		Connection con=DatabaseConnection.getCon();
		PreparedStatement ps;
		try {
			EmailOperation eo = new EmailOperation();
			String pass=eo.code;
			System.out.print(pass);
			ps = con.prepareStatement("insert into teacherinfo values(?,?,?,?,?,?)");
			ps.setString(1, tname);
			ps.setString(2, temail);
			ps.setLong(3, Long.parseLong(tno));
			ps.setString(4, tcname);
			ps.setInt(5, Integer.parseInt(tccode));
			ps.setString(6, pass);
			ps.execute();
			eo.sendMail(temail);
			
			out.write("Teacher Registered SuccessFully \n Login credentials sent via mail");
		} 
		catch(SQLIntegrityConstraintViolationException e)
		{
			out.write("email already registered");
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			out.write(e+" ");
		}
		catch (Exception e) {
			// TODO Auto-generated catch block
			out.write(e+"   ");
		}
		
		
	}

}
