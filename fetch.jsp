<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<% 
	final String URL ="jdbc:mysql://localhost:3306/Enrollment";
	final String username = "root";
	final String password ="";
	Connection conn;
	PreparedStatement pst;
	ResultSet rst;
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(URL,username,password);
		if(conn != null){
			String Query ="Select * from register where id = ?";
			pst=conn.prepareStatement(Query);
			int id = Integer.parseInt(request.getParameter("id"));
			pst.setInt(1, id);
			rst= pst.executeQuery();
			if(rst.next()){
				%>
				<h1> ID FOUND.</h1>
				<table border="5">
					<tr>
						<th>Student Id</th>
						<th>Student Name</th>
						<th>Student Roll</th>
						<th>Student Email</th>
						<th>Student Department</th>
						<th>Student Course</th>
					</tr>
						<tr>
							<td><%=rst.getInt(1) %></td>
							<td><%=rst.getString(2) %></td>
							<td><%=rst.getInt(3) %></td>
							<td><%=rst.getString(4) %></td>
							<td><%=rst.getString(5) %></td>
							<td><%=rst.getString(6) %></td>
							</tr>
				</table>
				
				<h3><a href="index.jsp">Home</a></h3>
				<%
				
			}
			else{
				%>
				<h3>ID NOT FOUND</h3>
				<%
			}
			
		}
	}catch(Exception e){
		e.printStackTrace();
		%>
		<h3>Server Down</h3>
		<%
		}
		%>