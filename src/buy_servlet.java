

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class buy_servlet
 */
@WebServlet("/buy_servlet")
public class buy_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 RequestDispatcher rd = getServletContext().getRequestDispatcher("/logheader.jsp");
         rd.include(request, response);
		PrintWriter out=response.getWriter();
		out.print("<br><br>");
		
		//out.println("<h1>Users List</h1>");
		
		List<Item> list=ItemDao.getAllItem();
		
		out.print("<table border='0' width='100%'");
		out.print("<tr><th>i-phone</th></tr>");
		for(Item i:list){
			out.print("<tr><td><a href='BuyDelete?Productname="+i.getProductname()+"' style='color:blue;font-size:larger;background-color:lightblue'><img src='img/iphone.jpg'><input type='submit' value='Delete'></a></td></tr>");
		}
		out.print("</table>");
		out.print("<br><br>");
		 RequestDispatcher rd2 = getServletContext().getRequestDispatcher("/footer.jsp");
      rd2.include(request, response);
		out.close();
		
	}
	}

