package myPackage;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbHelper {
	
	
	
	public Connection getConnection() throws SQLException{
		String dbUrl = "jdbc:mysql://localhost:3306/classicmodels";
		String name = "root";
		String password = "1234";
		return DriverManager.getConnection(dbUrl,name,password);
	}

	
	
	public void getErrorMessages(SQLException e) {
		System.out.println("Error Code : "+e.getErrorCode());
		System.out.println("Error Messages : "+e.getMessage());
	}
}
