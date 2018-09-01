package general;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.DatabaseConnection;
import model.Student;

/**
 * Servlet implementation class GetAdmit
 */
public class GetAdmit extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String header,sem;
		String roll=request.getParameter("roll_no");
		try {
			Connection con=DatabaseConnection.getCon();
			PreparedStatement p=con.prepareStatement("select STDNAME,COURSE,BRANCH,BATCH,CLGNAME,STDEMAIL,STDCONTACT,FATHER_NAME,DOB,gender,semester from studentinfo where roll_no=?");
			p.setString(1, roll);
			ResultSet rs= p.executeQuery();
			Student stud = new Student();
			if(rs.next())
			{
				 stud.name=rs.getString(1);
				 stud.course=rs.getString(2);	
				 stud.branch=rs.getString(3);
				 stud.batch=rs.getString(4);	
				 stud.clgname=rs.getString(5);
				 stud.stdemail=rs.getString(6);
				 stud.stdcontact=rs.getString(7);
				 stud.fathername=rs.getString(8);
				 stud.dob=rs.getString(9);	
				 stud.roll=roll;
				 stud.gender=rs.getString(10);
				 stud.collegecode=new DatabaseConnection().getCollegeCode(stud.clgname);
				 stud.centername=new DatabaseConnection().getCenter(stud.clgname);
				 stud.centercode=new DatabaseConnection().getCollegeCode(stud.centername);
				 stud.semester=rs.getString(11);
				 if(Integer.parseInt(stud.semester) % 2==0)
				 {
					 sem="Even";
				 }
				 else
				 {
					 sem="Odd";
				 }
				 header=sem+" Semester 2017-18 Examination Admit Card";
				 request.setAttribute("header",header);
				 request.setAttribute("student",stud);
				 RequestDispatcher rd=request.getRequestDispatcher("admit_card.jsp");
				 rd.forward(request, response);
				 
			}
			else
			{
				PrintWriter out= response.getWriter();
				out.write("roll_no doesn't exsists");
			}
		}
		catch(Exception e)
		{
			PrintWriter p= response.getWriter();
			p.write("error occured");
			e.printStackTrace();
		}
	}

}
