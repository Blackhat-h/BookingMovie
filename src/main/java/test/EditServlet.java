package test;

import jakarta.servlet.http.HttpServlet;


import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.*;

@WebServlet("/edit")
public class EditServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String name = req.getParameter("name");
		String mailid = req.getParameter("mailid");
		String pwd = req.getParameter("pwd");
		int number = Integer.parseInt(req.getParameter("number"));
		
		MovieTicketBeans mv = new MovieTicketBeans ();
		
		mv.setName(name);
		mv.setMailid(mailid);
		mv.setNumber(number);
		mv.setPassword(pwd);
		
		int k = new EditDao().update(mv);
		
		if(k!=0)
		{
			req.setAttribute("msg","<h4> Update Successfully </h4>");
			req.getRequestDispatcher("Head.jsp").forward(req, res);
			// jsp page add for beautifully message 
		}
		else
		{
			// jsp page add for beauti message 
		}
		
	}

		
}
