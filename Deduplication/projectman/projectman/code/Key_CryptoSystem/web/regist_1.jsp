<%--
    Document   : login
    Created on : Jan 31, 2011, 4:54:29 PM
    Author     : vinodth
--%>

<%@page import="java.text.DateFormat"%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>

<%@ page import="java.sql.*" %>
<html>
    <HEAD>


 </HEAD>

 <BODY>
 <br><br><br><br><br>

<%
String plan =request.getParameter("plan");
 String uid =request.getParameter("uid");
String pwd= request.getParameter("pwd");

String qry=null;
DateFormat df = new SimpleDateFormat("yy-MM-dd");
String formattedDate = df.format(new Date());


String Provider= request.getParameter("Provider");
String lname= request.getParameter("db");

String domain =request.getParameter("domain");
String dsize= request.getParameter("dsize");
String datee= request.getParameter("date");
String datee1= request.getParameter("date1");
 Timestamp tstamp = new Timestamp(00-00-00);
int cost=0;


if(plan.equals("year")&& Provider.equals("access")){cost=5000;
qry="SELECT DATE_ADD('"+formattedDate+"', INTERVAL '"+datee1+"' YEAR)";
}
if(plan.equals("day")&& Provider.equals("access")){cost=30;
qry="SELECT DATE_ADD('"+formattedDate+"', INTERVAL '"+datee1+"' DAY)";
}
if(plan.equals("month")&& Provider.equals("access")){cost=500;
qry="SELECT DATE_ADD('"+formattedDate+"', INTERVAL '"+datee1+"' MONTH)";
}


if(plan.equals("year")&& Provider.equals("server1")){cost=5500;
qry="SELECT DATE_ADD('"+formattedDate+"', INTERVAL '"+datee1+"' YEAR)";
}
if(plan.equals("day")&& Provider.equals("server1")){cost=40;
qry="SELECT DATE_ADD('"+formattedDate+"', INTERVAL '"+datee1+"' DAY)";
}
if(plan.equals("month")&& Provider.equals("server1")){cost=600;
qry="SELECT DATE_ADD('"+formattedDate+"', INTERVAL '"+datee1+"' MONTH)";
}


if(plan.equals("year")&& Provider.equals("server1")){cost=6000;
qry="SELECT DATE_ADD('"+formattedDate+"', INTERVAL '"+datee1+"' YEAR)";
}
if(plan.equals("day")&& Provider.equals("server1")){cost=45;
qry="SELECT DATE_ADD('"+formattedDate+"', INTERVAL '"+datee1+"' DAY)";
}
if(plan.equals("month")&& Provider.equals("server1")){cost=700;
qry="SELECT DATE_ADD('"+formattedDate+"', INTERVAL '"+datee1+"' MONTH)";
}


if(plan.equals("year")&& Provider.equals("spam")){cost=6500;
qry="SELECT DATE_ADD('"+formattedDate+"', INTERVAL '"+datee1+"' YEAR)";
}
if(plan.equals("day")&& Provider.equals("spam")){cost=50;
qry="SELECT DATE_ADD('"+formattedDate+"', INTERVAL '"+datee1+"' DAY)";
}
if(plan.equals("month")&& Provider.equals("spam")){cost=800;
qry="SELECT DATE_ADD('"+formattedDate+"', INTERVAL '"+datee1+"' MONTH)";
}

int dsize1=Integer.parseInt(dsize)*10;
int plancost=cost*Integer.parseInt(datee1);
plancost=plancost+dsize1;
session.setAttribute("plancost", plancost);
java.util.Date d = new java.util.Date();
java.sql.Timestamp t = new java.sql.Timestamp( d.getTime());
  Date date = new Date();
  String ddd=date.toString();
Statement s;
Statement s1;
Statement s2;
try {
          Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/resource","root","admin");

     String qry1="Select * from admin where uid ='"+uid+"' or u_tab='"+domain+"'";

           s1 = con.createStatement();
               ResultSet  rstt = s1.executeQuery(qry1);
              if(rstt.next())
                    {
                        session.setAttribute("msg", "User Name or Domain Already Exist");
                        response.sendRedirect("Register.jsp");}
else{
s2 = con.createStatement();
s2.executeUpdate("insert into cost values('"+uid+"','50000')");
     
         

    

           s = con.createStatement();
               ResultSet  rst = s.executeQuery(qry);
              if(rst.next())
                    {
                
String x=rst.getString(1)+" ";
String dd="00:00:00.01";
String xx=x+dd;
	
	PreparedStatement st=null;

     
       st =con.prepareStatement("insert into admin values (?,?,?,?,?,?,?,?)");

st.setString(1, uid);
st.setString(2, pwd);
st.setString(3, Provider);
st.setString(4, lname);
st.setString(5, domain);
st.setString(6, dsize);
st.setTimestamp(7, t);
st.setTimestamp(8,tstamp.valueOf(xx) );
String domai=" "+domain;
Statement stm;

          Class.forName("com.mysql.jdbc.Driver");
       con= DriverManager.getConnection("jdbc:mysql://localhost:3306/"+Provider,"root","admin");

                 String qry2="CREATE TABLE "+domai+"(uid int(10) unsigned NOT NULL AUTO_INCREMENT,name varchar(50) DEFAULT NULL ,file LONGBLOB,f_name varchar(100)DEFAULT NULL,f_type varchar(100)DEFAULT NULL,access varchar(100)DEFAULT NULL,PRIMARY KEY (`uid`))";
                 
                 String path = request.getSession().getServletContext().getRealPath("/");   
    out.println(path);
    String patt=path.replace("\\build", "");
File dir = new File(patt+domain);  
dir.mkdir();
           stm = con.createStatement();
              stm.executeUpdate(qry2);
  //response.sendRedirect("reg.jsp");
              



      int i =st.executeUpdate();
    

    


       }
      Class.forName("com.mysql.jdbc.Driver");
       con= DriverManager.getConnection("jdbc:mysql://localhost:3306/resource","root","admin");

               Statement stw =  con.createStatement();
               Statement stw1 =  con.createStatement();
                stw.executeUpdate("update cost set cost=cost-" + plancost + "  where uid='" + uid + "'");
                stw1.executeUpdate("update bank set money=money+" + plancost + "  where id='1'");
                 session.setAttribute("username",uid);
                session.setAttribute("data",Provider);
                session.setAttribute("tbl",lname);
response.sendRedirect("hosting_1.jsp#!/page_SERVICES");

              

      
               
}}catch (Exception e1) {
          out.println("Already Exist "+ e1);
           
        }

%>


 </BODY>
</html>
