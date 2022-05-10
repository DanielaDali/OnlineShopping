<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String category=request.getParameter("category");
String price=request.getParameter("price");
String active=request.getParameter("active");
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost/onlineshop","root","");
 	Statement st = con.createStatement();
	st.executeUpdate("update product set name='"+name+"', category='"+category+"',price='"+price+"',active='"+active+"' where id='"+id+"' ");
	if(active.equals("No"))
	{
		st.executeUpdate("delete from cart where product_id='"+id+"' and addess is NULL");
	}
	response.sendRedirect("allProductEditProduct.jsp?msg=done");
	}

catch(Exception e){
	response.sendRedirect("allProductEditProduct.jsp?msg=wrong");
	System.out.println(e);
}
%>