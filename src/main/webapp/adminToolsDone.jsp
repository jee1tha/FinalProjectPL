<%-- 
    Document   : adminToolsDone
    Created on : Sep 18, 2016, 1:54:10 AM
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
        if(request.getAttribute("skill")== "done"){
        %>
        <script >alert('Skills Artificial Neural Network Re-Trained');
           
        </script>
        
        <%  }else{

%>
<script >alert('Skills artificial Neural Network NOT Retrained. Please Try Again');
           
        </script>

<% }
%>
   <% 
        if(request.getAttribute("expQua")== "done"){
        %>
        <script >alert('Experience/Qualifications Artificial Neural Network Re-Trained');
          
        </script>
        
        <%  }else{

%>
<script >alert('Experience/Qualifications artificial Neural Network NOT Retrained. Please Try Again');
           
        </script>

<% }
%>
 <% 
        if(request.getAttribute("reEvaluate") == "done"){
        %>
        <script >alert('All Applicants re-Evaluated to Current Criteria.  ' );
           
        </script>
        
        <%  }else{

%>
<script >alert('Re-Evaluation Failed. Please Try Again');
         
        </script>

<% }
%>
<script >
            window.location = "adminTool.jsp";
        </script>
    </body>
</html>
