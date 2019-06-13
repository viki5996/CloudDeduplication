<%-- 
    Document   : hosting_1
    Created on : Jul 25, 2014, 11:36:50 AM
    Author     : mvinoth
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
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
    <div class="txt3">By Vikram and Harshitha</div>
  </a>
</header>

<nav class="menu">
    <h4>Welcome to Server1</h4><br></br> 
                 
                     <br><br>

          <%





            Statement st=null;

        try {
          Class.forName("com.mysql.jdbc.Driver");
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/resource","root","admin");

                 String qry="select * from admin INNER JOIN cost ON admin.uid=cost.uid where admin.uid='"+session.getAttribute("username")+"'";

           st = con.createStatement();
               ResultSet  rs = st.executeQuery(qry);
               if(rs.next())
                    {%>
                    

         <h4>  <label>UID       &nbsp;  &nbsp;   &nbsp;&nbsp;  &nbsp;   &nbsp;&nbsp;&nbsp;&nbsp;   :        <%= rs.getString(1) %>  </label>          &nbsp;   &nbsp;   &nbsp;   &nbsp;   &nbsp;   &nbsp;&nbsp;  &nbsp;            <label><b>Provider   :  <%= rs.getString(3) %>        </b> </label></h4><br>

  <h4>  <label><b>Server Size  &nbsp;  :      100 Gb  </b> </label>        &nbsp;  &nbsp;   &nbsp;   &nbsp;   &nbsp;   &nbsp;   &nbsp;   &nbsp;          <label><b> Domain     :      <%= rs.getString(5) %>        </b> </label></h4><br>
<h4>  <label><b>Domain Size&nbsp;  :    <%= rs.getString(6) %>Kb  </b> </label>        &nbsp;  &nbsp;   &nbsp;   &nbsp;   &nbsp;   &nbsp;   &nbsp;   &nbsp;          <label><b>  Plan Cost        :   <%= session.getAttribute("plancost")%>     </b> </label></h4><br>


         <br>

         <h4> <label>&nbsp;&nbsp;  &nbsp;   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Purchase Date  :    <%= rs.getString(7) %>      </label><br></h4><br>
<h4> <label>&nbsp;&nbsp;  &nbsp;   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    Expired Date   :  <%= rs.getString(8) %>    </label><br><br></h4>


           
<%     }
        else{

        }}
            catch (Exception e) {
          e.printStackTrace();
        }

    %><br><br>
    <pre>                                   <a href="page_ABOUT.jsp" class="classname">Accept</a> 	</pre>										
               
</nav>



<!--content -->
<article id="content">

  <ul>
          
   
    
    <!-- ============ PAGE ABOUT ============= -->
    
    <!-- ============ PAGE ABOUT END============= -->

    <!-- ============ PAGE SERVICES ============= -->
    <li id="page_SERVICES">
      <div class="vl1"></div>
      <div class="vl2"></div>
 
      <div class="box2" style="overflow: auto">
      
      <script>
     
     
     function validateTime() {
var uid=document.getElementById("uid").value;
var pwd=document.getElementById("pwd").value;
var Provider=document.getElementById("Provider").value;
var db=document.getElementById("db").value;
var domain=document.getElementById("domain").value;
var dsize=document.getElementById("dsize").value;
var date=document.getElementById("date").value;
var date1=document.getElementById("date1").value;
var plan=document.getElementById("plan").value;
var domain1 = /^[0-9]+$/.test(dsize);
 var days = /^[0-9]+$/.test(date1);
 var name = /^[A-Za-z]{3,20}$/.test(uid);
if(uid===""){    
    alert("Error: uid cannot be blank!");
    return false;
}
if(!name){    
    alert("Error: Date Should be (A-Z) or (a-z)) & 3 to 20 !");
    return false;
}
if(pwd===""){    
    alert("Error: pwd cannot be blank!");
    return false;
}
if(Provider===""){    
    alert("Error: fname cannot be blank!");
    return false;
}

if(db===""){    
    alert("Error: lname cannot be blank!");
    return false;
}
if(domain===""){    
    alert("Error: Domain cannot be blank!");
    return false;
}


if(dsize===""){    
    alert("Error: Db Size cannot be blank!");
    return false;
}
if(!domain1){    
    alert("Error: Domain Size Should be 1 to 4 Degit Number!");
    return false;
}
if(!date){    
    alert("Error: Date Should be 1 to 2 Degit Number!");
    return false;
}
if(date1===""){    
    alert("Error: No.of.Day's cannot be blank!");
    return false;
}

if(days===""){    
    alert("Error: No.of.Day's cannot be blank!");
    return false;
}
if(!days){    
    alert("Error: Date Should be 1 to 2 Degit Number!");
    return false;
}


if(plan===""){    
    alert("Error: add cannot be blank!");
    return false;
}


else{return  true;}

}
 </script>
