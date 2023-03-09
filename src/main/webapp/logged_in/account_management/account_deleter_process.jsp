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
	int user_id = Integer.parseInt(request.getParameter("user_id"));
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
			int i = statement.executeUpdate("Delete FROM user_tbl where user_id=" + user_id);
			out.println("Delete succesful");
			response.sendRedirect("../log_out_operations_CRUD/log_out_process.jsp");
			} catch (Exception e) {
		e.printStackTrace();
			}
	%>

</body>
</html>