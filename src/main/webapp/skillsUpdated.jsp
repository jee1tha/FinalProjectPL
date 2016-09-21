<%-- 
    Document   : skillsUpdated
    Created on : Sep 17, 2016, 5:56:51 PM
    Author     : VABAYJE
--%>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JSP Page</title>
    </head>
    <body> <% 
        if(request.getAttribute("result")== "added"){
        %>
        <script >alert('Skills Updated');
            window.location = "index.jsp";
        </script>
        
        <%  }else{

%>
<script >alert('Skills NOT updated. Please Try Again');
            window.location = "updateSkillsCriteria.jsp";
        </script>

<% }
%>
    </body>
</html>
