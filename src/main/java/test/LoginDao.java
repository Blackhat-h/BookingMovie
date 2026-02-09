package test;
import java.sql.*;

public class LoginDao {
	
		public MovieTicketBeans login (String user , String pwd)
		{
			MovieTicketBeans mv = new MovieTicketBeans ();
			mv=null ; 
			
			try
			{
				Connection con = DBConnection.getCon();
				
				PreparedStatement pr = con.prepareStatement("select * from usermovie where name = ? and password = ?");
				
				pr.setString(1,user);
				pr.setString(2, pwd);
				
				ResultSet rs = pr.executeQuery();
				
				if(rs.next())
				{
					mv = new MovieTicketBeans(); 
					
					mv.setName(rs.getString(1));
					mv.setPassword(rs.getString(2));
					mv.setMailid(rs.getString(3));
					mv.setNumber(rs.getInt(4));
					
				}
				
				
			}
			catch(Exception ex)
			{
				System.out.println(ex.getLocalizedMessage());
				
			}
			
			return mv ;
		}
}
