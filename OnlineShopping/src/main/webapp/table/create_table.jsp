<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
Connection con;
Statement st;
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost/onlineshop","root","");
	st = con.createStatement();
	
	String query1 = "create table users(name varchar(100), email varchar(100)primary key, mobileNumber bigint,"
			+ "securityQuestion varchar(200), answer varchar(200), password varchar(100), address varchar(500),"
			+ "city varchar(100), state varchar(100), country varchar(100))";
	
	String query2 = "create table product(id int, name varchar(500), category varchar(200), price int, active varchar(10))";
	String query3 = "create table cart(email varchar(100), product_id int, quantity int, price int, total int, address varchar(500), city varchar(100), state varchar(100),country varchar(100), mobileNumber bigint, orderDate varchar(100), deliveryDate varchar(100), paymentMethod varchar(100), transactionId varchar(100),status varchar(10))";
	String query4 = "create table message(id int AUTO_INCREMENT, email varchar(100), subject varchar(200), body varchar(1000), PRIMARY KEY(id))";
	System.out.println(query1);
	System.out.println(query2);
	System.out.println(query3);
	System.out.println(query3);
	//st.execute(query1);
	//st.execute(query2);
	//st.execute(query3);
	st.execute(query4);
	System.out.println("Table was created succesfuly");
	con.close();
}		
catch (Exception e) {
	System.out.print(e);
}

%>