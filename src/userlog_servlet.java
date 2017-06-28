import java.io.IOException;
//import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

/**
 * Servlet implementation class userlog_servlet
 */
@WebServlet("/userlog_servlet")
public class userlog_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static Logger logger = Logger.getLogger(userlog_servlet.class);
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	        
	        String email = request.getParameter("email");
	        String password = request.getParameter("pass");
System.out.println(email);
	            Connection con = (Connection) getServletContext().getAttribute("DBConnection");
	            PreparedStatement ps = null;
	            ResultSet rs = null;
	            ResultSet rs1 = null;
	            try 
	            {
	               ps = con.prepareStatement("select user from signup where email='" + email + "' and pass='" + password + "'");
	               rs = ps.executeQuery();
	                if (rs != null) 
	                {
	                    boolean checkNext = rs.next();
	                    if (checkNext == true) 
	                    {
	                        HttpSession session = request.getSession();
	                        session.setAttribute("loginId", email);
	                        if(rs.getString(1).equals("admin"))
	                        {
	                            RequestDispatcher rd = getServletContext().getRequestDispatcher("/welcustom.jsp");
	                            rd.include(request, response);	
	                        }
	                        

	                        if(rs.getString(1).equals("audit"))
	                        {
	                            RequestDispatcher rd = getServletContext().getRequestDispatcher("/welcome1.jsp");
	                            rd.include(request, response);	
	                        }
	                        

	                        if(rs.getString(1).equals("branch manager"))
	                        {
	                            RequestDispatcher rd = getServletContext().getRequestDispatcher("/welcome2.jsp");
	                            rd.include(request, response);	
	                        }
	                        if(rs.getString(1).equals("User"))
	                        {
	                            RequestDispatcher rd = getServletContext().getRequestDispatcher("/index1.jsp");
	                            rd.include(request, response);	
	                        }
	                    } 
	                    else 
	                    {
	                        request.setAttribute("action", "Login");
	                       // request.setAttribute("date", dateFormat.format(date));
	                        request.setAttribute("msg", "<font color=black>User Name or Password is wrong.</font>");
	                        request.setAttribute("passwordVal", "<font color=black>User Name or Password is wrong.</font>");
	                        RequestDispatcher rd = getServletContext().getRequestDispatcher("/AdminLogin.jsp");
	                        rd.include(request, response);
	                    }
	                } 
	              
	            } catch (SQLException e) {
	                e.printStackTrace();
	               logger.error("Database connection problem");
	                throw new ServletException("DB Connection problem.");
	            } finally {
	                try {
	                    if (rs1 != null) {
	                        rs1.close();
	                    }
	                    rs.close();
	                    ps.close();
	                } catch (SQLException e) {
	                  logger.error("SQLException in closing PreparedStatement or ResultSet");;
	                }

	            }
	        }
	    }
	

	


