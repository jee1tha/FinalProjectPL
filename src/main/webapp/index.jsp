<%@page import="PLMethods.presentationLayerMethods"%>
<%@page import="businessoperationslayer.Job"%>
<%@page language="java"%>

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
		<marquee>Welcome to InGrow. Your Automated Applicant Ranking System.</marquee>
        </div>
        </div>
    <div class="row">
	<div class="col-md-12 col-sm-6 text-center" id= "welcome2">  InGrow - Intelligent Growth </div>
    

      
      
    </div>
     <div class="row">
     <div class="col-md-12 col-sm-6 " > 
     <jsp:include page="nav.jsp" />
      </div> 
     </div> 
    <div class="row">
        <div class="col-md-6 col-sm-3 panel-group"  >
             <div class="panel panel-info">
                 <div class="panel-body"> <h3> What is Project InGrow?</h3> </div>
             </div>
           
         </div>
       <div class="col-md-6 col-sm-3 panel-group"  >
         <div class="panel panel-info">
                <div class="panel-body">
                    
                    <h2 >
                        Available Vacancies 
                    </h2>
                        <%
                            presentationLayerMethods p = new presentationLayerMethods();
                            Job job = new Job();
                            job.setJobid(1); %>
                            <p  > <h4 class="bg-info"> <%
                            out.print(p.getJobInfo(job).get(0).getName());
                            %>
                            </h4>
                            </p>
                           <p  >
                            <%
                            out.print(p.getJobInfo(job).get(0).getJobDescription());
                            %>
                           </p>
        </div>
    </div>

</div>
	


<footer>  Copyrights 2016 InGrow </footer>
</div>
	
</body>
</html>
