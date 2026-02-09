package test;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

	private static Connection con=null ;
	
	private DBConnection(){}
	
	static {
		
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection(DBinfo.dburl, DBinfo.user , DBinfo.pwd);
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			System.out.println("error");
		}
	}
	
	public static Connection getCon()
	{
		return con ; 
	}
}
