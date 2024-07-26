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
			String name = request.getParameter("name");
			long roll = Integer.parseInt(request.getParameter("roll"));
			String email = request.getParameter("email");
			String dept = request.getParameter("department");
			String enrol = request.getParameter("enrol");
			String Query = "insert into Register(name, roll, email, department,enroll) values(?,?,?,?,?)";
			pst=con.prepareStatement(Query);
			pst.setString(1,name);
			pst.setLong(2, roll);
			pst.setString(3, email);
			pst.setString(4, dept);
			pst.setString(5, enrol);
			pst.executeUpdate();
			
			pst.close();
			con.close();
			%>
			<h1> Your Data Has Been Submitted. You will get an email once Submitted</h1>
			<%
		}
		
	}catch(Exception e){
		e.printStackTrace();
		}
%>