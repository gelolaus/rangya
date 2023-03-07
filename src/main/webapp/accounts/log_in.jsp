<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>

<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">


<title>Rangya | Log In</title>

<link rel = "stylesheet" type = "text/css" href = "../styles.css" />

</head>

<body>

    <!-- Navbar -->

    <nav class="navbar" role="navigation" aria-label="main-navigation">

        <div class="navbar-brand">
            <a class="navbar-item" href="../index.jsp">
                <img src="../src/logo/RangyaBlack.png" height="28"> for Sellers
            </a>

            

        </div>
        
        <div class="navbar-end">
        	<div class="navbar-item">
        		<div class="buttons">
        			<a class="button is-light" href="../index.jsp">
        				Home
        			</a>
        			<a class="button is-light" href="log_in.jsp">
        				Log In
        			</a>
        		</div>
        	</div>
        </div>

    </nav>
    
    <!-- Form -->
    
    <form method="POST" action="log_in_process.jsp" class="box" id="createbox">
	
	<div class="field">
		<label class="label">Email Address</label>
		<div class="control">
		<input class="input" type="email" placeholder="Email Address" id="email_address"name="email_address" required>
		</div>
	</div>
	
		<div class="field" style="padding-top: 12px;">
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
	
	<p> Sign up </p>
	
</div>

</form>
    
</body>

</html>