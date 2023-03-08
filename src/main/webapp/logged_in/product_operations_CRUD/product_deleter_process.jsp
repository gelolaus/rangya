<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<html>
<head>
<meta charset="UTF-8">
<title>Deleter</title>
</head>
<body>

	<%
	int id = Integer.parseInt(request.getParameter("product_id"));
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;

		try {
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/rangya_db", "root", "Love,@funjai_gr");
			statement = connection.createStatement();
			int i = statement.executeUpdate("Delete FROM product_tbl where product_id=" + id);
			out.println("Delete succesful");
			response.sendRedirect("../dashboard.jsp");
			} catch (Exception e) {
		e.printStackTrace();
			}
	%>

</body>
</html>