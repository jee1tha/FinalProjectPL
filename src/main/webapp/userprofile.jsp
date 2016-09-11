<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link href="home.css" rel="stylesheet" type="text/css" />

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>

</head>

<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<div class="container">
        <div class="row">
        <div class="col-md-12 col-sm-6" id=welcome1>
		<marquee>Viewing User Profile</marquee>
        </div>
        </div>
    <div class="row">
	<div class="col-md-10 col-sm-4 " id= "welcome2">  PROFIEL NAME GOES HERE </div>
    
    <div class="col-md-2 col-sm-2 " >    
        <span class="glyphicon glyphicon-user">      </span>
       
       </div>
    </div>

    <div class="row">
      <jsp:include page="nav.jsp" />
        <div class="col-md-6 col-sm-3 panel-group"  >
             <div class="panel panel-info">
                 <div class="panel-body"> <h3> BIOGRAPHY</h3> </div>
             </div>
           
         </div>
       <div class="col-md-6 col-sm-3 panel-group"  >
         <div class="panel panel-info">
                <div class="panel-body">
                    <h4>
                        SKILLS AND QUA EXP
                    </h4>
                 </div>
        </div>
    </div>
     <div class="row">

     </div>

	


<footer>  Copyrights 2016 InGrow </footer>
</div>
	
</body>
</html>
