<%@ page import="java.sql.*" %>

<%
String email_address = request.getParameter("email_address");
String password = request.getParameter("password");

try {
  // Establish a connection to the database
  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/rangya_db", "root", "Love,@funjai_gr");
  
  // Create a prepared statement to query the database
  PreparedStatement stmt = conn.prepareStatement("SELECT * FROM user_tbl WHERE email_address = ? AND password = ?");
  stmt.setString(1, email_address);
  stmt.setString(2, password);
  
  // Execute the query and get the result set
  ResultSet rs = stmt.executeQuery();
  
  // Check if the user's login information is valid
  if (rs.next()) {
    // If it is, create a session object to store the user's information
    HttpSession userSession = request.getSession();
    session.setAttribute("email_address", email_address);
    
    // Redirect the user to a page that requires authentication
    response.sendRedirect("../landings/dashboard.jsp");
  } else {
    // If the login information is not valid, display an error message on the login page
    out.println("<p>Invalid email or password. Please try again.</p>");
  }
  
  // Clean up resources
  rs.close();
  stmt.close();
  conn.close();
} catch (SQLException e) {
  e.printStackTrace();
}
%>
