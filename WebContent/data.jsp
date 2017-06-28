<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.http.*"%>

<%
  int count=0;
   int q = Integer.parseInt(request.getParameter("q"));
   try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ims", "root", "root");
        Statement stmt = con.createStatement(); //Create Statement to interact
    	int i= stmt.executeUpdate("insert into luke values('"+q+"')");              
	    if(i>0)
		{
			out.print("<h1>Inserted values successfully</h1>");
			
		
        ResultSet r = stmt.executeQuery("select * from luke where(likes='" + q + "');");
        while (r.next()) 
        {
            count=count+1;
        }
        con.close();
        
   } 
   }
   catch (Exception e) 
   {
        e.printStackTrace();
   }
%>

Count:<%out.print(count);%> 
Output: jquery, ajax