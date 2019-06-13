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

<nav class="menu">
 <ul id="menu">
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
    <li class="nav3 with_ul">
      <a href="DownloadCount.jsp#!/page_SERVICES">
        <span class="over1"><span class="txt1">Download Count</span></span>
        <span class="over2"><img src="images/counter-icon.png" alt="" class="img" style="height: 161px; margin-left: -18px; width: 198px;"></span>
      </a>      
    </li>
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
          
   
    <li id="page_SERVICES">
     
      
 
   
    
     
    
    
  
		


 

   

  </ul>
</article>


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
