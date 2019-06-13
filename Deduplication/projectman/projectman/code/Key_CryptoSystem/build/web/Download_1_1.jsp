<%@page import="Connection.DB"%>
<%@ page import="java.sql.*"%>
<%@ page import= "java.text.*" %>
<%@ page import="java.io.*" %>
<%@ page import="org.jfree.chart.ChartFactory" %>
<%@ page import="org.jfree.chart.ChartUtilities" %>
<%@ page import="org.jfree.chart.JFreeChart" %>
<%@ page import="org.jfree.chart.plot.PlotOrientation"%>
<%@ page import="org.jfree.data.*" %>
<%@ page import="org.jfree.data.category.*,org.jfree.data.jdbc.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title> Key-Aggregate Cryptosystem</title>
<meta charset="utf-8">
<link rel="stylesheet" href="styles.css" type="text/css" media="all">
<%
             String un = (String)session.getAttribute("un");
           if (un == null) {
                session.invalidate(); 
                session=request.getSession(true);
    session.setAttribute("msg", "Sorry!!! Your SignIn Time Out.Please SignIn Again ");
     session.setAttribute("color", "red ");
response.sendRedirect("Alert.jsp");
                
            }
            String Servlet_Msg = (String) session.getAttribute("msg");
              String color = (String) session.getAttribute("color");
String title="";
     String page1="";
if(String.valueOf(session.getAttribute("Sn")).compareToIgnoreCase("Not")!=0) {
    page1="GroupUserhome.jsp";
}
else
    page1="Userhome.jsp";
        %>

<script>
function myFunction(ele)
{
var x;

var person=prompt("Please Enter the Key","");

if (person!=null)
  {
window.location.href="Download?k="+person+"&id="+ele+"";
  }
}
</script>
</head>
<body>


<div class="spinner"></div>

<div class="extra">
<!-- do not delete or change--><div class="mycopy">Website Design: <a href="http://www.myfreecsstemplates.com" class="link33">free web templates</a></div><!-- end -->
<div class="main1"></div>



<div class="main2">
  
<div class="bg1"></div>

<div class="grad1"></div>



<header>
  <a href="" class="logo">    
    <div class="txt1">Clouded Up : Deduplication with Secure storage</div>
    <div class="txt2">Clouded Up : Deduplication with Secure storage</div>
    <div class="txt3">By Vikram and Harshitha</div>
  </a>
    </a>
     <a href="Logout.jsp" style=" margin-left: -18px;">
     
         <span class="over2"><img src="images/logoutbutton-hi.png" alt=""  class="img" style="height: 54px; width: 198px; ">
            </span>
      </a>
</header>

<nav class="menu" style="margin-top: 180px; width: 1065px; margin-left: 235px;">
  <ul id="menu">
     
   <li class="nav1">
       <li class="nav" style="margin-left: -223px;">
          <a href="AdminHome.jsp" >
        <span class="over1"><span class="txt1">Home</span></span>
        <span class="over2"><img src="images/Home.png" alt="" class="img" style="height: 161px; margin-left: -18px; width: 198px;"></span>
      </a>
    </li>
    <li class="nav1">
        <a href="Userdetails.jsp#!/page_SERVICES">
        <span class="over1"><span class="txt1">User Details</span></span>
        <span class="over2"><img src="images/upload_icon.png" alt="" class="img" style="height: 161px; margin-left: -18px; width: 198px;"></span>
      </a>
    </li>
    <li class="nav2">
      <a href="Uploaddetails.jsp#!/page_SERVICES">
        <span class="over1"><span class="txt1">Uploads</span></span>
        <span class="over2"><img src="images/download_icon.png" alt="" class="img" style="height: 161px; margin-left: -18px; width: 198px;"></span>
      </a>
    </li>
    <li class="nav3 with_ul">
      <a href="Downloaddetails.jsp#!/page_SERVICES">
        <span class="over1"><span class="txt1">Downloads</span></span>
        <span class="over2"><img src="images/group-11.png" alt="" class="img" style="height: 161px; margin-left: -18px; width: 198px;"></span>
      </a>      
    </li>
    <li class="nav4">
      <a href="costAnalysis.jsp#!/page_SERVICES">
        <span class="over1"><span class="txt1">Cost Analysis</span></span>
        <span class="over2"><img src="images/history.png" alt="" class="img" style="height: 161px; margin-left: -18px; width: 198px;"></span>
      </a>
    </li>
     <li class="nav5">
      <a href="Download_1_1.jsp#!/page_SERVICES">
        <span class="over1"><span class="txt1">REVOKE</span></span>
        <span class="over2"><img src="images/icon1.png" alt="" class="img" style="height: 161px; margin-left: -18px; width: 198px;"></span>
      </a>
    </li>
 
  </ul>
