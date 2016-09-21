
    <!DOCTYPE html>
<html lang="en">
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
            }if( type.equals("masteradmin")){
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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title> Job Application </title>

   </head>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
   <body>
      <div class="container ">
         <div class="row">
            <div class="col-md-12 col-sm-6" id=welcome1>
               <marquee>Enter your Information so we can evaluate you </marquee>
            </div>
         </div>
          <div class="row">
           <jsp:include page="ingrowHeader.jsp" />
          </div>
        
            <jsp:include page="nav.jsp" />
        
         <div id=bodymid>
              <div class="row">
            <div class="col-md-12 col-sm-6 pagination-centered " id=welcome2  > Add your Information  
            </div>
             
         </div>
            <form id="userinformationform" method="Post" action="applicationServlet">
               <div class="col-md-6 col-sm-3 ">
                  <div class="panel-group"  >
                     <div class="panel panel-info">
                        <div class="panel-body">
                           <h1>Add Skills  </h1>
                           <p>
                              Skill 1  <input type='text'  class="form-control" name='txtSkill1'
                                 placeholder="enter Skill 1" id='txtSkill1' required> </input> 
                           </p>
                           <p>
                              Skill 2  <input type='text' class="form-control" name='txtSkill2'
                                 placeholder="enter Skill 2" id='txtSkill2' required> </input>
                           </p>
                           Skill 3  <input type='text' name='txtSkill3'
                              placeholder="enter Skill 3" class="form-control" id='txtSkill3' required> </input>
                           <p>
                           <p>
                              Skill 4  <input type='text' name='txtSkill4'
                                 placeholder="enter Skill 4" class="form-control" id='txtSkill4' required> </input>
                           </p>
                           <p>
                              Skill 5  <input type='text' name='txtSkill5'
                                 placeholder="enter Skill 5" class="form-control" id='txtSkill5' required> </input>
                           </p>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="panel-group"  >
                  <div class="panel panel-success">
                     <div class="panel-body">
                        <h1>Add Your Most Valued Recent Work Experience</h1>
                        <div class="row">
                           <div class=" col-md-4 col-sm-2 ">
                              <p>
                                 <label for="txtOrganization"> Organization  </label>
                                 <input type='text' name='txtOrganization'
                                    placeholder="enter organization" class="form-control" id='txtOrganization' required> </input>
                              </p>
                           </div>
                           <div class=" col-md-4 col-sm-2 ">
                              <p>
                                 <label for="txtPost"> Post  </label>
                                 <input type='text' name='txtPost'
                                    placeholder="enter Post" class="form-control" id='txtPost' required> </input>
                              </p>
                           </div>
                           <div class=" col-md-4 col-sm-2 ">
                              <p>
                                 <label for="txtDuration"> Duration  </label>
                                 <input type='number' name='txtDuration'
                                    placeholder="enter duration" class="form-control" id='txtDuration' required> </input>
                              </p>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="panel-group"  >
                  <div class="panel panel-danger">
                     <div class="panel-body">
                        <h1>Add Your Most Valued Educational Qualification </h1>
                        <div class="row">
                           <div class=" col-md-4 col-sm-2 ">
                              <p>
                                 <label for="txtInstitute"> Institute  </label>
                                 <input type='text' name='txtInstitute'
                                    placeholder="enter Institute" class="form-control" id='txtInstitute' required> </input>
                              </p>
                           </div>
                           <div class=" col-md-4 col-sm-2 ">
                              <p>
                                 <label for="txtQualification">  Name  </label>
                                 <input type='text' name='txtQualification'
                                    placeholder="enter Qualification Name" class="form-control" id='txtQualification' required> </input>
                              </p>
                           </div>
                           <div class=" col-md-4 col-sm-2 ">
                              <p>
                                 <label for="txtClass"> Final Grade </label>
                                 <input type='text' name='txtClass'
                                    placeholder="enter Final Grade " class="form-control" id='txtClass' required> </input>
                              </p>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <br> <input type='submit' class="btn" value="Submit"
                  id="btnSkills"> </input> <a href="index.jsp" class="btn">Cancel
               </a> </input>
               </p>
               <div class="form-group has-success has-feedback">
               </div>
            </form>
         </div>
         <footer>  Copyrights 2016 InGrow </footer>
      </div>
                            <script >
          $(document).ready(function () {
        $(".nav li").removeClass("active"); 
        $('#application').addClass('active');
       
    });
        </script>
   </body>
</html>