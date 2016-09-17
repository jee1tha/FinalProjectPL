<%-- 
    Document   : testz
    Created on : Sep 17, 2016, 7:59:16 PM
    Author     : VABAYJE
--%>
<%@page import="PLMethods.presentationLayerMethods"%>
<%@page import="businessoperationslayer.Job"%>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <% 
            presentationLayerMethods pl =new  presentationLayerMethods();
        
                pl.trainSkillsNN();
             pl.trainQualificationsExperienceNN();
            %>
    </body>
</html>
