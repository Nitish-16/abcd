<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String name=request.getParameter("name"); 
String mobile_number=request.getParameter("mobile_number"); 
String starting_point=request.getParameter("starting_point"); 
String going_to=request.getParameter("going_to");
String car_number=request.getParameter("car_number");
String Date=request.getParameter("Date");
String Time=request.getParameter("Time");
String Gender=request.getParameter("Gender");
String car_type=request.getParameter("car_type");
String Lisense=request.getParameter("Lisense");
String seats=request.getParameter("seats");
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hello", "root",""); 
Statement st= con.createStatement(); 
ResultSet rs; 
int i=st.executeUpdate("insert into registar values ('"+name+"','"+mobile_number+"','"+starting_point+"','"+going_to+"','"+car_number+"','"+Gender+"','"+car_type+"','"+Time+"','"+Date+"','"+Lisense+"','"+seats+"')"); 
out.println("Sucessfully Registered your ride  "+" " +"<a href='index.html'>   Go to HomePage</a>"); 
%>
</body>
</html>
