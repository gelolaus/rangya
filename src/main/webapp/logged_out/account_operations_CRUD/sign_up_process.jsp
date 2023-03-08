<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>    
    
<!DOCTYPE html>
<html>

<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8">

	<title>Creator</title>

	<link rel="stylesheet" href="../../src/css/styles.css">
</head>

<body>

<div class="box" id="accounts_box">

<%
	String first_name = request.getParameter("first_name");
	String last_name = request.getParameter("last_name");
	String email_address = request.getParameter("email_address");
	String contact_number = request.getParameter("contact_number");
	String password = request.getParameter("password");
	
	try {
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection connectSQL = DriverManager.getConnection("jdbc:mysql://localhost:3306/rangya_db", "root", "Love,@funjai_gr");
		Statement st = connectSQL.createStatement();
		
		st.executeUpdate("insert into user_tbl(first_name,last_name,email_address,contact_number,password) values('" + first_name + "','" + last_name + "','" + email_address + "','" + contact_number + "','" + password + "')");
		
		out.println("<div class=\"block\"><strong>Account successfully created!</strong></div>");
		
	}
	
	catch (Exception e) {
		
		out.println("<div class=\"block\"><strong>There is an error in account creation.</strong></div>");
		
	}
%>

	<div class="field">

		<div class="control">
		<a href="../account_operations/log_in.jsp"><button class="button is-light">Log in</button></a>
		</div>
	</div>
	
</div>
</body>
</html>