<%
    String msg= request.getParameter("msg");
    %>

   
             

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
        <script>
     
     
     function validateTime() {
var uid=document.getElementById("uid").value;
var pwd=document.getElementById("pwd").value;
var Provider=document.getElementById("Provider").value;
var db=document.getElementById("db").value;
var domain=document.getElementById("domain").value;
var dsize=document.getElementById("dsize").value;
var date=document.getElementById("date").value;
var date1=document.getElementById("date1").value;
var plan=document.getElementById("plan").value;
var domain1 = /^\d{4}$/.test(dsize);
 var days = /^[0-9]+$/.test(date1);
 var name = /^[A-Za-z]{3,20}$/.test(uid);
if(uid===""){    
    alert("Error: uid cannot be blank!");
    return false;
}
if(!name){    
    alert("Error: Name Should be (A-Z) or (a-z)) & 3 to 20 !");
    return false;
}
if(pwd===""){    
    alert("Error: pwd cannot be blank!");
    return false;
}
if(Provider===""){    
    alert("Error: fname cannot be blank!");
    return false;
}

if(db===""){    
    alert("Error: lname cannot be blank!");
    return false;
}
if(domain===""){    
    alert("Error: Domain cannot be blank!");
    return false;
}


if(dsize===""){    
    alert("Error: Db Size cannot be blank!");
    return false;
}
if(!dsize.match(/^\d{3}$/)){    
    alert("Error: Domain Size Should be 1 to 3 Digit Number!");
    return false;
}
if(uid.localeCompare(domain))
    {
     alert("Error: User Name and Domain Name should be same");
    return false;   
    }

if(!date){    
    alert("Error: Date Should be 1 to 2 Digit Number!");
    return false;
}
if(date1===""){    
    alert("Error: No.of.Day's cannot be blank!");
    return false;
}

if(days===""){    
    alert("Error: No.of.Day's cannot be blank!");
    return false;
}
if(!days){    
    alert("Error: Date Should be 1 to 2 Digit Number!");
    return false;
}
if(!date1.match(/^\d{2}$/))
    {
      alert("Error: Date Or Month Should be 1 into 2 digit Number!");
    return false;   
    }
   var nn=Number(date1);
   if(nn>50)
       {
             alert("Error: Date Or Month Should be 1 into 50 Number!");
    return false;  
       }


if(plan===""){    
    alert("Error: add cannot be blank!");
    return false;
}


else{return  true;}

}
 </script>
                          
                    
                
  

      <h2 style="margin-left: 153px;">NEW USER REGISTRATION</h2>

     
        
       
         <form action="regist_1.jsp" method=get  onsubmit="return validateTime();" style="margin-top: -62px; margin-left: 576px;">
               
         <br>

<pre><label>U_Name     :          </label><input type=text id="uid"name=uid><br></pre><br>

<pre><label>Password   :          </label><input type=password id="pwd" name=pwd><br></pre><br>

<pre><label>Server     :          </label><input type=text readonly value="access" id="Provider" name=Provider><br>
</pre>

<pre><label>Server Size:          </label><input value="10000" id="db" type=text readonly name=db><br></pre><br>
<pre><label>Domain     :          </label><input type=text id="domain" name=domain><br></pre><br>
<pre><label>Domain Size:          </label><input type=text id="dsize" name=dsize><br></pre><br>

<pre><label>Date from  :          </label><input type=text readonly value="<%=new java.util.Date()%>" id="date" name=date><br></pre><br>
<pre><label>NO.of.D/M:          </label><input type=text id="date1" name=date1><br></pre><br>
<pre><label>Plan       :          </label><select  id="plan" style="width: 150px" name="plan"> 
                <option>day </option>
               
                <option>month</option>
            </select></pre><br>




   
       <pre>               <input id="contacts-form"type=submit name=tbut value="click here"><br></pre>

            </form> 


 

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
