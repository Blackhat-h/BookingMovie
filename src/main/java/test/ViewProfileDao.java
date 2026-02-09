package test;
import java.sql.*;
import java.util.*;
public class ViewProfileDao {
		
	public ArrayList<MovieTicketBeans> viewprofile(MovieTicketBeans mv)
	{
		ArrayList<MovieTicketBeans> al = new ArrayList();	
			try
			{
				Connection con = DBConnection.getCon();
				
				PreparedStatement pr = con.prepareStatement("select * from usermovie where name = ?");
				
				pr.setString(1,mv.getName());
				
				ResultSet rs = pr.executeQuery();
				
				while(rs.next())
				{
					MovieTicketBeans mt = new MovieTicketBeans();
					mt.setName(rs.getString(1));
					mt.setPassword(rs.getString(2));
					mt.setMailid(rs.getString(3));
					mt.setNumber(rs.getInt(4));
					
					al.add(mt);
					
				}
			}
			catch(Exception ex)
			{
				System.out.println(ex.getLocalizedMessage());
			}
		
			return al ;
	}
}
