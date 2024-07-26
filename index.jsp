<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Registration Form</title>
<style>
		
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
		a{
		text-decoration:none;
		color:white;
		}
		table{
		font-size:20px;
		}
	
		
</style>
</head>
<body>
	<center>
		<h1><u>Student <span style="color:Red;">Enrollment</span> Form</u></h1>
		<hr>
		<form action="register.jsp" method="post">
			<table border="4">
				<tr>
					<td colspan="1" >Candidate Name</td>
					<td colspan="2" ><input  type="text" placeholder="Enter Name" id="name"
						name="name" required></td>
				</tr>
				<tr>
					<td colspan="1">Roll Number</td>
					<td colspan="2"><input type="text" placeholder="Enter Roll No" id="roll"
						name="roll" required></td>
				</tr>
				<tr>
					<td colspan="1">Email Address</td>
					<td colspan="2"><input type="email" placeholder="Enter Email" id="email"
						name="email" required></td>
				</tr>
				<tr>
					<td colspan="1">Department</td>
					<td colspan="2"><select id="department" name="department" placeholder="Select Department" required>
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
					<td  colspan="1" style="text-align: center;"><input
						type="submit" value="Submit" class="submit1"></td>
						<td colspan="1"  style="text-align: center;"><button class="submit2"><a  href="display.jsp" >Display All</a></button></td>
						<td  colspan="1" style="text-align: center;"><button class="submit3"><a  href="Id.jsp">Search ID</a></button></td>
						
				</tr>
				<tr>
					<td></td>
					<td  colspan="1" style="text-align: center;"><button class="submit4"><a  href="Roll.jsp">Update</a></button></td>	
					<td></td>
				</tr>
					
			</table>
		</form>
			
	</center>
</body>
</html>