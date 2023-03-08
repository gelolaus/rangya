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

<link rel = "stylesheet" type = "text/css" href = "../../src/css/styles.css" />

</head>

<body>

    <nav class="navbar" role="navigation" aria-label="main-navigation">

        <div class="navbar-brand">
            <a class="navbar-item" href="../index.jsp">
                <img src="../../src/images/logo/RangyaBlack.png" height="28"> for Sellers
            </a>
            

        </div>
        
        <div class="navbar-menu">
        
        	<div class="navbar-start">
        	
        		<a class="navbar-item" href="">
        			<strong>Dashboard</strong>
        		</a>
        		
		        <a class="navbar-item" href="product_operations/product_form.jsp">
        			Create
        		</a>
        	
        	</div>
        
	        <div class="navbar-end">
	        
		        <div class="navbar-item has-dropdown is-hoverable">
					<a class="navbar-link">
						Hello, Username!
					</a>
					
					<div class="navbar-dropdown">
						<a class="navbar-item">
							View Account
						</a>
						<hr class="navbar-divider">
						<a class="navbar-item" style="color: red;">
							Log Out
						</a>
					
					</div>
					
		        </div>
	        
	        </div>
        
        </div>
        
    </nav>
    
        <form method="POST" action="../account_operations_CRUD/sign_up_process.jsp" class="box" id="accounts_box">
    
    <p class="title is-3" style="text-align: center;">Sign Up</p>


	<div class="field">
		<label class="label">First Name</label>
		<div class="control">
		<input class="input" type="text" placeholder="First Name" id="first_name" name="first_name" required>
		</div>
	</div>
	
	<div class="field">
		<label class="label">Last Name</label>
		<div class="control">
		<input class="input" type="text" placeholder="Last Name" id="last_name" name="last_name" required>
		</div>
	</div>
	
	<div class="field">
		<label class="label">Email Address</label>
		<div class="control">
		<input class="input" type="email" placeholder="Email Address" id="email_address"name="email_address" required>
		</div>
	</div>
	
	<div class="field">
		<label class="label">Contact Number</label>
		<div class="control">
		<input class="input" type="tel" placeholder="Contact Number" id="contact_number" name="contact_number" required>
		</div>
	</div>
	
	<div class="field">
		
		<div class="control">
		<label class="label">Password</label>
		<input class="input" type="password" placeholder="Password" id="password" name="password" required>
		</div>
		
	</div>
	
	<div class="field">
	
		<div class="control">
		<label class="label">Repeat Password</label>
		<input class="input" type="password" placeholder="Password" id="password" name="password" required>
		</div>
		
	</div>
		
	<div class="field is-grouped" style="padding-top: 2%;">
	
		<div class="control">
		<button class="button is-success" type="submit">Submit</button>
		</div>
		
	</div>

</form>

</body>
</html>