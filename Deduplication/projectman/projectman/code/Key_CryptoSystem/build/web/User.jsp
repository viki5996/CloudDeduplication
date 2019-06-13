<!DOCTYPE html>
<html lang="en">
<head>
<title> Key-Aggregate Cryptosystem</title>
<meta charset="utf-8">
<link rel="stylesheet" href="styles.css" type="text/css" media="all">
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
  <a href="index.html" class="logo">    
    <div class="txt1">Clouded Up : Deduplication with Secure storage</div>
    <div class="txt2">Clouded Up : Deduplication with Secure storage</div>
    <div class="txt3"></div>
  </a>
</header>

<nav class="menu">
  <ul id="menu">
    <li class="nav1">
        <a href="page_ABOUT.jsp">
        <span class="over1"><span class="txt1">home</span></span>
        <span class="over2"><img src="images/splash01.png" alt="" class="img"></span>
      </a>
    </li>
    <li class="nav2">
      <a href="User.jsp#!/page_SERVICES">
        <span class="over1"><span class="txt1">user login</span></span>
        <span class="over2"><img src="images/splash02.png" alt="" class="img"></span>
      </a>
    </li>
    <li class="nav3 with_ul">
      <a href="Admin.jsp#!/page_PROJECTS">
        <span class="over1"><span class="txt1">admin</span></span>
        <span class="over2"><img src="images/splash03.png" alt="" class="img"></span>
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
      
      
           <center>  
            <h4>LOGIN PAGE</h4><br></br>
         
            
        <form id="search-form" name="form3" action="LoginCheck" >
       
                                                <table cellspacing="30px" style="border: #999999;border-style: solid">
                                                    <tr><td>Username</td>
                                                        <td>
                                                            <input  type="text" value="" name="Un" required></input> </td></tr>
                                                    <tr><td>
   Password</td>
                                                        <td> <input  type="password" value="" name="Pwd" required></input></td></tr>
                                                    <tr height="38%"><td></td><td><input class="submit" type="submit" value="SignIn"></input></td></tr></table>
                                                 
</form>
           

        </center>

   <a href="#!/page_MORE" class="button1">New User Registration</a>  
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
       <%
             String un = (String)session.getAttribute("un");
           /* if (un == null) {
                session.invalidate(); 
                session=request.getSession(true);
    session.setAttribute("msg", "Sorry!!! Your SignIn Time Out.Please SignIn Again ");
     session.setAttribute("color", "red ");
response.sendRedirect("Home.jsp");
                
            }*/
            String Servlet_Msg = (String) session.getAttribute("msg");
              String color = (String) session.getAttribute("color");

        %>


