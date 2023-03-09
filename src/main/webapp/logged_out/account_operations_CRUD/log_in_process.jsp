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

	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>

<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">


<title>Rangya | Log In</title>

<link rel = "stylesheet" type = "text/css" href = "../../src/css/styles.css" />


<style>

	html {
	
		background-image: url(../../src/images/index/pexels-kaique-rocha-48262.jpg)		
	
	}

</style>

</head>

<body>

    <!-- Navbar -->

    <nav class="navbar" role="navigation" aria-label="main-navigation">

        <div class="navbar-brand">
            <a class="navbar-item" href="../../index.jsp">
                <img src="../../src/images/logo/RangyaBlack.png" height="28"> for Sellers
            </a>

            

        </div>
        
        <div class="navbar-end">
        	<div class="navbar-item">
        		<div class="buttons">
        			<a class="button is-light" href="../../index.jsp">
        				Home
        			</a>
        			<a class="button is-light" href="sign_up.jsp">
        				Sign Up
        			</a>
        		</div>
        	</div>
        </div>

    </nav>
    
    <div class="box" id="accounts_box">
    
    <div class="block">
    	<strong>Your email or password is incorrect.</strong>
    </div>
    
   	<div class="field">

		<div class="control">
			<a href="../account_operations/log_in.jsp"><button class="button is-light">Try again</button></a>
		</div>
		
		<p style="padding-top: 2%;">Don't have an account yet? <a href="../account_operations/sign_up.jsp">Sign up!</a></p>
	</div>
	
	</div>
    
</body>

</html>