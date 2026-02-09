package test;
import java.sql.*;
import java.util.ArrayList;

public class TicketDetailsDao  {

	
	ArrayList<MovieBookBeans> bookdetails (String name)
	{
		ArrayList<MovieBookBeans> al = new ArrayList() ;
		try
		{	
			Connection con = DBConnection.getCon();
			PreparedStatement pr = con.prepareStatement("select * from ticket where name = ? ");
			
			pr.setString(1, name);
			
			ResultSet rs = pr.executeQuery();
			while(rs.next())
			{
				MovieBookBeans mv = new MovieBookBeans ();
				mv.setName(rs.getString(1));
				mv.setNumber(rs.getInt(2));
				mv.setQty(rs.getInt(3));
				mv.setPrice(rs.getInt(4));
				mv.setMovieName(rs.getString(5));
				mv.setGenre(rs.getString(6));
				mv.setTime(rs.getString(7));
				mv.setTotal(rs.getInt(8));
				
				al.add(mv);	
				
			}
			
		}
		catch(Exception ex)
		{
			System.out.println(ex.getLocalizedMessage());
			System.out.println("Error in Ticket Details Dao ");
		}

		return al ;

	}
}
