<%-- 
    Document   : adminToolServlet
    Created on : Sep 18, 2016, 1:05:16 AM
    Author     : VABAYJE
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<doctype html>
<html>
<head>
            <%
            String username = (String)session.getAttribute("username");
            if(username != null){
                String type = (String) session.getAttribute("role");
            if( type.equals("admin" )){
                %>
                 <Script >alert('Not Allowed. '); 
                    window.location = "index.jsp";</Script>
                <%
            }if( type.equals("user")){
 %>
                 <Script >alert('Not Allowed. '); 
                    window.location = "index.jsp";</Script>
                <%
}
}else{
 %>
                 <Script >alert('Not Authenticated. Please Login!'); 
                    window.location = "login.jsp";</Script>
                <%
}
            %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link href="home.css" rel="stylesheet" type="text/css" />

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Tools</title>

</head>

<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
 <script >
          $(document).ready(function () {
        $(".nav li").removeClass("active"); 
        $('#adminTools').addClass('active');
       
    });
        </script>
	<div class="container">
        <div class="row">
        <div class="col-md-12 col-sm-6" id=welcome1>
		<marquee>Admin Tools</marquee>
        </div>
        </div>
    <div class="row">
           <jsp:include page="ingrowHeader.jsp" />
        
         </div>
	

 
	  <jsp:include page="nav.jsp" />
    <div class="col-md-1 col-sm-1 " >    
    
      
    </div>

    
    <div class="col-md-1 col-sm-1 " >    
        
    </div>
      
      
   
       <div class="row">
            <div class="col-md-12 col-sm-6  " id=welcome2  >Admin Tools 
            </div>
         </div>
    <div class="row">
        <div class="col-md-2 col-sm-1 panel-group"  >
        </div>

        <div class="col-md-8 col-sm-4 panel-group"  >
             <div class="panel panel-danger text-center">
                 <div class="panel-body"> <h3> What would you like to do ? </h3> <h6> Please be informed that the Training process might take long depending on the server performance</h6></div>
                 <div class="form-group">
                  <form method="Post " action="adminToolServlet"  >
                 <div class="checkbox">
  <label><input type="checkbox" name="skills"  value="trainSkills">Train Skill Artificial Neural Network</label>
</div>
<div class="checkbox">
  <label><input type="checkbox" name="expQua" value="trainExpQua">Train Experience/Qualification Artificial Neural Network</label>
</div>
<div class="checkbox ">
  <label><input type="checkbox" name="reEvaluate" value="reEvaluate" >Re-Evaluate all Applicants</label>
</div>
             </div>
               <button type="submit" class="btn btn-success">Submit</button>
    <a href="index.jsp" class="btn btn-danger">Cancel </a>
                  </form>
                  <br>
                  <br>
         </div>
     <div class="col-md-2 col-sm-1 panel-group"  >
     </div>
    
	
</div>

<footer> Copyrights 2016 InGrow </footer>
</div>
	
</body>
</html>

