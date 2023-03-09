<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>    
    
<!DOCTYPE html>
<html>

<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8">

	<title>Creator</title>

	<link rel="stylesheet" href="../../src/css/styles.css">
	
	<style>

	html {
	
		background-image: url(../../src/images/index/pexels-aman-jakhar-1124466.jpg)		
	
	}

</style>
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
        	
        		<a class="navbar-item" href="../dashboard.jsp">
        			Dashboard
        		</a>
        		
		        <a class="navbar-item" href="../product_operations/product_form.jsp">
        			Create
        		</a>
        	
        	</div>
        
	        <div class="navbar-end">
	        
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
						String sql = "SELECT * FROM currentuser";
						
						resultSet = statement.executeQuery(sql);
						
						while(resultSet.next()) {
							
				%>
								<div class="navbar-item has-dropdown is-hoverable">
									<a class="navbar-link"> Hello, <%out.println(resultSet.getString("email_address")); %> </a>
					
					<div class="navbar-dropdown">
						<a class="navbar-item" href="../account_management/account_page.jsp?user_id=<%=resultSet.getString("user_id")%>">
							View Account
						</a>
						
				<%
						}
					}
						catch (Exception e) {
							
							e.printStackTrace();
							
						}
						
				%>
						<hr class="navbar-divider">
						<a class="navbar-item" href="../log_out_operations_CRUD/log_out_process.jsp"style="color: red;">
							Log Out
						</a>
					
					</div>
					
		        </div>
	        
	        </div>
        
        </div>
        
    </nav>

<div class="box" id="products_box">

<%
	String product_name = request.getParameter("product_name");
	String product_image = request.getParameter("product_image");
	String product_description = request.getParameter("product_description");
	String product_size = request.getParameter("product_size");
	String product_price = request.getParameter("product_price");
	
	try {
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection connectSQL = DriverManager.getConnection("jdbc:mysql://localhost:3306/rangya_db", "root", "Love,@funjai_gr");
		Statement st = connectSQL.createStatement();
		
		st.executeUpdate("insert into product_tbl(product_name,product_image,product_description,product_size,product_price) values('" + product_name + "','" + product_image + "','" + product_description + "','" + product_size + "','" + product_price + "')");
		
		out.println("<div class=\"block\"><strong>Record added.</strong></div>");
		
	}
	
	catch (Exception e) {
		
		out.println("<div class=\"block\"><strong>Error.</strong></div>");
		
	}
%>

	<div class="field is-grouped">
		<div class="control">
		<a href="../product_operations/product_form.jsp"><button class="button is-light">Add again</button></a>
		</div>
		<div class="control">
		<a href="../dashboard.jsp"><button class="button is-light">View records</button></a>
		</div>
	</div>
	
</div>
</body>
</html>