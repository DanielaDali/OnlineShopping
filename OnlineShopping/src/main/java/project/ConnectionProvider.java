package project;

import java.sql.*;
/*import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;*/

public class ConnectionProvider {
	Connection con;
	Statement st;
	public void Connect()	
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost/onlineshop","root","");
					}		
		catch (Exception e) {
			System.out.print(e);
		}
	}
 
}
