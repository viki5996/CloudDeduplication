<%-- 
    Document   : Downlaodkey
    Created on : Jul 31, 2014, 1:57:37 PM
    Author     : mvinoth
--%>

<!DOCTYPE html>
<html>
<body> 
    <%
        String id=request.getParameter("id");
    %>
    Enter Key:<input type="password" value="" name="pass" id="pass"> 
    <input type="text" value="<%=id%>" name="pass1" id="pass1" hidden> 
<input type="Submit" value="Submit"  onclick="closeWin()">




<script>
    function closeWin()
    {
       
        var ele=document.getElementById("pass1").value;
         var person=document.getElementById("pass").value;
window.location.href="Download?k="+person+"&id="+ele+"";
    }
</script>
</body>
</html>