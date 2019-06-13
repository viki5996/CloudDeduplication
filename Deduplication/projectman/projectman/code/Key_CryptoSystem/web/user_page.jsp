<%-- 
    Document   : user_page
    Created on : Jul 25, 2014, 11:50:55 AM
    Author     : mvinoth
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
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


   <!-- main horizontal menu -->
   <ul>
  
    <li class="nav1">
        <a href="page_ABOUT.jsp">
        <span class="over1"><span class="txt1">home</span></span>
       
      </a>
    </li>
    <li class="nav2">
      <a href="User.jsp#!/page_SERVICES">
        <span class="over1"><span class="txt1">Files</span></span>
      
      </a>
    </li>
    <li class="nav3 with_ul">
      <a href="Admin.jsp#!/page_PROJECTS">
        <span class="over1"><span class="txt1">Private_Files</span></span>
        
      </a>      
    </li>
    <li class="nav4">
      <a href="Audit.jsp#!/page_PARTNERS">
        <span class="over1"><span class="txt1">Purchase</span></span>
     
      </a>
    </li>
    <li class="nav5">
      <a href="#!/page_CONTACTS">
        <span class="over1"><span class="txt1">LogOut</span></span>
      
      </a>
    </li>
 
  </ul>

    <!-- /main horizontal menu -->
    <hr class="hidden" />
    <!-- logo with slogan -->
  
    <!-- /logo with slogan -->
    <hr class="hidden" />
  </div>
  <!-- /#header (main heading + logo with slogan) -->
  
  <!-- #main content construct -->
  <div id="content" style="height: 444px;">
    <!-- #left part of web - main content -->
    <div id="contentBlock">
           <%
                String msg1=(String)session.getAttribute("msg");
                if(msg1!=null)
                {
                    %>
                    <script>
                        var ss='<%=msg1%>';
                        alert(ss);
                        </script>
                    <%
                    session.removeAttribute("msg");
                }
                %>
        
      <!-- #first (main) article -->
     <div style="height: 500px" id="domain-form">
        <br>
     <%DateFormat df = new SimpleDateFormat("yy-MM-dd");
 String formattedDate = df.format(new Date());
String provider=request.getParameter("provider");






