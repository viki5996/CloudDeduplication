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
     String page1="";
if(String.valueOf(session.getAttribute("Sn")).compareToIgnoreCase("Not")!=0) {
    page1="GroupUserhome.jsp";
}
else
    page1="Userhome.jsp";
        %>
 <script>
      function formValidation()
{
    
        var file = document.getElementById('file');  

        if(File_validation(file))
{
  return true;  
}

return false;
}

function File_validation(uid)
{
var uid_len = uid.value.length;
var file=uid.files[0];
var uid_len = uid.value.length;
if (uid_len == 0 )
{
alert("File Should not be empty");
uid.focus();
return false;
}
else if(uid_len > 0 && uid_len > 0 && file.size >= 4048576)
    {
       alert("File Size Should be less than 4MB only");
uid.focus();
return false;
    }

return true;
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
      <div class="vl1"></div>
      <div class="vl2"></div>
 
      <div class="box2" style="overflow: auto">
      
      <br></br> Hi, <font size="5" color="white"><%=session.getAttribute("un")%>...</font><br></br>
                                    
                                    <center> 
                                        <h2>Upload</h2>
                                        <%if(Servlet_Msg!=null){
                                    %>
                                    <center><blink> <font size="8"  color="<%=color%>"><label><strong><%=Servlet_Msg%></strong>></label></font></blink></center><br><% 
                                            session.removeAttribute("msg");
                                               session.removeAttribute("color");
                                            }%>
                                        <form class="search-form1" method="post" enctype="multipart/form-data" action="Upload"  name="form1" onsubmit="return formValidation();"><fieldset>
       
                                                <table cellspacing="20px" style="border: #999999;border-style: solid">
                                                    <tr><td>Choose File</td>
                                                        <td>
  <input  type="file" value="" name="file" id="file"></input> </td>
                                                    </tr>
                                                    <tr><td></td><td><input class="submit" type="submit" value="Upload"></input></td></tr></table>
                                                
   </fieldset></form></center>
   
    </div>
    <div class="box3">
      
     

      
       


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
