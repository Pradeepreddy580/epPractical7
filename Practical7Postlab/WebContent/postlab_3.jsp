<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Success</title>
</head>
<body>

<h3>Bill</h3>

<hr>

<h4>Your Payment Is Successfull !!</h4>
<h4>Username : <%=session.getAttribute("uname") %></h4>
<h4>College Name : <%=session.getAttribute("cname") %></h4>
<h4>Amount Paid : <%=session.getAttribute("amount") %></h4>

<%
	session.invalidate();
%>

</body>
</html>