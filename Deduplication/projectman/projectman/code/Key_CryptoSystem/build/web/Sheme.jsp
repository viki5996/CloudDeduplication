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
String opt=request.getParameter("count"); 
 System.out.println("***"+opt);

                                                if(opt.compareToIgnoreCase("Group")==0 )
                                       {
%>
    <tr id="us"><td>Select Group</td><td><select  name="S_Name" onchange="showBank1(this.value)"><option value="Select">Select Group</option><option value="Create">Create Group</option>
                                         
                                         <%
                                         DB Db=new DB();
                                         
                                         ResultSet rs=Db.Select("select distinct(S_Name) from reg where S_Name!='Not'");
                                         while(rs.next())
                                         {
                                         %>
                                         <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
                                        
                                    
<%
                                    }
                                         %>
                                         </select> </td></tr>
<%
                                       }
                                                
%>
                                    
    </body>
</html>
