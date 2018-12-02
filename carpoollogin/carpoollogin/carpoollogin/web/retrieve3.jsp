<%-- 
    Document   : Eventslist
    Created on : Nov 26, 2018, 9:32:20 AM
    Author     : Mayank Sharma
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
                table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
table-align:center;
                }

td{
    border: 1px solid #dddddd;
    text-align: center;
    padding: 2px;
}
th{
    border:1px login-box;
text-align: center;
padding: 2px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
            
        </style>
          
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    
        
    </head>
    <body>
        <table border="1">
<tr>
<th>name</th>
<th>mobile-number</th>
<th>car_type</th>
<th>gender</th>
<th>car_number</th>
<th>Lisense</th>
<th>seats</th>
</tr>
        
<h1 align="center" style="background-color:#39dc79">REGISTERED CARPOOLS</h1>
       <% String myurl="jdbc:mysql://localhost/hello";
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn=DriverManager.getConnection(myurl,"root","");
                Statement st=conn.createStatement();
                String query1="select * from registar";
                ResultSet rs=st.executeQuery(query1);
                out.println("");
               %>
            <%while(rs.next())
            {    %>
            <tr>
            <td><%out.println(rs.getString("name"));%></td>
            <td><%out.println(rs.getString("mobile_number"));%></td>
            <td><%out.println(rs.getString("car_type"));%></td>
            <td><%out.println(rs.getString("gender"));%></td>
            <td><%out.println(rs.getString("car_number"));%></td>
<td><%out.println(rs.getString("Lisense"));%></td>
<td><%out.println(rs.getString("seats"));%></td>

            </tr> 
            <br><%
                 
            }
             st.close();
            

            

            %>
   
               </table>
        
    </body>
</html>



