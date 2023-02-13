package boardConnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BoardConn {
	
	private	Connection conn = null;
	
	public Connection getConn() {
		return this.conn;
	}
	
	public BoardConn() throws ClassNotFoundException, SQLException {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","hr");
	}
}
