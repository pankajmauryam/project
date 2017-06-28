

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Like_servlet
 */
@WebServlet("/Like_servlet")
public class Like_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Like=request.getParameter("like");
		PrintWriter out=response.getWriter();
		try       
		{
			Class.forName("com.mysql.jdbc.Driver");              
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ims","root","root");              
		Statement stmt=con.createStatement();
		int i= stmt.executeUpdate("insert into Like values('"+Like+"')");              
	    if(i>0)
		{
			out.print("<h1>Inserted values successfully</h1>");
			response.sendRedirect("login.jsp");
		}
		}
		
		catch(ClassNotFoundException e)
		{
			out.println("<h1>Driver Not Found</h1>");
		} 
		catch (SQLException e) {
			out.println("<h1>Connection Not Found</h1>");
		}
	}
	
	}


