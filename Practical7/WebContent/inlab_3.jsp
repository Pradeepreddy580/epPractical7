<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Password</title>
</head>
<body>
	<h3>Change Password</h3>
	<form action='inlab_1.jsp' action='post'>
		<%
			String uname = request.getParameter("uname");
		%>
		<h3>User : <%= uname %></h3>
		<label for='pwd'>Enter New Password</label>
		<input type='password' name='pwd' id='pwd'>
		<input type='submit' value='Submit'>
	</form>
</body>
</html>