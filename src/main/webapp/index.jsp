<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
	try {
		
		Class.forName("com.mysql.jdbc.Driver");
		
	}
	catch (ClassNotFoundException e) {
		
		e.printStackTrace();
		
	}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	
	try {
		
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/rangya_db","root","Love,@funjai_gr");
		statement = connection.createStatement();
		String sql = "SELECT * FROM currentuser_tbl";
		
		resultSet = statement.executeQuery(sql);
		
		while(resultSet.next()) {
			
			String user_id = resultSet.getString("user_id");


			if(user_id != null){

				response.sendRedirect("logged_in/dashboard.jsp");
			}
			else{
				response.sendRedirect("logged_out/home.jsp");
			}
			
			
		}
		
	}
	
	catch (Exception e) {
		
		e.printStackTrace();
		
	}
	
%>