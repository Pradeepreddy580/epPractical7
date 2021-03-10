<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = 'java.sql.*' %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Course</title>
</head>
<body>
	<%
		String course = request.getParameter("course");
		String uname = (String)session.getAttribute("uname");
		
		
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ep","ep123");
			
			String sql = "select * from postlab7 where username = ? and course = ? ";
			
			PreparedStatement ps = con.prepareStatement(sql);
			
			ps.setString(1, uname);
			ps.setString(2, course);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				session.setAttribute("count",rs.getInt("count"));
				session.setAttribute("cost",rs.getDouble("cost"));
				
				out.println("Course\n"+rs.getString("course"));%>
				<br>
				<% 
				out.println("Count\n"+rs.getInt("count"));%>
				<br>
				<% 
				out.println("Cost\n"+rs.getDouble("cost"));
			}
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}catch(SQLException e){
			e.printStackTrace();
		}
	%>
	
	<%
	int count = (int)session.getAttribute("count");
	double cost = (double)session.getAttribute("cost");
	int c;
	double co;
		if(count == 0){
			count = 1;
			cost = cost * count;
			c = count;
			co = cost;
		}else{
			count++;
			cost = cost * count;
			c = count;
			co = cost;
		}
		
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ep","ep123");
			
			String sql = "update postlab7 set count = ?, cost = ? where username = ? and course = ? ";
			
			PreparedStatement ps = con.prepareStatement(sql);
			
			ps.setInt(1, c);
			ps.setDouble(2, co);
			ps.setString(3, uname);
			ps.setString(4, course);
			
			ps.executeUpdate();
			
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}catch(SQLException e){
			e.printStackTrace();
		}
		
		
	%>
</body>
</html>