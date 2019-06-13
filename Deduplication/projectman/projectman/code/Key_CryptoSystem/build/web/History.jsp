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
</header>

<nav class="menu" style="margin-top: 180px; width: 1065px; margin-left: 235px;">
  <ul id="menu">
      <li class="nav" style="margin-left: -223px;">
         <a href="<%=page1%>" >
        <span class="over1"><span class="txt1">Home</span></span>
        <span class="over2"><img src="images/Home.png" alt="" class="img" style="height: 161px; margin-left: -18px; width: 198px;"></span>
      </a>
    </li>
   <li class="nav1">
         <a href="Upload.jsp#!/page_SERVICES">
        <span class="over1"><span class="txt1">Upload</span></span>
        <span class="over2"><img src="images/upload_icon.png" alt="" class="img" style="height: 161px; margin-left: -18px; width: 198px;"></span>
      </a>
    </li>
      <li class="nav2">
      <a href="Download.jsp#!/page_SERVICES">
        <span class="over1"><span class="txt1">Download</span></span>
        <span class="over2"><img src="images/download_icon.png" alt="" class="img" style="height: 161px; margin-left: -18px; width: 198px;"></span>
      </a>
    </li>
    <% if(String.valueOf(session.getAttribute("Sn")).compareToIgnoreCase("Not")!=0) {%>
                               <li class="nav3 with_ul">
      <a href="Groupmembers.jsp#!/page_SERVICES">
        <span class="over1"><span class="txt1">Group Members</span></span>
        <span class="over2"><img src="images/group-11.png" alt="" class="img" style="height: 161px; margin-left: -18px; width: 198px;"></span>
      </a>      
    </li>
                                <%}
                                else
                                {
                                %>
    <li class="nav3 with_ul">
      <a href="DownloadCount.jsp#!/page_SERVICES">
        <span class="over1"><span class="txt1">Download Count</span></span>
        <span class="over2"><img src="images/counter-icon.png" alt="" class="img" style="height: 161px; margin-left: -18px; width: 198px;"></span>
      </a>      
    </li>
     <% }
                                %>
     <li class="nav4">
      <a href="History.jsp#!/page_SERVICES">
        <span class="over1"><span class="txt1">History</span></span>
        <span class="over2"><img src="images/history.png" alt="" class="img" style="height: 161px; margin-left: -18px; width: 198px;"></span>
      </a>
    </li>
     <li class="nav5">
      <a href="Logout.jsp">
        <span class="over1"><span class="txt1">LogOut</span></span>
        <span class="over2"><img src="images/logout_user.png" alt="" class="img" style="height: 161px; margin-left: -18px; width: 198px;"></span>
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
     
 
      <div class="box" style="height: 362px; width: 1304px;overflow: auto" >
      
   <br></br> Hi, <font size="5" color="green"><%=session.getAttribute("un")%>...</font><br></br>
                                    
                                    <center> 
                                        
                                        <h2>Your Files History</h2>
                                        <%if(Servlet_Msg!=null){
                                  
                                            session.removeAttribute("msg");
                                               session.removeAttribute("color");
                                              
                                            }%>
                                        
                                          <table align="center" cellspacing="10" bgcolor="white" width="100%" style="border-style: solid solid;border-color: #ff7500 ;">
    
     <tr height="38"><td ><center>S.No</center></td> <td ><center>FileName</center></td>
         <td ><center>FileSize</center></td> <td ><center>Downloaded Cost</center></td> <td ><center>Downloaded Date</center></td> </tr>
    <%
    DB Db=new DB(); 
    int i=0;
    ResultSet rs=Db.Select("SELECT Filename,Size,Cost,Date FROM download where S_Name='"+session.getAttribute("Sn")+"' and Un='"+session.getAttribute("un")+"'");
    while(rs.next())
    {
        i++;
    %>
<tr><td ><center><%=i%></center></td><td ><center><%=rs.getString("Filename")%></center></td><td ><center><%=rs.getString("Size")%> Bytes</center></td>
<td ><center>Rs.<%=rs.getString("Cost")%> </center></td><td ><center><%=rs.getString("Date")%></center></td>

</tr>

 <%
    }
    rs.close();
    %>
                                            </table></center>
