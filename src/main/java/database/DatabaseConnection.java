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
		Connection con=null;
		/*
		 * try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		String username = "isheuhnxufvvry";
			String password = "cba6e6a0256d969e4b2124437c7699e15c60b92e70e285af9d5ca77f9b96c11a";
			String dbUrl = "jdbc:postgresql://" + "ec2-174-129-18-98.compute-1.amazonaws.com:5432"
					+ "/dav86kr2u6dq5b?sslmode=require";
			try {
				return DriverManager.getConnection(dbUrl, username, password);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 * */
		try {
		Class.forName("oracle.jdbc.driver.OracleDriver");

		
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","shiv","1234");//1234
			return con;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
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
public String[] getTotalClassesAttendedByARollAndTotalClass(String roll) //returns null if roll no does not exsists
{
	Connection con=DatabaseConnection.getCon();
	int total = 0,attended=0;
	PreparedStatement p;
	try {
		
		p=con.prepareStatement("select COURSE,BRANCH,BATCH,CLGNAME,semester from studentinfo where roll_no=?");
		p.setString(1, roll);
	     ResultSet rs=p.executeQuery();
	     if(rs.next())
	     {
	    	 p=con.prepareStatement("select TOTALLECTURES from TOTALLECTURES where course=? and branch=? and batch=? and clgname=? and semester=?");
	 		 p.setString(1, rs.getString(1));
	 		 p.setString(2, rs.getString(2));
	 		 p.setString(3, rs.getString(3));
	 		 p.setString(4, rs.getString(4));
	 		 p.setString(5, rs.getString(5));
	    	 rs=p.executeQuery();
	 	     while(rs.next())
	 	     {
	 	    	 total+=rs.getInt(1);
	 	     }
	 	     p=con.prepareStatement("select LECTURESattended from LECTURESattended where roll_no=?");
	 		 p.setString(1,roll);
	    	 rs=p.executeQuery();
	 	     while(rs.next())
	 	     {
	 	    	 attended+=rs.getInt(1);
	 	     }
	 	     String s[]= {""+total,""+attended};
	 	     return s;
	     }
		
	} catch (Exception e) {
		e.printStackTrace();
		return null;
	}
	return null;
}
public String[] getTotalClassesAttendedByARollAndTotalClassAtADate(String roll,String date) //returns null if roll no does not exsists
{
	Connection con=DatabaseConnection.getCon();
	int total = 0,attended=0;
	PreparedStatement p;
	try {
		
		p=con.prepareStatement("select COURSE,BRANCH,BATCH,CLGNAME,semester from studentinfo where roll_no=?");
		p.setString(1, roll);
	     ResultSet rs=p.executeQuery();
	     if(rs.next())
	     {
	    	 p=con.prepareStatement("select TOTALLECTURES from TOTALLECTURES where course=? and branch=? and batch=? and clgname=? and semester=? and AT_DATE=?");
	 		 p.setString(1, rs.getString(1));
	 		 p.setString(2, rs.getString(2));
	 		 p.setString(3, rs.getString(3));
	 		 p.setString(4, rs.getString(4));
	 		 p.setString(5, rs.getString(5));
	 		 p.setString(6,date);
	    	 rs=p.executeQuery();
	 	     while(rs.next())
	 	     {
	 	    	 total+=rs.getInt(1);
	 	     }
	 	     p=con.prepareStatement("select LECTURESattended from LECTURESattended where roll_no=? and AT_DATE=?");
	 		 p.setString(1,roll);
	 		 p.setString(2,date);
	    	 rs=p.executeQuery();
	 	     while(rs.next())
	 	     {
	 	    	 attended+=rs.getInt(1);
	 	     }
	 	     String s[]= {""+total,""+attended};
	 	     return s;
	     }
		
	} catch (Exception e) {
		e.printStackTrace();
		return null;
	}
	return null;
}
public String getRoll(String email) {
	Connection con=DatabaseConnection.getCon();
	PreparedStatement p;
	try {
		//System.out.println(tusername);
		p=con.prepareStatement("select roll_no from studentinfo where stdemail=?");
		p.setString(1, email);
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

public ArrayList<String> getCopies(String email)
{
	Connection con=DatabaseConnection.getCon();
	PreparedStatement p;
	try {
		p=con.prepareStatement("select COPY_NO from TEACHERCOPIES where  EMAIL=?");
		p.setString(1, email);
	     ResultSet rs=p.executeQuery();
	     ArrayList<String> copies = new ArrayList<String>();
	     while(rs.next())
	     {
	    	 
	    	 copies.add(rs.getString(1));
	    	 
	     }
	     return copies;
		
	} catch (Exception e) {
		e.printStackTrace();
		return null;
	}
}

public String getSubjectType(String code)
{
	Connection con=DatabaseConnection.getCon();
	PreparedStatement p;
	try {
		p=con.prepareStatement("select type from subjects where  sub_code=?");
		p.setString(1, code);
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

public ArrayList<String> getTeacherSubjects(String temail)
{
	Connection con=DatabaseConnection.getCon();
	PreparedStatement ps;
	ResultSet rs;
	try {
	
		 ps=con.prepareStatement("select subcode from teachersub where temail=?");
		 ps.setString(1, temail);
		 rs=ps.executeQuery();
		 ArrayList<String> subjects = new ArrayList<String>();
	     while(rs.next())
	     {
	    	 
	    	 subjects.add(rs.getString(1));
	    	 
	     }
	     return subjects;
		
	} catch (Exception e) {
		e.printStackTrace();
		return null;
	}
	

}
}
