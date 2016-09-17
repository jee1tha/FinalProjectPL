<%-- 
    Document   : ExpQuaUpdated
    Created on : Sep 17, 2016, 7:42:38 PM
    Author     : VABAYJE
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
        if(request.getAttribute("result")== "added"){
        %>
        <script >alert('Experience and Qualifications Criteria Updated');
            window.location = "index.jsp";
        </script>
        
        <%  }else{

%>
<script >alert('Experience and Qualifications Criteria  NOT updated. Please Try Again');
            window.location = "updateExpQuaCriteria.jsp";
        </script>

<% }
%>
    </body>
</html>