</nav>



<!--content -->
<article id="content">

  <ul>
          
    <li id="page_SPLASH"></li>
    
    <!-- ============ PAGE ABOUT ============= -->
    
    <!-- ============ PAGE ABOUT END============= -->

    <!-- ============ PAGE SERVICES ============= -->
    <li id="page_SERVICES">
   
 
        <div class="box"  style="height: 362px; width: 1304px; overflow: auto;">
              <br></br> Hi, <font size="5" color="green"><%=session.getAttribute("un")%>...</font><br></br>
                                    
                                    <center> 
                                        <h2><%=title%> Files</h2>
                                        <%if(Servlet_Msg!=null){
                                  
                                            session.removeAttribute("msg");
                                               session.removeAttribute("color");
                                              
                                            }%>
                                        
                                          <table align="center" cellspacing="10" bgcolor="white" width="100%" style="border-style: solid solid;border-color: #ff7500 ;">
    
     <tr height="38"><td ><center>S.No</center></td> <td ><center>Group Member UserName</center></td> <td ><center>FileName</center></td><td ><center>FileType</center></td>
         <td ><center>FileSize</center></td> <td ><center>Uploaded Cost</center></td> <td ><center>Uploaded Date</center></td> <td ><center>REVOKE</center></td></td></tr>
    <%
    DB Db=new DB(); 
    int i=0;String query="";
    if(String.valueOf(session.getAttribute("Sn")).compareToIgnoreCase("Not")!=0)
        query="select * from upload where req='req'";
    else
        query="select * from upload where Un='req'";
    ResultSet rs=Db.Select(query);
    while(rs.next())
    {
        i++;
    %>
<tr><td ><center><%=i%></center></td><td ><center><%=rs.getString("Un")%></center></td><td ><center><%=rs.getString("Filename")%></center></td><td ><center><%=rs.getString("Extension")%></center></td><td ><center><%=rs.getString("Size")%> Bytes</center></td>
<td ><center>Rs.<%=rs.getString("Cost")%></center></td><td ><center><%=rs.getString("Date")%></center></td>
<td><center><a href="Revoke_1.jsp?ff=<%=rs.getString("Fid")%>">REVOKE</a></center></td>
</tr>

 <%
    }
    rs.close();
    %>
                                            </table></center>
    </div>
   
    </li>
    
   
    <!-- ============ PAGE CONTACTS END============= -->

    <!-- ============ PAGE PRIVACY ============= -->
    <li id="page_PRIVACY">
    <div class="box4">

      <h2>Privacy Policy</h2>

      <div class="scroll-pane"><div>
        
     

      </div></div>
    </div>
    </li>
    <!-- ============ PAGE PRIVACY END============= -->    
    
    
    <!-- ============ PAGE MORE ============= -->
    <li id="page_MORE" >
      


              
                                  
<!-- box begin -->
		
		
		


 

    </li>
    <!-- ============ PAGE MORE END============= -->


  </ul>
</article>
<!--content end -->

</div>

<footer>

<div class="copyright">Copyright (c) 2014. All rights reserved.</div>

<div class="tola">
   </div>
<a href="#!/page_PRIVACY" class="privacy">Privacy policy</a>

</footer>
</div>
<script type="text/javascript" src="js/main.js"></script>

</body>
</html>
