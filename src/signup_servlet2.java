

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
 * Servlet implementation class signup_servlet2
 */
@WebServlet("/signup_servlet2")
public class signup_servlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("text/html");
         RequestDispatcher rd = getServletContext().getRequestDispatcher("/logheader.jsp");
         rd.include(request, response);
		PrintWriter out=response.getWriter();
		out.print("<br><br>");
		out.println("<a href='register.jsp'><input type='submit' value='Add New Users' style='color:green;font-size:larger;background-color:lightblue'></a>");
		out.println("<h1>Users List</h1>");
		
		List<User> list=UserDao.getAllUsers();
		
		out.print("<table border='0' width='100%'");
		out.print("<tr><th>Username</th><th>Email</th><th>Password</th><th>Repassword</th><th>Mobile No</th><th>SecurityQues</th><th>Answer</th></tr>");
		for(User u:list){
			out.print("<tr><td>"+u.getUname()+"</td><td>"+u.getEmail()+"</td><td>"+u.getPass()+"</td><td>"+u.getRepass()+"</td><td>"+u.getMobno()+"</td><td>"+u.getSeqques()+"</td><td>"+u.getAnswer()+"</td><td><a href='DeleteServlet?email="+u.getEmail()+"' style='color:blue;font-size:larger;background-color:lightblue'><input type='submit' value='Delete'></a></td></tr>");
		}
		out.print("</table>");
		out.print("<br><br>");
		RequestDispatcher rd1 = getServletContext().getRequestDispatcher("/footer.jsp");
        rd1.include(request, response);
		
		out.close();
	}
	}

