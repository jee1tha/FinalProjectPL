<%-- 
    Document   : ingrowHeader
    Created on : Sep 15, 2016, 4:26:17 PM
    Author     : VABAYJE
--%>

<%@page import="java.io.File"%>
<%@page import="java.io.InputStream"%>
<%@page contentType="text/html" pageEncoding="windows-1252"%>

    <div class="row">
    </div>
    <%   if ((String) session.getAttribute("username") != null) {
            String name = (String) session.getAttribute("username");
           

            out.println("<div class='col-md-10 col-sm-5 text-center ' id= 'welcome2'>");
            out.println("<div>");
           	out.println("<img src='inGrowLogo.jpg' class='img-rounded ' alt='Cinque Terre' width='212' height='124'>");
            out.println("</div> </div>");
       
            out.println("<div class='col-md-2 col-sm-1 nopadding' id= 'welcome2' >");
            out.println("<font size='4' color='darkgray'>  Welcome </font>" + " <font size='5' color='black'> <br> " + name  + "</font> ");
            out.println(" </div>");

        } else {
    %>
    <div class='col-md-12 col-sm-6 text-center' id= 'welcome2'>  <div > <img src='inGrowLogo.jpg' class='img-rounded' alt='Cinque Terre' width='212' height='124'> <font size='5' color='black'>  </font> </div>  
    </div>
    <%
        }

    %>



