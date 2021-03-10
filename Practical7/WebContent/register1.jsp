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
		int count = 0;
		String course = "ds";
		double cost = 400;
		
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ep","ep123");
			
			String sql = "insert into postlab7 values(?,?,?,?,?)";
			
			PreparedStatement ps = con.prepareStatement(sql);
			
			ps.setString(1, uname);
			ps.setString(2, pwd);
			ps.setString(3, course);
			ps.setInt(4, count);
			ps.setDouble(5, cost);
			
			int c = ps.executeUpdate();
			
			if(c > 0){
				System.out.println(" success");
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