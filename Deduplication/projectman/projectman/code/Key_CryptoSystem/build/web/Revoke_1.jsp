<%-- 
    Document   : Delete1
    Created on : Jun 20, 2013, 12:33:27 PM
    Author     : vinoth
--%>

<%@page import="org.apache.commons.lang.RandomStringUtils"%>
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
        
        
         String otp=RandomStringUtils.randomAlphanumeric(4);
         String  File_id=request.getParameter("ff");
     Connection con = null;
         Statement st;
          Statement st1;
     try {
  Class.forName("com.mysql.jdbc.Driver");
  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cost","root","admin");
 st = con.createStatement();
  st1 = con.createStatement();
 int i=st.executeUpdate("update upload set req='"+otp+"',Keyvalue='"+otp+"' where Fid='"+File_id+"'");
int j=st.executeUpdate("delete from file_share where Fid='"+File_id+"'");
  if(i==1){
  response.sendRedirect("Download_1_1.jsp");
  
  }
  }catch (Exception e) {
        out.println("Error Inside DataBase class :\nError in DataBaseConstructor\n" + e);
        }
     
    
        %>
    </body>
</html>
