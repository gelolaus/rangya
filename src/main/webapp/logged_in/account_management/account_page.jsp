<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>

<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">


<title>Rangya | Home</title>

<link rel="stylesheet" type="text/css" href="../../src/css/styles.css" />

</head>

<body>

	<nav class="navbar" role="navigation" aria-label="main-navigation">

		<div class="navbar-brand">
			<a class="navbar-item" href="../index.jsp"> <img
				src="../../src/images/logo/RangyaBlack.png" height="28"> for
				Sellers
			</a>


		</div>

		<div class="navbar-menu">

			<div class="navbar-start">

				<a class="navbar-item" href=""> <strong>Dashboard</strong>
				</a> <a class="navbar-item" href="product_operations/product_form.jsp">
					Create </a>

			</div>

			<div class="navbar-end">

				<div class="navbar-item has-dropdown is-hoverable">
					<a class="navbar-link"> Hello, Username! </a>

					<div class="navbar-dropdown">
						<a class="navbar-item"> View Account </a>
						<hr class="navbar-divider">
						<a class="navbar-item" style="color: red;"> Log Out </a>

					</div>

				</div>

			</div>

		</div>

	</nav>
	<!-- Form -->
	<%
	String user_id = request.getParameter("user_id");

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
		String sql = "SELECT * FROM user_tbl where user_id=" + user_id;
		resultSet = statement.executeQuery(sql);
		while (resultSet.next()) {
	%>
	<form method="POST" action="account_page_form.jsp" class="box"
		id="accounts_box">



		<p class="title is-3" style="text-align: center;">Sign Up</p>


		<div class="field">
			<div class="control">
				<input class="input" type="hidden" placeholder="First Name"
					id="user_id" name="user_id"
					value="<%out.println(resultSet.getString("user_id"));%>"
					 required>
			</div>
		</div>
		<div class="field">
			<label class="label">First Name</label>
			<div class="control">
				<input class="input" type="text" placeholder="First Name"
					id="first_name" name="first_name"
					value="<%out.println(resultSet.getString("first_name"));%>"
					disabled required>
			</div>
		</div>

		<div class="field">
			<label class="label">Last Name</label>
			<div class="control">
				<input class="input" type="text" placeholder="Last Name"
					id="last_name" name="last_name" value="<%out.println(resultSet.getString("last_name"));%>"
					disabled required>
			</div>
		</div>

		<div class="field">
			<label class="label">Email Address</label>
			<div class="control">
				<input class="input" type="email" placeholder="Email Address"
					id="email_address" name="email_address" value="<%out.println(resultSet.getString("email_address"));%>"
					disabled required>
			</div>
		</div>

		<div class="field">
			<label class="label">Contact Number</label>
			<div class="control">
				<input class="input" type="tel" placeholder="Contact Number"
					id="contact_number" name="contact_number" value="<%out.println(resultSet.getString("contact_number"));%>"
					disabled required>
			</div>
		</div>

		<div class="field">

			<div class="control">
				<label class="label">Password</label> <input class="input"
					type="text" placeholder="Password" id="password"
					name="password" value="<%out.println(resultSet.getString("password"));%>"
					disabled required>
			</div>

		</div>

		<div class="field is-grouped" style="padding-top: 2%;">

			<div class="control">
				<button class="button is-success" type="submit">Submit</button>
			</div>

		</div>

	</form>
	<%
	}

	connection.close();

	} catch (Exception e) {

	e.printStackTrace();

	}
	%>
</body>
</html>