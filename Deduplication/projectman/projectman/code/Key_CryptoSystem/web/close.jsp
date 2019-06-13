<%-- 
    Document   : close
    Created on : Jul 31, 2014, 2:40:00 PM
    Author     : mvinoth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alert</title>
        <%
            
            String Servlet_Msg = (String) session.getAttribute("msg");

        %>

           <script language="Javascript">
              
               <!--
             alert("<%=Servlet_Msg%>");
             //-->
        
           window.close(); 
        </script>
        
     
    </head>
    <body>
    </body>
</html>

