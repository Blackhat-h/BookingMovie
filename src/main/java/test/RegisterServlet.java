package test;
import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@SuppressWarnings("serial")
@WebServlet("/Register")
public class RegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try
		{
			MovieTicketBeans mv = new MovieTicketBeans();
						
			mv.setName(req.getParameter("name"));
			mv.setPassword(req.getParameter("pwd"));
			mv.setMailid(req.getParameter("mid"));
			int phno = Integer.parseInt(req.getParameter("phno"));
			mv.setNumber(phno);
			int k = new RegisterDao().insert(mv);
			
			if(k!=0)
			{
				req.setAttribute("msg","Register Successfully" );
				req.getRequestDispatcher("Head.jsp").forward(req, res);
			}
			else
			{
				System.out.println("Something is wrong");
			}
			
		
		}	
		catch(Exception ex)
		{
			System.out.println(ex.getLocalizedMessage());
		}
		
	}
		
		

}
