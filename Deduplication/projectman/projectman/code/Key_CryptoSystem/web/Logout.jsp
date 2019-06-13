<%-- 
    Document   : Logout
    Created on : Jul 29, 2014, 6:00:09 PM
    Author     : mvinoth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
        if(session!=null)
session.invalidate();  
System.out.println("session Cleared");   
response.sendRedirect("User.jsp#!/page_SERVICES");
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <h1>Thank You....You Have Successfully Logged Out.....</h1>
    </body>
</html>