<script type="text/javascript">  
      var xmlHttp 
      function showBank(str){
      if (typeof XMLHttpRequest != "undefined"){
      xmlHttp= new XMLHttpRequest();
      }
      else if (window.ActiveXObject){
      xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
      }
      if (xmlHttp==null){
      alert("Browser does not support XMLHTTP Request")
      return;
      } 
      var url="Sheme.jsp";
      url +="?count=" +str;
      xmlHttp.onreadystatechange = stateChange;
      xmlHttp.open("GET", url, true);
      xmlHttp.send(null);
      }

      function stateChange(){   
      if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   
      document.getElementById("us").innerHTML=xmlHttp.responseText   
    
      }   
      }
    
   
      function showBank1(str){
      if (typeof XMLHttpRequest != "undefined"){
      xmlHttp= new XMLHttpRequest();
      }
      else if (window.ActiveXObject){
      xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
      }
      if (xmlHttp==null){
      alert("Browser does not support XMLHTTP Request")
      return;
      } 
      var url="Sheme1.jsp";
      url +="?count=" +str;
     // alert(url);
      xmlHttp.onreadystatechange = stateChange1;
      xmlHttp.open("GET", url, true);
      xmlHttp.send(null);
      }

      function stateChange1(){   
      if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   
      document.getElementById("us1").innerHTML=xmlHttp.responseText   
   
      }   
      }
      
       function showBank2(){
      if (typeof XMLHttpRequest != "undefined"){
      xmlHttp= new XMLHttpRequest();
      }
      else if (window.ActiveXObject){
      xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
      }
      if (xmlHttp==null){
      alert("Browser does not support XMLHTTP Request")
      return;
      } 
      var url="Sheme2.jsp";
      //alert(url);
      xmlHttp.onreadystatechange = stateChange2;
      xmlHttp.open("GET", url, true);
      xmlHttp.send(null);
      }

      function stateChange2(){   
      if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   
      document.getElementById("us2").innerHTML=xmlHttp.responseText   
   
      }   
      }
      
      </script>
 <script>
      function formValidation()
{
   
    var Name=document.form1.Name;
    var Un=document.form1.Un;
    var Pwd=document.form1.Pwd;
    var Email=document.form1.Email;
    var Cn=document.form1.Cn;
    var Scheme=document.form1.Scheme;
    if(Name_validation(Name))
{
       if(Un_validation(Un,5))
{
       if(Pwd_validation(Pwd,5))
{
       if(Email_validation(Email))
{
       if(Cn_validation(Cn,19))
{  
 if (Scheme.value == "Select" )
{
alert("Please Select the Scheme ");
Scheme.focus();
}
    else if(Scheme.value=="Group")
        {
    var S_Name=document.form1.S_Name;
   if (S_Name.value == "Select" )
{
alert("Please Select the Group ");
S_Name.focus();
}
else if (S_Name.value == "Create" )
    {
        var G_Name=document.form1.G_Name;
        var Key=document.form1.key;
       if(S_Name_validation(G_Name,4))
{
   if(Key_validation(Key,5))
{    
  return true;  
}
}
}
else
    {
    var Key=document.form1.key;
    if(Key_validation(Key,5))
{    
  return true;  
}
        }
        }
else
   return true;  
}
}
}
}
    
}
        
       
            
return false;
}
function Name_validation(uid)
{
var uid_len = uid.value.length;
var regex_pat_alpspace = /^[a-zA-Z\s.]+$/;
if(regex_pat_alpspace.test(uid.value)==true)
    {
        return true
    }
else if (uid_len == 0 )
{
alert("Name should not be empty ");
uid.focus();
return false;
}
else if(regex_pat_alpspace.test(uid.value)==false)
    {
       alert("Name Must allow Alphabets,Space and Dot(.)");
       return false;
    }
return true;
}
function Un_validation(uid,mx)
{
var uid_len = uid.value.length;
var regex_pat_alpnum_spe = /^[A-Za-z0-9(!@#$%^&*.<>,_+-=:;?\/|\\)]+$/;
if(regex_pat_alpnum_spe.test(uid.value)==true && uid_len==mx)
    {
        return true
    }
else if (uid_len == 0 )
{
alert("User Name should not be empty ");
uid.focus();
return false;
}
else if( regex_pat_alpnum_spe.test(uid.value)==true && uid_len < mx)
    {
alert("User Name length Should be >= "+mx+" ");
uid.focus();
return false; 
    }
else if(regex_pat_alpnum_spe.test(uid.value)==false)
    {
       alert("User Name should not allow Space");
       return false;
    }
return true;
}
function Pwd_validation(uid,mx)
{
var uid_len = uid.value.length;
if (uid_len == 0 )
{
alert("Password should not be empty ");
uid.focus();
return false;
}
else if( uid_len < mx)
    {
alert("Password length Should be >= "+mx+" ");
uid.focus();
return false; 
    }
return true;
}
function Email_validation(uid)
{
var uid_len = uid.value.length;
        var reg = /^([A-Za-z0-9_\-\.])+@+[gmail]+\.([A-Za-z]{2,3})$/;
if (uid_len == 0)
{
alert('Email Address Should Not be Empty');
uid.focus();
return false;
}
else if (reg.test(uid.value) == false) 
        {
            alert('Invalid Email Address.Gmail Address only Acceptable.Example:Alice@gmail.com');
            return false;
        }
      
        return true;
}
function Cn_validation(uzip,mx)
{
    var uid_len = uzip.value.length;
var numbers = /^[0-9]+$/;
if(uzip.value.match(numbers) && uid_len==mx)
{
return true;
}
else if (uid_len == 0)
{
alert('Credit Card Number Should Not be Empty');
uzip.focus();
return false;
}else if ((uzip.value.match(numbers)) && (uid_len<mx || uid_len > mx))
{
alert("Credit Card Number Length Should be "+mx+"");
uzip.focus();
return false;
}

else if(uzip.value.match(numbers)!=0)
    {
alert('Credit Card Number must have numeric characters only');
uzip.focus();
return false;
}
}
function Scheme_validation(uid)
{
var uid_len = uid.value.length;
if (uid.value == "Select" )
{
alert("Please Select the Scheme ");
uid.focus();
return false;
}
return true;
}
function S_Name_validation(uid,mx)
{
var uid_len = uid.value.length;
var regex_pat_alpspace = /^[a-zA-Z0-9]+$/;
if(regex_pat_alpspace.test(uid.value)==true && uid_len == mx)
    {
        return true
    }
else if (uid_len == 0 )
{
alert("Group Name should not be empty ");
uid.focus();
return false;
}
else if(regex_pat_alpspace.test(uid.value)==true && uid_len<mx)
    {
        alert("Group Name Length Should be >="+mx);
        return false;
    }
else if(regex_pat_alpspace.test(uid.value)==false)
    {
       alert("Group Name Should allow Alpha Numeric only");
       return false;
    }
return true;
}
function Key_validation(uid,mx)
{
var uid_len = uid.value.length;
var regex_pat_alpspace = /^[a-zA-Z0-9]+$/;
if(regex_pat_alpspace.test(uid.value)==true && uid_len == mx)
    {
        return true
    }
else if (uid_len == 0 )
{
alert("Security Key should not be empty ");
uid.focus();
return false;
}
else if(regex_pat_alpspace.test(uid.value)==true && uid_len<mx)
    {
        alert("Security Key Length Should be >="+mx);
        return false;
    }
else if(regex_pat_alpspace.test(uid.value)==false)
    {
       alert("Security Key Should allow Alpha Numeric only");
       return false;
    }
return true;
}
</script>   
                    
                
  
    <center>
      <h2 style="margin-left: 153px;">NEW USER REGISTRATION</h2>

     
        
    
            <%
             
             

              if(Servlet_Msg!=null){
                                    %>
                                    <center><blink> <font size="3" color="<%=color%>"><label><%=Servlet_Msg%></label></font></blink></center><% 
                                            session.removeAttribute("msg");
                                               session.removeAttribute("color");
                                            }%>

			
				

			
			
				

			
					<form id="search-form" name="form1" action="SignUp" onsubmit="return formValidation();"><fieldset>
       
                                                <table cellspacing="30px" style="border: #999999;border-style: solid">
                                                    <tr><td>Name</td>
                                                        <td>
  <input  type="text" value="" name="Name"></input> </td></tr>
                                                    <tr><td>Username</td>
                                                        <td>
  <input  type="text" value="" name="Un"></input> </td></tr>
                                                    <tr><td>
   Password</td>
                                                        <td> <input  type="password" value="" name="Pwd"></input></td></tr>
                                                    <tr><td>Email</td>
                                                        <td>
  <input  type="text" value="" name="Email"></input> </td></tr>
                                                    <tr><td>Credit Card No</td>
                                                        <td>
  <input  type="text" value="" name="Cn"></input> </td></tr>
                                                    <tr><td>Scheme</td>
                                                        <td>
                                                            <select  name="Scheme" onchange="showBank(this.value)"><option value="Select">Select Scheme</option><option value="Individual">Individual</option><option value="Group">Group</option></select> </td></tr>
                                                    <tr id='us'></tr>
                                                     <tr id='us1'></tr>
                                                   <tr id='us2'></tr>
                                                    <tr height="38%"><td></td><td><input class="submit" type="submit" value="SignUp"></input>&nbsp;&nbsp;<input class="submit" type="reset" value="Clear"></input></td></tr></table>
                             
   </fieldset></form>
				
			

				
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
