package test;

import java.io.IOException;
import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/Details")

public class TicketDetails extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String name = req.getParameter("name");
		
		ArrayList<MovieBookBeans> al = new ArrayList();
		
		al= new TicketDetailsDao().bookdetails(name);
		
		req.setAttribute("list", al);
		req.getRequestDispatcher("Details.jsp").forward(req, resp);
						
	}

		
}
