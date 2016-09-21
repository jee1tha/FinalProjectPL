<%-- 
    Document   : logout
    Created on : Sep 16, 2016, 1:46:51 AM
    Author     : VABAYJE
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JSP Page</title>
    </head>
    <script>
        var r = confirm("Are you sure you want to logout ?")
        if(r==true){
             
            window.location.replace("logoutconfirm.jsp");
        }else{
             alert("Greate choice !");
            window.location.replace("index.jsp");
        }
        </script>
    <body>
 
    </body>
</html>
