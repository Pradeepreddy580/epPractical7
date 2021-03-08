<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
		
		if(pwd.equals("abc123")){
			out.println("Login success");
		}else{
			out.println("Wrong password");
			out.println("<a href='inlab_3.jsp?uname="+uname+"'>Forgot Password</a>");
		}
	%>
</body>
</html>