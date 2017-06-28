

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class usertype_servlet
 */
@WebServlet("/usertype_servlet")
public class usertype_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String t1=request.getParameter("t1");
		String t2=request.getParameter("t2");
		String t3=request.getParameter("t3");
		String t4=request.getParameter("t4");
		if(t1.equals("Admin"))
		{
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/AdminLogin.jsp");
            rd.include(request, response);	
		}
		else
			if(t2.equals("Audit"))
		{
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/AdminLogin.jsp");
            rd.include(request, response);	
		}
			else
				if(t3.equals("Branch Management"))
		{
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/AdminLogin.jsp");
            rd.include(request, response);	
		}
			else
				if(t4.equals("Management Executive"))
		{
			RequestDispatcher rd = getServletContext().getRequestDispatcher("/AdminLogin.jsp");
            rd.include(request, response);	
		}
	}



}
