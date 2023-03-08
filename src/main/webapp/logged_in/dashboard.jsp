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

<link rel = "stylesheet" type = "text/css" href = "../src/css/styles.css" />

</head>

<body>

    <nav class="navbar" role="navigation" aria-label="main-navigation">

        <div class="navbar-brand">
            <a class="navbar-item" href="../index.jsp">
                <img src="../src/images/logo/RangyaBlack.png" height="28"> for Sellers
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
						<a class="navbar-item" href="account_management/account_page.jsp?user_id=<%=resultSet.getString("user_id")%>">
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
						<a class="navbar-item" href="log_out_operations_CRUD/log_out_process.jsp"style="color: red;">
							Log Out
						</a>
					
					</div>
					
		        </div>
	        
	        </div>
        
        </div>
        
    </nav>
    
<div class="box" id="dashboard_box" style="overflow-y:auto;">

<table class="table is-bordered is-striped block" style="width: 100%;">

		<thead>
			<tr>
			<th><abbr title="Product ID">ID</abbr>
			<th><abbr title="Product Name">Name</abbr></th>
			<th><abbr title="Product Image">Image</abbr></th>
			<th><abbr title="Product Description">Description</abbr></th>
			<th><abbr title="Product Size">Size</abbr></th>
			<th><abbr title="Product Price">Price</abbr></th>
			<th>Update</th>
			<th>Delete</th>
			</tr>
		</thead>

<!-- This is the code -->

<%
	try {
		
		Class.forName("com.mysql.jdbc.Driver");
		
	}
	catch (ClassNotFoundException e) {
		
		e.printStackTrace();
		
	}
	statement = null;
	resultSet = null;
	
	try {
		
		statement = connection.createStatement();
		String sql = "SELECT * FROM product_tbl";
		
		resultSet = statement.executeQuery(sql);
		
		while(resultSet.next()) {
			
%>

		<tbody>
			<tr class="active-row">
			<td><%=resultSet.getString("product_id") %></td>
			<td><%=resultSet.getString("product_name") %></td>
			<td><%=resultSet.getString("product_image") %></td>
			<td><%=resultSet.getString("product_description") %></td>
			<td>US Size <%=resultSet.getString("product_size") %></td>
			<td>$<%=resultSet.getString("product_price") %>.00</td>
			<td><a href="product_operations/product_update_form.jsp?product_id=<%=resultSet.getString("product_id")%>"><button class="button is-success">Update</button></a></td>
			<td><a href="product_operations_CRUD/product_deleter_process.jsp?product_id=<%=resultSet.getString("product_id")%>"><button class="button is-danger">Delete</button></a></td>
			</tr>
		</tbody>

			
			
<%
		}
		
	}
	
	catch (Exception e) {
		
		e.printStackTrace();
		
	}
	
%>
	


<!-- This is the table -->

	</table>
	

</div>

</body>
</html>