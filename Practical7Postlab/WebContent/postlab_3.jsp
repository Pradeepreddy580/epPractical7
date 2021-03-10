<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = 'java.sql.*' %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Success</title>
</head>
<body>

<%
try{
	
	String uname = (String)session.getAttribute("uname");
	String cname = (String)session.getAttribute("cname");
	String amount = (String)session.getAttribute("amount");
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ep","ep123");
	
	String sql = "update postlab7_1 set cname = ?, amount = ? where username = ? ";
	
	PreparedStatement ps = con.prepareStatement(sql);
	
	ps.setString(1, cname);
	ps.setString(2, amount);
	ps.setString(3, uname);
	
 int c = ps.executeUpdate();
	
	if(c>0){
		%>
		<h3>Bill</h3>

		<hr>

		<h4>Your Payment Is Successfull !!</h4>
		<h4>Username : <%=session.getAttribute("uname") %></h4>
		<h4>College Name : <%=session.getAttribute("cname") %></h4>
		<h4>Amount Paid : <%=session.getAttribute("amount") %></h4>
<% 
	}else{
		out.println("payment unsuccessfull");
	}
}catch(ClassNotFoundException e){
	e.printStackTrace();
}catch(SQLException e){
	e.printStackTrace();
}
%>

<a href='postlab_4.jsp'>Logout</a>

</body>
</html>