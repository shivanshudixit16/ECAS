package database;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Subject;

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

public String getSubjectName(String subcode) {
	try {
		Connection con=DatabaseConnection.getCon();
		PreparedStatement ps=con.prepareStatement("select SUB_NAME from subjects where SUB_CODE=?");
		ps.setString(1, subcode);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			return rs.getString(1);
		}
		
		}
		catch(Exception e)
		{
			//System.out.println(e);
			e.printStackTrace();
		}
		
	return null;
 }
public int getCurrentSession()
{
	
	try {
		Connection con = DatabaseConnection.getCon();
		PreparedStatement ps = con.prepareStatement("select Current_session from current_session");
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			int year=Integer.parseInt(rs.getString(1));
			return year;
		}
	}
	catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return 0000;
}

public ArrayList<Subject> getAllSubjects()
{
	Connection con=DatabaseConnection.getCon();
	PreparedStatement p;
	try {
		p=con.prepareStatement("select SUB_CODE,SUB_NAME from subjects");
	     ResultSet rs=p.executeQuery();
	     ArrayList<Subject> subjects = new ArrayList<Subject>();
	     while(rs.next())
	     {
	    	 Subject sub=new Subject();
	    	 sub.subcode=rs.getString(1);
	    	 sub.subname=rs.getString(2);
	    	 subjects.add(sub);
	    	 
	     }
	     return subjects;
		
	} catch (Exception e) {
		e.printStackTrace();
		return null;
	}
	

}
public ArrayList<String> getAllCollege()
{
	Connection con=DatabaseConnection.getCon();
	PreparedStatement p;
	try {
		p=con.prepareStatement("select clgname from collegelist");
	     ResultSet rs=p.executeQuery();
	     ArrayList<String> college = new ArrayList<String>();
	     while(rs.next())
	     {
	    	 
	    	 college.add(rs.getString(1));
	    	 
	     }
	     return college;
		
	} catch (Exception e) {
		e.printStackTrace();
		return null;
	}
	

}
public ArrayList<String> getAllBranches()
{
	Connection con=DatabaseConnection.getCon();
	PreparedStatement p;
	try {
		p=con.prepareStatement("select distinct branch from branchlist");
	     ResultSet rs=p.executeQuery();
	     ArrayList<String> branches = new ArrayList<String>();
	     while(rs.next())
	     {
	    	 
	    	 branches.add(rs.getString(1));
	    	 
	     }
	     return branches;
		
	} catch (Exception e) {
		e.printStackTrace();
		return null;
	}
	

}
public ArrayList<String> getAllCourses()
{
	Connection con=DatabaseConnection.getCon();
	PreparedStatement p;
	try {
		p=con.prepareStatement("select distinct course from branchlist");
	     ResultSet rs=p.executeQuery();
	     ArrayList<String> courses = new ArrayList<String>();
	     while(rs.next())
	     {
	    	 
	    	 courses.add(rs.getString(1));
	    	 
	     }
	     return courses;
		
	} catch (Exception e) {
		e.printStackTrace();
		return null;
	}
	

}

public String getCollegeNameOfTeacher(String tusername) {
	Connection con=DatabaseConnection.getCon();
	PreparedStatement p;
	try {
		//System.out.println(tusername);
		p=con.prepareStatement("select tcname from teacherinfo where TEMAIL=?");
		p.setString(1, tusername);
	     ResultSet rs=p.executeQuery();
	    
	     if(rs.next())
	     {
	    	 
	    	 return rs.getString(1);
	    	 
	     }
		
	} catch (Exception e) {
		e.printStackTrace();
		return null;
	}
	return null;
	

}




}
