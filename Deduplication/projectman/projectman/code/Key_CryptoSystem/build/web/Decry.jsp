<%-- 
    Document   : Decry
    Created on : Jul 29, 2014, 5:33:38 PM
    Author     : mvinoth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="Decrypt" method="post">
        Enter Key :<input type="text" name="key" id="key">
        <input type="submit" value="DECRYPT">
        </form>
        <%
            String key=(String)session.getAttribute("key1");
            if(key!=null)
            {
                %>
                YOUR KEY IS:<%=key%>
                <%
            }
            %>
    </body>
</html>
