package test;
import java.io.IOException;
import java.sql.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
@WebServlet("/BookMovie")

public class BookMovie extends GenericServlet{

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		MovieBookBeans ms = new MovieBookBeans ();
				
		ms.setName(req.getParameter("name"));
		ms.setNumber(Integer.parseInt(req.getParameter("number")));
		int qty=Integer.parseInt(req.getParameter("qty"));
		int price=Integer.parseInt(req.getParameter("price"));
		int total = qty*price ;
		
		ms.setQty(qty);
		ms.setPrice(price);
		ms.setTotal(total);
		ms.setMovieName(req.getParameter("movie"));
		ms.setGenre(req.getParameter("genre"));
		ms.setTime(req.getParameter("showTime"));
		
						
			int k = new MovieTicketDao().insert(ms);
			if(k!=0)
			{
				
				req.setAttribute("msg", "<h1>Ticket Book Successfully<h1>");
				req.getRequestDispatcher("BookMovieMsg.jsp").forward(req, res);
							
				
			}
			else
			{
				System.out.println("Failed");
			}
			
		}
		
		
		
		
	}


