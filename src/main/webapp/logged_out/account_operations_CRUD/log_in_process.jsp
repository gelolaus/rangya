<%@ page import="java.sql.*" %>
<%!String driverName = "com.mysql.jdbc.Driver";%>

<!-- Changing User from logout -->
	<%
	String user_id;
	try {
		Class.forName("com.mysql.jdbc.Driver");
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	Connection connection2 = null;
	Statement statement2 = null;
	ResultSet resultSet2 = null;
	try {
		connection2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/rangya_db", "root", "Love,@funjai_gr");
		statement2 = connection2.createStatement();
		String email_address = request.getParameter("email_address");
		String password = request.getParameter("password");
		String sql = "SELECT * FROM user_tbl Where email_address = '" + email_address + "' AND password = '" + password + "'";
		resultSet2 = statement2.executeQuery(sql);
		while (resultSet2.next()) {
			user_id = resultSet2.getString("user_id");
			if (user_id != null) {
		Connection con = null;
		PreparedStatement ps = null;
		try {
			Class.forName(driverName);
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rangya_db", "root", "Love,@funjai_gr");
			String sql2 = "Update currentuser_tbl set user_id=?";
			ps = con.prepareStatement(sql2);
			ps.setString(1, user_id);
			int i = ps.executeUpdate();
		    response.sendRedirect("../../logged_in/dashboard.jsp");
		} catch (SQLException sql2) {
			request.setAttribute("error", sql);
			out.println(sql);
		}
			}
		}
	} catch (SQLException sql) {
		request.setAttribute("error", sql);
		out.println(sql);
	}
	%>