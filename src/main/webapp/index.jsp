<%@page import="PLMethods.presentationLayerMethods"%>
<%@page import="businessoperationslayer.Job"%>
<%@page language="java"%>

<!DOCTYPE html>

<html lang="en">
<head>
    
<link href="home.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>

</head>

<body>
     <% if(session.getAttribute("registration") !=null){
                String reg = (String)session.getAttribute("registration");;
                if(reg != null){
                if (reg == "successful" ){  
                    %>
                   
                    <Script >alert('Registration successful. Please Login'); </Script>
                    
                     
                    <%  session.setAttribute("registration", null);}  else{
%>
                         <Script > alert('Registration Failed. Please Try again'); </Script>
 <% session.setAttribute("registration", null);}    
}
                        }
%>
        
    <script type=\"text/javascript\"> </script>

	<div class="container">
        <div class="row">
        <div class="col-md-12 col-sm-6" id=welcome1>
		<marquee>Welcome to InGrow. Your Automated Applicant Ranking System.</marquee>
        </div>
            
        </div>
          
    <div class="row">
	
    
        <jsp:include page="ingrowHeader.jsp" />
      
      
    </div>
     <div class="row">
     <div class="col-md-12 col-sm-6 " > 
     <jsp:include page="nav.jsp" />
      </div> 
     </div> 
    <div class="row">
        <div class="col-md-6 col-sm-3 panel-group"  >
             <div class="panel panel-info">
                 
                 <img src='banner.jpg' class='img-rounded' alt='Cinque Terre' width='550' height='520'>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
                         <script >
          $(document).ready(function () {
        $(".nav li").removeClass("active"); 
        $('#index').addClass('active');
       
    });
        </script>
</html>
