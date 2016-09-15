<%-- 
    Document   : logout
    Created on : Sep 16, 2016, 1:46:51 AM
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
       <%  if(request.getSession() != null){
            request.getSession().invalidate();
        %>
  <script> 
            alert("Successfully logged out !");
            window.location.replace("index.jsp");
                    </script>
                    <%
}
            %>
    </body>
</html>
