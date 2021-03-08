<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirmation</title>
</head>
<body>
	<%
		String uname = request.getParameter("uname");
		String cname = request.getParameter("cname");
		String amount = request.getParameter("amount");
		
		session.setAttribute("uname", uname);
		session.setAttribute("cname", cname);
		session.setAttribute("amount", amount);
	%>
	
	<h3>You are paying to <%=session.getAttribute("cname") %> Rs.<%= session.getAttribute("amount") %> </h3>
	
	<form action='postlab_3.jsp' action='post'>
		<input type='submit' value='Continue'>
	</form>
</body>
</html>