<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import = "java.sql.Connection" %>
<%@page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@page import = "java.sql.ResultSet" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display</title>
</head>
<body>
	<table>
		<center>
			<h3>Training Enrollment List</h3>
		
			<table border ="5" Style="margin-left:400px">
			<tr>
				<th>Student Id</th>
				<th>Student Name</th>
				<th>Student Roll</th>
				<th>Student Email</th>
				<th>Student Department</th>
				<th>Student Course</th>
			</tr>
			
			
			<% 
			final String URL ="jdbc:mysql://localhost:3306/Enrollment";
			final String username ="root";
			final String password = "";
			Connection con;
			PreparedStatement pst;
			ResultSet rst;
			
			try{
				Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection(URL,username,password);
				if(con != null){
						String Query = "select * from register";
						pst = con.prepareStatement(Query);
						rst=pst.executeQuery();
						while(rst.next()){
							%>
							<tr>
							<td><%=rst.getInt(1) %></td>
							<td><%=rst.getString(2) %></td>
							<td><%=rst.getInt(3) %></td>
							<td><%=rst.getString(4) %></td>
							<td><%=rst.getString(5) %></td>
							<td><%=rst.getString(6) %></td>
							</tr>
							<%
						}
				}
			}catch(Exception e){
				
			}
			%>
			</tr>
			</table >
			<h3><a href = "index.jsp" >Click</a><br>Here for new Registration</h3>
		</center>
	</table>
	</body>
	</html>