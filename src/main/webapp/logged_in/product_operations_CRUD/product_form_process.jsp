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

<div class="box" id="products_box">

<%
	String product_name = request.getParameter("product_name");
	String product_image = request.getParameter("product_image");
	String product_description = request.getParameter("product_description");
	String product_size = request.getParameter("product_size");
	String product_price = request.getParameter("product_price");
	
	try {
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection connectSQL = DriverManager.getConnection("jdbc:mysql://localhost:3306/rangya_db", "root", "Love,@funjai_gr");
		Statement st = connectSQL.createStatement();
		
		st.executeUpdate("insert into product_tbl(product_name,product_image,product_description,product_size,product_price) values('" + product_name + "','" + product_image + "','" + product_description + "','" + product_size + "','" + product_price + "')");
		
		out.println("<div class=\"block\"><strong>Record added.</strong></div>");
		
	}
	
	catch (Exception e) {
		
		out.println("<div class=\"block\"><strong>Error.</strong></div>");
		
	}
%>

	<div class="field is-grouped">
		<div class="control">
		<a href="../product_form.jsp"><button class="button is-success">Add again</button></a>
		</div>
		<div class="control">
		<a href="../dashboard.jsp"><button class="button is-info">View records</button></a>
		</div>
	</div>
	
</div>
</body>
</html>