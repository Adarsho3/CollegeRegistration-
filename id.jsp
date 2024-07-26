<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import= "java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display By ID</title>
</head>
<body>
	<center>
		<h3>Check Student Details</h3>
		<form method="get" action="fetch.jsp">
		<table border="4" >
			<tr>
				<th>Enter ID Number</th>
			</tr>
			<tr>
				<td><input type="number" name ="id" required /></td>
			</tr>
			<tr >
				<td style="text-align:center"><button type="submit" >Fetch</button></td>
			</tr>
		</table>
		</form>
	</center>
</body>
</html>