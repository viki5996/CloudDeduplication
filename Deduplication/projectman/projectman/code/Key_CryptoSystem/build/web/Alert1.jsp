


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
        
           window.location.href="Download.jsp"; 
        </script>
        
     
    </head>
    <body>
    </body>
</html>

