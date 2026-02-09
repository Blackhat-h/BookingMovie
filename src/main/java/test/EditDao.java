package test;

import java.sql.*;

public class EditDao {
		
	public int update (MovieTicketBeans mv)
	{
		int k=0 ;
		
		try
		{
			Connection con = DBConnection.getCon();
			PreparedStatement pr = con.prepareStatement("update usermovie set mailid=? , password=? , phno =? where name=?");
			
			pr.setString(1, mv.getMailid());
			pr.setString(2, mv.getPassword());
			pr.setInt(3, mv.getNumber());
			pr.setString(4, mv.getName());
			
			k=pr.executeUpdate();
			
					
			
		}
		catch(Exception ex)
		{
			System.out.println(ex.getLocalizedMessage());
		}
		
		return k ;
		
	}

}
