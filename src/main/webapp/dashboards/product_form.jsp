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
    
    <form method="POST" action="product_form_process.jsp" class="box" id="createbox">

		<div class="field">
			<label class="label">Product Name</label>
			<div class="control">
			<input class="input" type="text" placeholder="Product Name" id="product_name" name="product_name" required>
			</div>
		</div>
		
			<label class="label">Product Image</label>
		
		<div class="file has-name is-fullwidth">
			<label class="file-label">
				<input class="file-input" type="file" name="product_image">
				<span class="file-cta">
					<span class="file-icon">
						<i class="fas fa-upload"></i>
					</span>
					<span class="file-label">
						Choose a file...
					</span>
				</span>
				<span class="file-name">
				</span>
			</label>
		</div>
		
		<div class="field" style="padding-top: 12px;">
			<label class="label">Product Description</label>
			<div class="control">
			<textarea class="textarea" placeholder="e.g. Hello world" id="product_description" name="product_description" required></textarea>
			</div>
		</div>
		
		<div class="field">
			<label class="label">Product Size</label>
			<div class="control">
			<input class="input" type="tel" placeholder="Product Size" id="product_size" name="product_size" required>
			</div>
		</div>
		
		<div class="field">
			<label class="label">Product Price</label>
			<div class="control">
			<input class="input" type="number" placeholder="Product Price" id="product_price" name="product_price" required>
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

	</form>

<script>
const fileInput = document.querySelector('.file-input');
const fileName = document.querySelector('.file-name');

fileInput.addEventListener('change', () => {
  fileName.textContent = fileInput.files[0].name;
});


</script>
    
</body>

</html>