<%if(String.valueOf(session.getAttribute("Sn")).compareToIgnoreCase("Not")!=0) {
    %>
    <center> 
        <br></br>
                                        <h2>Your Download Count</h2>
                                       
                                        
                                          <table align="center" cellspacing="10" bgcolor="white" width="100%" style="border-style: solid solid;border-color: #ff7500 ;">
    
     <tr height="38"><td ><center>S.No</center></td> <td ><center>FileName</center></td>
         <td ><center>FileSize</center></td> <td ><center>Downloaded Cost</center></td> <td ><center>Downloaded Count</center></td> </tr>
    <%
    i=0;
  rs=Db.Select("SELECT count(Fid),Filename,Size,sum(Cost) FROM download where S_Name='"+session.getAttribute("Sn")+"' and Un='"+session.getAttribute("un")+"' group by Fid");
    while(rs.next())
    {
        i++;
    %>
<tr><td ><center><%=i%></center></td><td ><center><%=rs.getString("Filename")%></center></td><td ><center><%=rs.getString("Size")%> Bytes</center></td>
<td ><center>Rs.<%=rs.getInt(4)%> </center></td><td ><center><%=rs.getInt(1)%></center></td>

</tr>

 <%
    }
    rs.close();
    %>
                                            </table></center>
<%}%>                               
   
    </div>
   
    </li>
    
    <li id="page_CONTACTS">
      <div class="vl1"></div>
      <div class="vl2"></div>
    <div class="box1">
      
      <h2>postal address</h2>

      <img src="images/contacts01.jpg" alt="" class="border1 img3">

      <p class="text color1 upper">
        Lorem ipsum dolor sit amet      </p>

      <br>

      <p class="text color1 upper">
        Contact Address      </p>
      <p class="text">
        8901 MINNESOTA, BEMIDJI,<br />
1221 BIRCHMONT DRIVE NORTHEAST.<br />
<br />
TELEPHONE:+1(234) 567 8910<br />
FAX:+1 800 889 9898<br />
E-MAIL:MAIL@COMPANYNAME.COM</p>
    </div>
    <div class="box2">
      
      <h2>contact form</h2>

      <div id="note"></div>
            <div id="fields">
            <form id="ajax-contact-form" action="javascript:alert('success!');">
              <div class="clear"></div>
              
              <INPUT type="text" name="name" value="Your full name:" onBlur="if(this.value=='') this.value='Your full name:'" 
                        onFocus="if(this.value =='Your full name:' ) this.value=''">
              <div class="clear"></div>
              
              <INPUT type="text" name="email" value="Your email:" onBlur="if(this.value=='') this.value='Your email:'" 
                        onFocus="if(this.value =='Your email:' ) this.value=''">
              <div class="clear"></div>
              
              <INPUT type="text" name="phone" value="Phone number:" onBlur="if(this.value=='') this.value='Phone number:'" 
                        onFocus="if(this.value =='Phone number:' ) this.value=''">
              <div class="clear"></div>
              
              <TEXTAREA NAME="content" onBlur="if(this.value=='') this.value='Message:'" 
                        onFocus="if(this.value =='Message:' ) this.value=''">Message:</TEXTAREA>
              <div class="clear"></div>
              
              <div class="left">                          
              <INPUT class="submit" type="submit" name="submit" value="submit">
              </div>
             
              <div class="clear"></div>
              </form>
            </div>
    </div>
    <div class="box3">
      
      <h2>useful links</h2>

      <figure class="google_map"></figure>
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
      

            
                
  
    <center>
      	
			

				
    </center>	
              
                                  
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
