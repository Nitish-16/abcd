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
String email=request.getParameter("email"); 
String password=request.getParameter("password"); 
String repeat_password=request.getParameter("repeat_password"); 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hello", "root",""); 
Statement st= con.createStatement(); 
ResultSet rs; 
int i=st.executeUpdate("insert into nitish016 values ('"+name+"','"+email+"','"+password+"',	'"+repeat_password+"')"); 
out.println("Registered   "+"<a href='index.html'>   Go to HomePage</a>"); 
%>
</body>
</html>