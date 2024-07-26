<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>

<%
final String URL = "jdbc:mysql://localhost:3306/Enrollment";
final String username = "root";
final String password = "";
Connection conn;
PreparedStatement pst;
ResultSet rst;

try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	conn = DriverManager.getConnection(URL, username, password);
	if (conn != null) {
		String Query = "Select * from register where id = ?";
		pst = conn.prepareStatement(Query);
		int id = Integer.parseInt(request.getParameter("id"));
		pst.setInt(1, id);
		rst = pst.executeQuery();
		if (rst.next()) {
%>
<style>
	th, td {
		width: 200px;
	}
	#name,#roll,#email,#department,#enrol{
		width:320px;
		height:30px;
		}
		.submit1,.submit2,.submit3,.submit4{
		width:160px;
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
		.ancor{
		text-decoration:none;
		color:white;
		}
		table{
		font-size:20px;
		}
	
		


</style>
<center>
	<h1 style="color: Blue">
		<u> ID FOUND.</u>
	</h1>
	
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
				<td><%=rst.getInt(1)%></td>
				<td><%=rst.getString(2)%></td>
				<td><%=rst.getInt(3)%></td>
				<td><%=rst.getString(4)%></td>
				<td><%=rst.getString(5)%></td>
				<td><%=rst.getString(6)%></td>
			</tr>

		</table>

		<h2>Fill Details You Want To Update.</h2>
		<form method="post" action="update.jsp">
		<table border="4">
			<tr>
				<td colspan="1">Student ID</td>
				<td colspan="2"><input type="number" name="id" value="<%=rst.getInt(1)%>" readonly/></label></td>
			</tr>
			<tr>
				<td colspan="1">Student Name</td>
				<td colspan="2"><input type="text" placeholder="Enter Name"
					id="name" name="name" required></td>
			</tr>
			<tr>
				<td colspan="1">Roll Number</td>
				<td colspan="2"><input type="text" placeholder="Enter Roll No"
					id="roll" name="roll" required></td>
			</tr>
			<tr>
				<td colspan="1">Email Address</td>
				<td colspan="2"><input type="email" placeholder="Enter Email"
					id="email" name="email" required></td>
			</tr>
			<tr>
				<td colspan="1">Department</td>
				<td colspan="2"><select id="department" name="department"
					placeholder="Select Department" required>
						<option value="CSE">Computer Science Engineering</option>
						<option value="ECE">Electronics and Communication
							Engineering</option>
						<option value="EEE">Electrical and Electronics
							Engineering</option>
						<option value="ME">Mechanical Engineering</option>
						<option value="CE">Civil Engineering</option>
				</select></td>
			</tr>
			<tr>
				<td colspan="1">EnrollMent</td>
				<td colspan="2"><select id="enrol" name="enrol" required>
						<option value="python">Python</option>
						<option value="java">java</option>
						<option value="C++">C++</option>
						<option value="C">C</option>
						<option value="JavaScript">JavaScript</option></td>
			</tr>
			<tr>
				
					<td  colspan="3" style="text-align: center;"><button class="submit4" type="submit">Update</button></td>	
					
			</tr>
			</table>
			</form>
		
				<h3><a href="index.jsp">Home</a></h3>
				</center>
				<%
				} else {
				%>
				<h3 style="color: red; text-align: center; font-size: 40px">ID
					NOT FOUND</h3>
				<%
				}

				}
				} catch (Exception e) {
				e.printStackTrace();
				%>
				<h3>Server Down</h3>
				<%
				}
				%>