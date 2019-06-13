<%--
    Document   : login
    Created on : Jan 31, 2011, 4:54:29 PM
    Author     : vinodth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %> 
<html>
    <HEAD>
  
  
 </HEAD>

 <BODY>

     
 <br><br><br><br><br>
 <table width="250px" align="center" bgcolor="#CDFFFF" border=0 style="border:1px solid;">
<%
  String usrid=request.getParameter("Uname");
   String pass=request.getParameter("Pass");
 
   
   if(usrid.equals("Tpa")&& pass.equals("Tpa")){
   
   response.sendRedirect("Tpa_public_files.jsp");
   session.setAttribute("username",usrid);
   } 
   else if(usrid.equals("Admin")&& pass.equals("Admin")){
   session.setAttribute("username",usrid);
   session.setAttribute("msg", "Successfully Login");
   response.sendRedirect("Admin_Page.jsp");
   
   }else{
Statement st;

       try {
      Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/resource","root","admin");

	     String qry="select * from admin where uid='"+usrid+"' and pwd='"+pass+"' ";

       st = con.createStatement();
	   ResultSet  rs = st.executeQuery(qry);
	   if(rs.next())
		{
		 session.setAttribute("username",usrid);
                session.setAttribute("data",rs.getString("d_provider"));
                session.setAttribute("tbl",rs.getString("u_tab"));
                session.setAttribute("msg", "Successfully Login");
		response.sendRedirect("user_page.jsp?provider=access");

   
    }
           else{
                session.setAttribute("msg", "Uid or Password invalid");
               response.sendRedirect("User.jsp#!/page_SERVICES");
           }
       }
	catch (Exception e) {
            session.setAttribute("msg", "Uid or Password invalid");
     response.sendRedirect("User.jsp#!/page_SERVICES");
    }
   }

%>
                        </div>
                       

 </table> 
 </BODY>
</html>