if(session.getAttribute("username")!=null ){



            Statement stmt;

        try {
            Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/resource","root","admin");

                 String qry="select * from admin where uid='"+session.getAttribute("username")+"' and date1>'"+formattedDate+"'";

           stmt = con.createStatement();
               ResultSet  rst = stmt.executeQuery(qry);
               if(rst.next())
                    {
                   String DB=rst.getString("d_provider");
                    String tbl=rst.getString("u_tab");
                    session.setAttribute("tbl", tbl);
session.setAttribute("data", DB);
Connection conn = null;





      Statement st;

    long filesizeInKB=0;
    String filename=request.getParameter("file");
    

                  

long tot_db_len= Integer.parseInt(rst.getString("d_size")) ;
 try {
                                                Class.forName("com.mysql.jdbc.Driver");
         conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/resource","root","admin");
                                                    st = conn.createStatement();
String sqlQuer="SELECT table_schema , SUM( data_length + index_length) / 1024' Size in KB' FROM information_schema.TABLES where table_schema='"+DB+"' GROUP BY table_schema  ";
                                                      ResultSet rs=st.executeQuery(sqlQuer);
                                                       if(rs.next()){
long used_db_len=rs.getInt(2);
long db_free_space=tot_db_len-used_db_len;



long tot_tbl_len=Integer.parseInt(rst.getString("u_size"));


                                            Statement stt = null;



                                            try {
                                                Class.forName("com.mysql.jdbc.Driver");
         conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/"+DB,"root","admin");
                                                    stt = conn.createStatement();
String sqlQuery="SELECT TABLE_NAME,round(((data_length + index_length)/ 1024 ),2) 'Size in MB' FROM information_schema.TABLES WHERE table_schema = '"+DB+"' and   TABLE_NAME='"+tbl+"' ";
                                                      ResultSet rss=stt.executeQuery(sqlQuery);
                                                       while(rss.next()){
long used_tbl_len=rss.getInt(2);
long free=tot_tbl_len-used_tbl_len;
if(db_free_space>filesizeInKB){
if(free>filesizeInKB){

 String uid =request.getParameter("uid");


String file1= request.getParameter("file1");
String name= request.getParameter("name");
if(file1 != null)

{

       
      
}





                                                  %>


                                                 
                                                      <pre>  <b>   <div> User Name              : <%=rss.getString(1)%>                   Free space                : <%=free%> &nbsp; Kb</div></b></pre><br>
                                  <pre>  <b> </b><br></pre>
                                                       
                                                  




                                                      


                            <%

                                              }
else{
response.sendRedirect("purchase.jsp?m=memory full Purchase ");

}}else{


}


                                                         }}
  catch (Exception e) {
                                               out.println("Error in Index JSP" + e);
                                            }
}
}
         catch (Exception ea) {
                                               out.println("Error in Index JSP" + ea);
                                            }

                                       }
        else{
response.sendRedirect("purchase.jsp?m=Date Expired ");
        }}
            catch (Exception e) {
          e.printStackTrace();
        }
}
    %>
       
                </div> 
            </div>
           
   

  <ul>
          
   
    
    <!-- ============ PAGE ABOUT ============= -->
    
    <!-- ============ PAGE ABOUT END============= -->

    <!-- ============ PAGE SERVICES ============= -->
    <li id="page_SERVICES">
      <div class="vl1"></div>
      <div class="vl2"></div>
 
      <div class="box2" style="overflow: auto">
      
 
    </div>
    <div class="box3">
      
     

      
       


       </div>
    </li>
    
    <li id="page_CONTACTS">
      <div class="vl1"></div>
      <div class="vl2"></div>
    <div class="box1">

    </div>
    <div class="box2">
      
       <script>
        function validateTime()
        {
            var pass=document.getElementById("name").value;
            if(pass=="")
                {
                    alert("File Password can't be empty")
                    return false;
                }
                var file1=document.getElementById("file1").value;
            if(file1=="")
                {
                    alert("File can't be empty")
                    return false;
                }
                 var re = /(\.doc|\.jpg|\.jpeg|\.png|\.mp4|\.wmv|\.docx|\.txt|\.pdf|\.xls|\.xlsx)$/i;
if(!re.exec(file1))
{
alert("File extension not supported!");
return false;
}
                 if ( ( form.type[0].checked == false ) && ( form.type[1].checked == false )) 
{
alert ( "Please choose your choice" ); 
return false;
}
                return true;
        }
    </script>
    <div style="margin-left: 200px" >
    <form name="form" action="Uploadinfo.jsp"  method="post" enctype="multipart/form-data" onsubmit="return validateTime(true);">
                                     <table>
                                 <h2>Upload  File to Cloud Server   :  </h2><br><br>
                    <tr>
                        <td> <input name="uid" size=25 id="uid"type="hidden" value="<%=session.getAttribute("username")%>"  /> </td>
                    </tr>
                    <tr>
                        <td> File Password </td><td> <input name="name"id="name" value=""size=25 type="password"  /> </td>
                    </tr>
                    <tr>
                        <td> Choose File to Upload </td><td> <input id="file1" type="file" name="file1" size=25  /> </td>
                    </tr>
                                         
                                         <tr>
                                             <td> File Upload in </td><td> <input id="public" type="radio" name="type" size=25 value="public" /> Public <input id="public" type="radio" name="type" value="private"size=25  /> Private</td> 
                    </tr>
                                         <tr></tr>
                    <tr>
                        <td>  </td><td> <input  type="submit" name="file1" size=15 type="text"  value="Upload"/> </td>
                    </tr>
                </table>
</form>
    </div>
    <div class="box3">
      
    
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
