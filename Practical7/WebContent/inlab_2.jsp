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
		String uname = request.getParameter("uname");
		String pwd = request.getParameter("pwd");
		
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ep","ep123");
			
			String sql = "select * from prac7 where username = ? and password = ?";
			
			PreparedStatement ps = con.prepareStatement(sql);
			
			ps.setString(1, uname);
			ps.setString(2, pwd);
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()){
				out.println("Login success");
			}else{
				out.println("Wrong password");
				out.println("<a href='inlab_3.jsp?uname="+uname+"'>Forgot Password</a>");
			}
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}catch(SQLException e){
			e.printStackTrace();
		}
	%>
</body>
</html>