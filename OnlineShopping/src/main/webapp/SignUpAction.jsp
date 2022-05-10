<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String mobileNumber = request.getParameter("mobileNumber");
String securityQuestion = request.getParameter("securityQuestion");
String answer = request.getParameter("answer");
String password = request.getParameter("password");
String address="";
String city="";
String state="";
String country="";
Connection con;
PreparedStatement pst;
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con = DriverManager.getConnection("jdbc:mysql://localhost/onlineshop","root","");
	pst = con.prepareStatement("insert into users values(?,?,?,?,?,?,?,?,?,?)");
	pst.setString(1,name);
	pst.setString(2,email);
	pst.setString(3,mobileNumber);
	pst.setString(4,securityQuestion);
	pst.setString(5,answer);
	pst.setString(6,password);
	pst.setString(7,address);
	pst.setString(8,city);
	pst.setString(9,state);
	pst.setString(10,country);
	pst.executeUpdate();
	response.sendRedirect("signup.jsp?msg=valid");
}
catch(Exception e){
	System.out.println(e);
	System.out.println("Table was not updated");
	response.sendRedirect("signup.jsp?msg=invalid");
}
%>
