package test;
import java.sql.*;

public class RegisterDao {
	
		public int insert (MovieTicketBeans mv)
		{
			int k=0 ; 
			try
			{
				Connection con = DBConnection.getCon();
				
				PreparedStatement pr = con.prepareStatement("insert into usermovie values (?,?,?,?)");
				
				pr.setString(1, mv.getName());
				pr.setString(2, mv.getPassword());
				pr.setString(3, mv.getMailid());
				pr.setInt(4, mv.getNumber());
				
				k = pr.executeUpdate();
				
				return k ;
				
			}
			catch(Exception ex)
			{
				System.out.println(ex.getLocalizedMessage());
				return k ;
			}
			
		}

}
