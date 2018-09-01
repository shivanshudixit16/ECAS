package database;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DatabaseConnection {
	public static Connection getCon()
	{
		try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con;
		
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","shiv","1234");
			return con;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public String getPass(String user) {
		try {
		Connection con=DatabaseConnection.getCon();
		PreparedStatement ps=con.prepareStatement("select pass from teacherinfo where temail=?");
		ps.setString(1, user);
		ResultSet  rs=ps.executeQuery();
		if(rs.next())
		{
			return rs.getString("pass");
		}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return null;
	}

	public String getCollegeCode(String college) {
		
		try {
			Connection con=DatabaseConnection.getCon();
			PreparedStatement ps=con.prepareStatement("select clgcode from collegelist where clgname=?");
			ps.setString(1, college);
			ResultSet  rs=ps.executeQuery();
			if(rs.next())
			{
				return rs.getString("clgcode");
			}
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
			return "000";
	}

	public String getBranchCode(String course, String branch) {
		
		try {
			Connection con=DatabaseConnection.getCon();
			PreparedStatement ps=con.prepareStatement("select branchcode from branchlist where course=? and branch=?");
			ps.setString(1, course);
			ps.setString(2, branch);
			ResultSet  rs=ps.executeQuery();
			if(rs.next())
			{
				//System.out.println(rs.getString("branchcode"));
				return rs.getString("branchcode");
			}
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
		return "00";
	}
	public String getStudentPass(String user) {
		try {
		Connection con=DatabaseConnection.getCon();
		PreparedStatement ps=con.prepareStatement("select dob from studentinfo where stdemail=?");
		ps.setString(1, user);
		ResultSet  rs=ps.executeQuery();
		if(rs.next())
		{
			return rs.getString("dob");
		}
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return null;
	}
public String getCenter(String college) {
		
		try {
			Connection con=DatabaseConnection.getCon();
			PreparedStatement ps=con.prepareStatement("select examcentername from examcenter where collegename=?");
			ps.setString(1, college);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				return rs.getString(1);
			}
			
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
			return null;
	}

}
