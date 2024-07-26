<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import = "java.sql.Connection" %>
<%@page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%
	final String URL ="jdbc:mysql://localhost:3306/Enrollment";
	final String username ="root";
	final String password = "";
	Connection con;
	PreparedStatement pst;
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection(URL,username,password);
		if(con != null){
			int id = Integer.parseInt(request.getParameter("id"));
			String name = request.getParameter("name");
			long roll = Integer.parseInt(request.getParameter("roll"));
			String email = request.getParameter("email");
			String dept = request.getParameter("department");
			String enrol = request.getParameter("enrol");
			String Query = "UPDATE register SET name=?, roll = ?, email= ? , department = ?, enroll = ? WHERE id =?";
			pst=con.prepareStatement(Query);
			pst.setString(1,name);
			pst.setLong(2, roll);
			pst.setString(3, email);
			pst.setString(4, dept);
			pst.setString(5, enrol);
			pst.setInt(6,id);
			pst.executeUpdate();
			
			
			%>
			<marquee><h1 style="width:20px;"> Your Data Has Been Updated.</h1>
			</marquee><h3><a href="index.jsp">Home</a></h3>
			<%
		}
		
	}catch(Exception e){
		e.printStackTrace();
		%>
		<h1> college server is down. </h1>
		<%
		}
%>