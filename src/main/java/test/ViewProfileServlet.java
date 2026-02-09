package test;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.*;

@WebServlet("/ViewProfile")
public class ViewProfileServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
			
		MovieTicketBeans mv = new MovieTicketBeans ();
		ArrayList <MovieTicketBeans> al = new ArrayList();
		
		mv.setName(req.getParameter("username"));
		
		al=new ViewProfileDao().viewprofile(mv);
		
		req.setAttribute("list", al);
		req.getRequestDispatcher("ViewProfile.jsp").forward(req, res);
				
		
	}
	
	
}
