<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
  boolean isDashboard = true; // replace with your own boolean variable
  if (isDashboard) {
    response.sendRedirect("landings/dashboard.jsp");
  } else {
    response.sendRedirect("landings/home.jsp");
  }
%>