<%@page contentType="text/html" pageEncoding="UTF-8"%>
   
    <!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link href="home.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>

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
	</td>

 
	  <jsp:include page="nav.jsp" />
    <div class="col-md-12 col-sm-6" >     
    <form method="Post "  >
        <div class="form-group">
                <label for="username">Username</label>
                <input type="text" class="form-control" style="width: 250px" id="username" placeholder="Enter Username">
        </div>
        <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" style="width: 250px" id="password" placeholder="Enter Password">
        </div>
        <div class="form-group">
   
                <p class="help-block">Not a Member ? <a href="register.html"> click here to Register </a></p>
        </div>

    <button type="submit" class="btn btn-success">Login</button>
    <a href="Home.jsp" class="btn btn-default">Cancel </a>
    
  
    </form>
    </div>




    <br>
	<footer> © Copyrights 2016 InGrow </footer>
    </div>
</body>
</html>
