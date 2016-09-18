
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%

            String role = null;
            if (session.getAttribute("role") != null) {
                role = (String) session.getAttribute("role");
                if (role.equals("user")) {
        %>


    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">Navigation Panel</a>
            </div>
            <ul class="nav navbar-nav">
                <li id="index"><a href="index.jsp">Home</a></li>
                <li id="jobs"><a href="jobs.jsp">Apply for Job</a></li>
              

            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li id="logout"><a href="logout.jsp"><span class="glyphicon glyphicon-log-in"></span>Logout </a></li>

            </ul>
        </div>
    </nav>           <%
        }
        if (role.equals("admin")) {
    %>


    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">Navigation Panel</a>
            </div>
            <ul class="nav navbar-nav">
                <li id="index"><a href="index.jsp">Home</a></li>
                <li id="viewapp"><a href="ViewApplicants.jsp">View Applicants</a></li>
                <li id="jobs"><a href="jobs.jsp">Jobs</a></li>
               

            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li id="logout"><a href="logout.jsp"><span class="glyphicon glyphicon-log-in"></span>Logout </a></li>

            </ul>
        </div>
    </nav>         

    <%
        }
        if (role.equals("masteradmin")) {
    %>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">Navigation Panel</a>
            </div>
            <ul class="nav navbar-nav">
                <li id="home"><a href="index.jsp">Home</a></li>
                <li><a href="jobs.jsp">Jobs</a></li>
                <li id="viewapp"><a href="ViewApplicants.jsp">View Applicants</a></li>
                
              
                 
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li id="adminTools"><a href="adminTool.jsp"><span class="	glyphicon glyphicon-off"> Admin Tools</span> </a></li>
                <li id="adminReg" ><a href="adminRegister.jsp"><span class="glyphicon glyphicon-user"> Add Admins</span> </a></li>
                <li><a href="logout.jsp" ><span class="glyphicon glyphicon-log-in" ></span>Logout </a></li>

            </ul>
        </div>
    </nav>    

    <%
    }
}  else{
    %>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">Navigation Panel</a>
            </div>
            <ul class="nav navbar-nav">
                <li id="index"><a href="index.jsp">Home</a></li>
                

            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li id="register"><a href="register.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                <li id="login"><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login </a></li>
            </ul>
        </div>
    </nav>
    <%
        }

    %>
    
</head>

</html>

