``
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%!String driverName = "com.mysql.jdbc.Driver";%>
<%



Connection con = null;
PreparedStatement ps = null;
try {
	Class.forName(driverName);
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rangya_db", "root", "Love,@funjai_gr");
	String sql = "UPDATE currentuser_tbl SET user_id = NULL WHERE currentuser_id = 1";
	ps = con.prepareStatement(sql);
	int i = ps.executeUpdate();
	if (i > 0) {
out.print("Record Updated Successfully");
response.sendRedirect("index.jsp");

	} else {
out.print("There is a problem in updating Record.");
	}
} catch (SQLException sql) {
	request.setAttribute("error", sql);
	out.println(sql);
}
%>
<a href="index.jsp">Back to Results</a>
``