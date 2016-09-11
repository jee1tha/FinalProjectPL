
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <%

   String role = null  ;
                if(session.getAttribute( "role" ) != null){
                	role=(String)session.getAttribute( "role" );
                } else{
                      %>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Navigation Panel</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index.jsp">Home</a></li>
      <li><a href="about.jsp">About</a></li>
     
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="register.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login </a></li>
    </ul>
  </div>
</nav>
  <%
                }
                if(role == "user"){
                %>
                
                
              <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Navigation Panel</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index.jsp">Home</a></li>
       <li><a href="application.jsp">Apply for Job</a></li>
      <li><a href="about.jsp">About</a></li>
     
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="logout.jsp"><span class="glyphicon glyphicon-log-in"></span>Logout </a></li>

    </ul>
  </div>
</nav>  
                
                
                
                
                
                <%
                }
                if(role == "admin"){
                %>
                
                
                       <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Navigation Panel</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index.jsp">Home</a></li>
       <li><a href="viewApplicants.jsp">View Applicants</a></li>
       <li><a href="job.jsp">Jobs</a></li>
      <li><a href="about.jsp">About</a></li>
     
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="logout.jsp"><span class="glyphicon glyphicon-log-in"></span>Logout </a></li>

    </ul>
  </div>
</nav>         
                
                <%
                }
                if(role == "masterAdmin"){
                %>
                                   <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Navigation Panel</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index.jsp">Home</a></li>
       <li><a href="viewApplicants.jsp">View Applicants</a></li>
       <li><a href="job.jsp">Jobs</a></li>
      <li><a href="about.jsp">About</a></li>
     
    </ul>
    <ul class="nav navbar-nav navbar-right">
    <li><a href="adminRegister.jsp"><span class="glyphicon glyphicon-user"></span>Add Admins </a></li>
      <li><a href="logout.jsp"><span class="glyphicon glyphicon-log-in"></span>Logout </a></li>

    </ul>
  </div>
</nav>    
                
                
                <%
                }
                %>
   </head>
    
</html>

