<%-- 
    Document   : login_page
    Created on : 1 Nov, 2018, 9:25:35 AM
    Author     : nitish 
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            try{
            String starting_point = request.getParameter("starting_point");
            String going_to = request.getParameter("going_to");
             String date = request.getParameter("date");
             String time = request.getParameter("time");
             String seats = request.getParameter("seats");
             String myurl="jdbc:mysql://localhost/hello";
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection conn=DriverManager.getConnection(myurl,"root","");
                Statement st=conn.createStatement();
                String query1="select * from registar where starting_point='"+starting_point+"' and going_to='"+going_to+"' and date='"+date+"' and time='"+time+"' and seats='"+seats+"'";
                ResultSet rs=st.executeQuery(query1);
                
            if(rs.next())
                out.println("click on the link to see registered rides" +"  "+  " " +"<a href='retrieve3.html'>Go to HomePage</a>");
                else
                 out.println("not found" +" "  +" try again" +" "+ "<a href='login.html'></a>");
                st.close();
            
            }
            catch(Exception e)
            {
                System.err.println("got an exception");
                System.err.println(e.getMessage());
            }
   
        %>
    </body>
</html>
