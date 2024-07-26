<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import= "java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display By ID</title>
<style>
		#id{
		width:320px;
		height:30px;
		}
		.submit1,.submit2,.submit3,.submit4{
		width:200px;
		height:30px;
		border:none;
		text-decoration:none;
		color:white;
		font-size:16px;
		}
		.submit1{
		background-color:red;
		}
		.submit2{
		background-color:blue;
		
		}
		.submit3{
		background-color:Green;
		}
		.submit4{
		background-color:orange
		}
		
		table{
		font-size:24px;
		}

</style>
</head>
<body>
	<center>
		<h1>Check <span style="color:red;">Student</span> Details</h1>
		<hr>
		<form method="post" action="fetch_2.jsp">
		<table border="4" >
			<tr>
				<th>Enter id Number</th>
			</tr>
			<tr>
				<td><input type="number" name ="id" id ="id" required /></td>
			</tr>
			<tr >
				<td style="text-align:center"><button class="submit1" type="submit" >Fetch</button></td>
			</tr>
		</table>
		</form>
		
		<h3><a href="index.jsp">Go Back</a></h3>
	</center>
</body>
</html>