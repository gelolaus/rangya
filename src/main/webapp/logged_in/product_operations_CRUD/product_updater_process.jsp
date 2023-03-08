<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%!String driverName = "com.mysql.jdbc.Driver";%>
<%
String product_id = request.getParameter("product_id");
String product_name = request.getParameter("product_name");
String product_image = request.getParameter("product_image");
String product_description = request.getParameter("product_description");
int product_size = Integer.parseInt(request.getParameter("product_size"));
int product_price = Integer.parseInt(request.getParameter("product_price"));

if (product_id != null) {
	Connection con = null;
	PreparedStatement ps = null;
	try {
		Class.forName(driverName);
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rangya_db", "root", "Love,@funjai_gr");

		String sql = "Update product_tbl set product_id=?,product_name=?,product_image=?,product_description=?,product_size=?,product_price=? where product_id="
		+ product_id;
		ps = con.prepareStatement(sql);
		ps.setString(1, product_id);
		ps.setString(2, product_name);
		ps.setString(3, product_image);
		ps.setString(4, product_description);
		ps.setInt(5, product_size);
		ps.setInt(6, product_price);

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
<a href="../dashboard.jsp">Back to Results</a>