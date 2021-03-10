<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = 'java.sql.*' %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<body>
<%
		String uname = "def@mail.com";
		String pwd = "abc123";
		
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ep","ep123");
			
			String sql = "insert into prac7 values(?,?)";
			
			PreparedStatement ps = con.prepareStatement(sql);
			
			ps.setString(1, uname);
			ps.setString(2, pwd);
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()){
				System.out.println("Login success");
			}else{
				System.out.println("Wrong password");
			}
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}catch(SQLException e){
			e.printStackTrace();
		}
	%>
</body>
</html>