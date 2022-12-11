import java.sql.*;

public class Database {
	
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/orphanagedb","root", "");
			return con;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
}
	
