<%-- 
    Document   : welcome
    Created on : Oct 31, 2018, 2:17:51 PM
    Author     : Mayank Sharma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%=request.getParameter("username")%>
        <%=request.getParameter("password")%>
    </body>
</html>
