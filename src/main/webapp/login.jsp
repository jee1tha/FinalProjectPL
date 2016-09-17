<%@page contentType="text/html" pageEncoding="UTF-8"%>
   
    <!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link href="home.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
  <% if((String)session.getAttribute("registration") !=null){
                String reg = (String)session.getAttribute("registration");;
                if(reg != null){
                if (reg  == "successful" || reg == "adminsuccessful"){  
                	if(reg == "adminsuccessful"){
                    %>
                   
                    <Script >alert('Admin Successfully Added'); 
                    window.location = "index.jsp";</Script>
                    
                     
                    <%  session.setAttribute("registration", null); }
                	else {
                    %>
                    
                    <Script >alert('Registration successful. Please Login'); 
                    window.location = "login.jsp";</Script>
                    
                     
                    <%  session.setAttribute("registration", null);}
                	} else{
                		if(reg=="adminfailed"){
%>
                         <Script > alert('Registration Failed. Please Try again');
                         window.location = "adminRegister.jsp";</Script>
 <%  session.setAttribute("registration", null);}   else{
	 %>
     <Script > alert('Registration Failed. Please Try again');
     window.location = "register.jsp";</Script>
<%  session.setAttribute("registration", null);
 }
}
                }
                        }
%>
                                                  <% if(session.getAttribute("username") !=null){
                String username = (String)session.getAttribute("username");;
              
                if (username != null ){  
                    %>
                   
                    <Script >alert('Login successful'); 
                    window.location = "index.jsp";</Script>
                    
                     
                    <%  }  else{
%>
                         <Script > alert('Login Failed. Please Try again'); 
                         window.location = "login.jsp";</Script>
 <% }    

                        }
%>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<body>
    <div class="container ">
        <div class="row">
        <div class="col-md-12 col-sm-6" id=welcome1>
		<marquee> Login to apply for job vacancies</marquee>
        </div>
        </div>

	   <div class="row">
           <jsp:include page="ingrowHeader.jsp" />
        
         </div>
	

 
	  <jsp:include page="nav.jsp" />
           <div class="col-md-3 col-sm-1 " >
           </div>
    <div class="col-md-7 col-sm-4 " >     
        <form method="Post " action ="loginServlet" >
        <div class="form-group">
                <label for="txtUsername">Username</label>
                <input type="text" class="form-control" style="width: 250px" id="txtUsername" name="txtUsername" placeholder="Enter Username">
        </div>
        <div class="form-group">
                <label for="txtPassword">Password</label>
                <input type="password" class="form-control" style="width: 250px" id="txtPassword" name="txtPassword" placeholder="Enter Password">
        </div>
        <div class="form-group">
            <div class="row">
                <div class="with-errors" >
                    <h3 class="text-danger text-center" > ${reponselogin} </h3>
                </div>
            </div>
                <p class="help-block">Not a Member ? <a href="register.html"> click here to Register </a></p>
        </div>

    <button type="submit" class="btn btn-success">Login</button>
    <a href="Home.jsp" class="btn btn-default">Cancel </a>
    
    
    </form>
    </div>


<div class="col-md-3 col-sm-1 " >
           </div>

    <br>
	<footer> © Copyrights 2016 InGrow </footer>
    </div>
</body>
</html>
