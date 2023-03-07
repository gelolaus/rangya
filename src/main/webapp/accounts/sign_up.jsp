<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>

<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">


<title>Rangya | Sign Up</title>

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
    
    <form method="POST" action="sign_up_process.jsp" class="box" id="createbox">

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
	
	<div class="field" style="padding-top: 12px;">
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
		<label class="label">Password</label>
		<div class="control">
		<input class="input" type="password" placeholder="Password" id="password" name="password" required>
		</div>
	</div>
		
	<div class="field is-grouped" style="padding-top: 2%;">
	
		<div class="control">
		<button class="button is-success" type="submit">Submit</button>
		</div>
	
		<div class="control">
		<a href="../index.jsp"><button class="button is-danger" type="button">Cancel</button></a>
		</div>
		
	</div>
	
</div>

</form>
    
</body>

</html>