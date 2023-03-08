<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%!String driverName = "com.mysql.jdbc.Driver";%>
<%
String user_id = request.getParameter("user_id");
String first_name = request.getParameter("first_name");
String last_name = request.getParameter("last_name");
String email_address = request.getParameter("email_address");
String contact_number = request.getParameter("contact_number");
String password = request.getParameter("password");


if (user_id != null) {
	Connection con = null;
	PreparedStatement ps = null;
	try {
		Class.forName(driverName);
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rangya_db", "root", "Love,@funjai_gr");

		String sql = "Update user_tbl set user_id=?,first_name=?,last_name=?,email_address=?,contact_number=?,password=? where user_id="
		+ user_id;
		ps = con.prepareStatement(sql);
		ps.setString(1, user_id);
		ps.setString(2, first_name);
		ps.setString(3, last_name);
		ps.setString(4, email_address);
		ps.setString(5, contact_number);
		ps.setString(6, password);

		int i = ps.executeUpdate();
		if (i > 0) {
	out.print("Record Updated Successfully");
	response.sendRedirect("../dashboard.jsp");
		} else {
	out.print("There is a problem in updating Record.");
		}
	} catch (SQLException sql) {
		request.setAttribute("error", sql);
		out.println(sql);
	}
}
%>
<a href="account_page.jsp">Back to Results</a>