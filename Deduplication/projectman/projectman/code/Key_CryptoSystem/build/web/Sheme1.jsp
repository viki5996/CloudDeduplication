<%-- 
    Document   : state
    Created on : 8 May, 2013, 9:35:10 PM
    Author     : Ragupathi
--%>
<%@page import="Connection.DB"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      
<%
String opt1=request.getParameter("count"); 
 System.out.println("***"+opt1);

                                                if(opt1.compareToIgnoreCase("Create")==0 )
                                       {
%>
    <tr id="us1"><td>Group Name</td><td><input type="text" name="G_Name" onclick="showBank2()"/></td>
    </tr>
    
                                         
                                         
<%
                                       }
                                                else if(opt1.compareToIgnoreCase("Select")!=0 && opt1.compareToIgnoreCase("Create")!=0 )
                                                {
                                                
%>
<tr id='us2'><td>Security Key</td><td><input type="password" name="key"/></td>
    </tr>   
    <%} %>
    </body>
</html>
