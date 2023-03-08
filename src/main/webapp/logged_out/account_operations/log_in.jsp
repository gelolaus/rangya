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
            <a class="navbar-item" href="../index.jsp">
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
    
    <!-- Form -->
    
    <form method="POST" action="../account_operations_CRUD/log_in_process.jsp" class="box" id="accounts_box">
    
    <p class="title is-3" style="text-align: center;">Log In</p>
	
	<div class="field">
		<label class="label">Email Address</label>
		<div class="control">
		<input class="input" type="email" placeholder="Email Address" id="email_address"name="email_address" required>
		</div>
	</div>
	
	<div class="field">
		<label class="label">Password</label>
		<div class="control">
		<input class="input" type="password" placeholder="Password" id="password" name="password" required>
		</div>
	</div>
		
	<div class="field is-grouped" style="padding-top: 2%;">
	
		<div class="control">
		<button class="button is-success" type="submit">Log in</button>
		</div>
		
	</div>
	
	<p> Don't have an account yet? <a href="sign_up.jsp">Sign up!</a> </p>
	

</form>
    
</body>

</html>