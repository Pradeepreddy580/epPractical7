<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Courses</title>
</head>
<body>
<%
	String ep = "ep";
	out.println("<a href='inlab2_4.jsp?course="+ ep +"'>Enterprise Programming</a>");
	
	String ds = "ds";
	out.println("<a href='inlab2_4.jsp?course="+ ds +"'>Data Science</a>");
%>
	
</body>
</html>