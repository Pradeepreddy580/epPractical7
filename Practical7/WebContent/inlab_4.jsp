<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = 'java.sql.*' %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<%
String uname = (String)session.getAttribute("uname");
String pwd = request.getParameter("pwd");
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ep","ep123");
	
	String sql = "update prac7 set password = ? where username = ?";
	
	PreparedStatement ps = con.prepareStatement(sql);
	
	ps.setString(1, pwd);
	ps.setString(2, uname);
	
	int count = ps.executeUpdate();
	
	if(count > 0){
		out.println("update success");
		response.sendRedirect("inlab_1.jsp");
	}else{
		out.println("update Unsuccessfull");
	}
}catch(ClassNotFoundException e){
	e.printStackTrace();
}catch(SQLException e){
	e.printStackTrace();
}
%>
</body>
</html>