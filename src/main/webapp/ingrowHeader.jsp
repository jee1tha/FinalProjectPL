<%-- 
    Document   : ingrowHeader
    Created on : Sep 15, 2016, 4:26:17 PM
    Author     : VABAYJE
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>ingrow Header</title>
    <div class="row">
    </div>
    <%   if ((String) session.getAttribute("username") != null) {
            String name = (String) session.getAttribute("username");

            out.println("<div class='col-md-10 col-sm-5 text-center' id= 'welcome2'>");
            out.println("<div class='alert alert-success'>");
            out.println("InGrow - Intelligent Growth </div> </div>");
            out.println("<div class='col-md-2 col-sm-1 text-center'  id= 'welcome2' >");
            out.println("Welcome" + " " + name);
            out.println(" </div>");

        } else {
    %>
    <div class='col-md-12 col-sm-6 text-center' id= 'welcome2'>  <div class='alert alert-success'> InGrow - Intelligent Growth </div>  
    </div>
    <%
        }

    %>



</head>

</html>
