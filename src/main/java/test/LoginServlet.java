package test;
import java.io.IOException;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@SuppressWarnings("serial")
@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
				
		//MovieTicketBeans mv = new MovieTicketBeans ();
				
		String user = req.getParameter("username");	
		String pwd = req.getParameter("pwd");
		
		MovieTicketBeans mv = new LoginDao().login(user,pwd);

		if(mv==null)
		{
			req.setAttribute("msg", "<h1> Invalid Username and password </h1>");
			req.getRequestDispatcher("Failed.jsp").forward(req, res);
		}
		else
		{
			HttpSession ht = req.getSession(); // create the session 
			ht.setAttribute("mvs", mv);
			ht.setMaxInactiveInterval(1*60);
			
			
			ServletContext sct = req.getServletContext();
			sct.setAttribute("mvs", mv);
			
			Cookie ck = new Cookie("fname", mv.getName());
			res.addCookie(ck);
			
			req.getRequestDispatcher("OptionsMovieTicket.jsp").forward(req, res);
							
		}
		
				
	}
		

}
