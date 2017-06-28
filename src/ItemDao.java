

	import java.sql.DriverManager;

	import java.sql.Connection;
	import java.io.IOException;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.SQLException;
	import java.util.ArrayList;
	import java.util.List;

	public class ItemDao {
	public static Connection getConnection()
	{
		Connection con=null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ims","root","root");
			
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return con;
	}

	public static int save(Item i)
	{
		int status=0;
		try
		{
			Connection con=ItemDao.getConnection();
			PreparedStatement ps=con.prepareStatement("insert into Product(Productname) values(?)");
			ps.setString(1,i.getProductname());
			
			status=ps.executeUpdate();
			con.close();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return status;
	}
	public static Item getProductName(String Productname)
	{
		Item i=new Item();
		try
		{
			Connection con=ItemDao.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from Product where Productname=?");
			ps.setString(1,Productname);
			
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			i.setProductname(rs.getString(1));
			
			
		}
		con.close();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return i;
	}
	public static List<Item> getAllItem()
	{
		List<Item> list=new ArrayList<Item>();
		try
		{
			Connection con=ItemDao.getConnection();
			PreparedStatement ps=con.prepareStatement("select * from Product");
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			Item i=new Item();
			i.setProductname(rs.getString(1));
			i.setThree(rs.getString(2));
			list.add(i);
		}
		con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}
/*	public static int Update(Item i)
	{
		int status=0;
		try
		{
			Connection con=ItemDao.getConnection();
			PreparedStatement ps=con.prepareStatement("update Signup set uname=?,pass=?,repass=?,mobno=?,seqques=?,answer=? where email=?");
		ps.setString(1,u.getUname());
		ps.setString(2,u.getPass());
		ps.setString(3,u.getRepass());
		ps.setInt(4,u.getMobno());
		ps.setString(5,u.getSeqques());
		ps.setString(6,u.getAnswer());
		ps.setString(7,u.getEmail());
		status=ps.executeUpdate();
		con.close();
	}
	catch(Exception ex)
	{
		ex.printStackTrace();
	}
	return status;
	}*/
	public static int delete (String Productname,String Three)
	{
		int status=0;
		try
		{
			Connection con=ItemDao.getConnection();
			PreparedStatement ps=con.prepareStatement("delete from Product where Productname=? or Three=?");
			ps.setString(1,Productname);
			ps.setString(2,Three);
			status=ps.executeUpdate();
			con.close();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
		}


	}

