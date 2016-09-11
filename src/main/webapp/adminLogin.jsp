<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link href="home.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Login</title>

</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<body>
    <div class="container ">
        <div class="row">
        <div class="col-md-12 col-sm-6" id=welcome1>
		<marquee> Admin Tools</marquee>
        </div>
        </div>

	<div id=welcome2>InGrow Admin Tools</div>
	</td>

   <jsp:include page="nav.jsp" />
		 <div class="col-md-3 col-sm-1 " >   </div>
    <div class="col-md-6 col-sm-4 " >  
    <form method="Post "  >
        <div class="form-group">
                <label for="username">Username</label>
                <input type="text" class="form-control" id="username" placeholder="Enter Username">
        </div>
        <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" id="password" placeholder="Enter Password">
        </div>
        <div class="form-group">
   
                <p class="help-block"> For Access Rights please contact Master Admin</p>
        </div>

    <button type="submit" class="btn btn-success">Login</button>
    <a href="Home.jsp" class="btn btn-danger">Cancel </a>
    
    </form>
    </div>
    <div class="col-md-3 col-sm-1" >   </div>




   
	<footer> © Copyrights 2016 InGrow </footer>
    </div>
</body>
</html>
