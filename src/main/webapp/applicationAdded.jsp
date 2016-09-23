<%-- 
    Document   : applicationAdded
    Created on : Sep 17, 2016, 5:54:01 PM
    Author     : VABAYJE
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JSP Page</title>
    </head>
    <body><% 
        if(request.getAttribute("result")== "added"){
        %>
        <script >alert('Application Sent');
            window.location = "login.jsp";
        </script>
        
        <%  }else{

%>
<script >alert('Failed to Sent Application');
            window.location = "application.jsp";
        </script>

<% }
%>
    </body>
</html>
