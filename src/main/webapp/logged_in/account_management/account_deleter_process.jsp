<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%!String driverName = "com.mysql.jdbc.Driver";%>

<%@ page import="java.sql.*"%>


<html>
<head>
<meta charset="UTF-8">
<title>Deleter</title>
</head>
<body>

	<%
	int user_id = Integer.parseInt(request.getParameter("user_id"));
	Connection con = null;
	PreparedStatement ps = null;
	try {
		Class.forName(driverName);
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rangya_db", "root", "Love,@funjai_gr");
		String sql2 = "UPDATE currentuser_tbl SET user_id = NULL WHERE currentuser_id = 1";
		ps = con.prepareStatement(sql2);
		int i2 = ps.executeUpdate();
		if (i2 > 0) {
			try {
		Class.forName("com.mysql.jdbc.Driver");
			} catch (ClassNotFoundException e) {
		e.printStackTrace();
			}

			Connection connection = null;
			Statement statement = null;
			ResultSet resultSet = null;

			try {
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/rangya_db", "root",
				"Love,@funjai_gr");
		statement = connection.createStatement();
		int i = statement.executeUpdate("Delete FROM user_tbl where user_id=" + user_id);
		out.println("Delete succesful");
		response.sendRedirect("../../index.jsp");
			} catch (Exception e) {
		e.printStackTrace();
			}
		} else {
			out.print("There is a problem in updating Record.");
		}
	} catch (SQLException sql) {
		request.setAttribute("error", sql);
		out.println(sql);
	}
	%>

</body>
</html>