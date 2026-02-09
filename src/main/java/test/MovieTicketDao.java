package test;
import java.sql.*;

public class MovieTicketDao {
	
		public int insert (MovieBookBeans mb)
		{	
				//MovieTicketBeans mv1 = new MovieTicketBeans ();
				try
				{
					Connection con = DBConnection.getCon();
					
					PreparedStatement pr = con.prepareStatement("insert into ticket values (?,?,?,?,?,?,?,?)");
					
					pr.setString(1,mb.getName());
					pr.setInt(2, mb.getNumber());
					pr.setInt(3, mb.getQty());
					pr.setInt(4, mb.getPrice());
					pr.setString(5, mb.getMovieName());
					pr.setString(6, mb.getGenre());
					pr.setString(7,mb.getTime());
					pr.setInt(8, mb.getTotal());
					
					int k = pr.executeUpdate();
					
					return k ;
					
					
				}
				catch(Exception ex)
				{
					System.out.println(ex.getLocalizedMessage());
				}
				
			return 0 ;
		}
}
