package test;

import java.io.IOException;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/Logout")
public class LogoutServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Cookie c[]=req.getCookies();
		
			if(c==null)
			{
				
			}
			else
			{
				ServletContext sct = req.getServletContext();
				sct.removeAttribute("mvs");
				c[0].setMaxAge(0);
						
				res.addCookie(c[0]);
				req.setAttribute("msg", "Logout Successfully");
			}
			req.getRequestDispatcher("Msg.jsp").forward(req, res);
		
	}
	
		

}
