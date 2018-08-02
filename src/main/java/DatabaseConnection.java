import java.sql.Connection;
import java.sql.DriverManager;
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

}
