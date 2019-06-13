<%@page import="java.sql.ResultSet"%>
<%@page import="Connection.DB"%>
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

        %>
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
                                        <h2>Download Details</h2>
                                        <table align="center" cellspacing="10" bgcolor="white" width="100%" style="border-style: solid solid;border-color: #ff7500 ;">
    
     <tr height="38"><td><center>S.No</center></td> <td><center>UserName</center></td>
        <td><center>Group Name</center></td><td><center>File Name</center></td>
     <td><center>File Size</center></td><td><center>Uploaded Date</center></td></tr>
    <%
    DB Db=new DB(); 
    int i=0;
    ResultSet rs=Db.Select("select * from download order by S_Name");
    while(rs.next())
    {
        i++;
    %>
<tr><td  ><center><%=i%></center></td><td  ><center><%=rs.getString("Un")%></center></td>
<td  ><center><%=rs.getString("S_Name")%></center></td><td  ><center><%=rs.getString("Filename")%></center></td><td  ><center><%=rs.getString("Size")%> Bytes</center></td>
<td  ><center><%=rs.getString("Date")%></center></td>
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
