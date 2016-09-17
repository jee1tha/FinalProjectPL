<%-- 
    Document   : profile.jsp
    Created on : Sep 17, 2016, 10:11:35 AM
    Author     : VABAYJE
--%>
<%@page import="PLMethods.presentationLayerMethods"%>
<%@page import="businessoperationslayer.Applicants"%>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
         <%
            String username = (String)session.getAttribute("username");
            if(username != null){
                String type = (String) session.getAttribute("role");
        if( type.equals("user")){
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

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Profile </title>
    </head>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <%
        int z = Integer.parseInt(request.getParameter("appid"));

        Applicants app = new Applicants();
        app.setAppID(z);

        presentationLayerMethods pl = new presentationLayerMethods();

    %>
    <body>
        <div class="container ">
            <div class="row">
                <div class="col-md-12 col-sm-6" id=welcome1>
                    <marquee>Viewing User Profile </marquee>
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
            <div class="row ">
                <div class="col-md-12 col-sm-6 pagination-centered "  > <h1 style="font-family: 'Oswald', Oswald;"> <b> <%= pl.getApplicants(app).get(0).getName()%>  </b> </h1>
                </div>
            </div>
        </td>
        <div id=bodymid>
            <form id="userinformationform" >
                <div class="row">
                    <div class="col-md-6 col-sm-3 ">
                        <div class="panel-group"  >
                            <div class="panel panel-info">
                                <div class="panel-body">
                                    <h3>Biography  </h3>

                                    <p>
                                        <span class="glyphicon glyphicon-user"> Username </span>  <b>  <input type='text'  class="form-control" name='txtUsername'
                                                                                                              id='txtUsername' value=<%= pl.getApplicants(app).get(0).getUsername()%> disabled> </input>  </b>
                                    </p>
                                    <p>
                                        <span class="glyphicon glyphicon-envelope"> Email </span> <b>   <input type='text'  class="form-control" name='txtEmail'
                                                                                                               id='txtEmail' value= <%= pl.getApplicants(app).get(0).getEmail()%>  disabled> </input>  </b>
                                    </p>
                                    <p>
                                        <span class="glyphicon glyphicon-credit-card"> NIC Number </span>  <b>  <input type='text'  class="form-control" name='txtNicNo'
                                                                                                                       id='txtNicNo' value= <%= pl.getApplicants(app).get(0).getNicNo()%>  disabled> </input>   </b>
                                    </p>
                                    <p>
                                        <span class="glyphicon glyphicon-phone-alt"> Contact Number</span>  <b>  <input type='text'  class="form-control" name='txtContact'
                                                                                                                        id='txtContact' value= <%= pl.getApplicants(app).get(0).getContactNo()%>  disabled> </input>  </b>
                                    </p>
                                    <p>
                                        <span class="	glyphicon glyphicon-calendar"> Birth date</span>  <b>  <input type='text'  class="form-control" name='txtbday'
                                                                                                                    id='txtbday' value= <%= pl.getApplicants(app).get(0).getBirthDate()%>  disabled> </input>  </b>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-3 ">
                        <div class="panel-group"  >
                            <div class="panel panel-success">
                                <div class="panel-body">
                                    <h3>Skilled in,</h3>


                                    <p>
                                        <span class="glyphicon glyphicon-hand-right"></span>  <b>  <input type='text'  class="form-control" name='txtbday'
                                                                                                       id='txtbday' value= <%= pl.getApplicantSkills(app).get(0).getSkill()%> disabled> </input> </b>
                                    </p>


                                    <p>
                                        <span class="glyphicon glyphicon-hand-right"></span>  <b> <input type='text'  class="form-control" name='txtbday'
                                                                                                      id='txtbday' value=  <%= pl.getApplicantSkills(app).get(1).getSkill()%> disabled> </input> </b>
                                    </p>

                                    <p>
                                        <span class="glyphicon glyphicon-hand-right"></span><b>  <input type='text'  class="form-control" name='txtbday'
                                                                                                     id='txtbday' value=  <%= pl.getApplicantSkills(app).get(2).getSkill()%> disabled> </input> </b>
                                    </p>
                                    <p>
                                        <span class="glyphicon glyphicon-hand-right"></span>  <b> <input type='text'  class="form-control" name='txtbday'
                                                                                                      id='txtbday' value=  <%= pl.getApplicantSkills(app).get(3).getSkill()%> disabled> </input> </b>
                                    </p>
                                    <p>
                                        <span class="glyphicon glyphicon-hand-right"></span> <b>  <input type='text'  class="form-control" name='txtbday'
                                                                                                         id='txtbday' value=  <%= pl.getApplicantSkills(app).get(4).getSkill()%> disabled>  </input>  </b>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel-group"  >
                    <div class="panel panel-danger">
                        <div class="panel-body">
                            <div class="row ">
                                <div class=" col-md-12 col-sm-2 text-left ">
                                    <h3>Most Valued Qualification </h3>
                                </div>
                            </div>
                            <div class="row">
                                <div class=" col-md-4 col-sm-2 ">
                                    <p>
                                        <label for="txtInstitute"> <span class="	glyphicon glyphicon-book"> Institute</span>    </label>
                                       <b>  <input type='text' name='txtInstitute'
                                               class="form-control" id='txtInstitute' value=<%= pl.getApplicantQualifications(app).get(0).getInstitute() %>  disabled> </input> </b>
                                    </p>
                                </div>
                                <div class=" col-md-4 col-sm-2 ">
                                    <p>
                                        <label for="txtQualification"> <span class="	glyphicon glyphicon-book"> Qualification Name</span>   </label>
                                       <b>  <input type='text' name='txtQualification'
                                               class="form-control" id='txtQualification' value=<%= pl.getApplicantQualifications(app).get(0).getName() %> disabled> </input> </b>
                                    </p>
                                </div>
                                <div class=" col-md-4 col-sm-2 ">
                                    <p>
                                        <label for="txtDuration"> <span class="glyphicon glyphicon-pencil"> Final Grade</span>  </label>
                                         <b> <input type='text' name='txtDuration'
                                               class="form-control" id='txtDuration'  value=<%= pl.getApplicantQualifications(app).get(0).getQClass() %> disabled> </input>  </b>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel-group"  >
                    <div class="panel panel-danger">
                        <div class="panel-body">
                            <div class="row ">
                                <div class=" col-md-12 col-sm-2 text-left ">
                                    <h3>Most Valued Experience </h3>
                                </div>
                            </div>
                            <div class="row">
                                <div class=" col-md-4 col-sm-2 ">
                                    <p>
                                        <label for="txtOrganization"> <span class="glyphicon glyphicon-open-file"> Organization </span>  </label>
                                        <b> <input type='text' name='txtOrganization'
                                               class="form-control" id='txtOrganization' value=<%= pl.getApplicantExp(app).get(0).getOrganization() %> disabled> </input> </b>
                                    </p>
                                </div>
                                <div class=" col-md-4 col-sm-2 ">
                                    <p>
                                        <label for="txtPost"><span class="glyphicon glyphicon-file"> Post </span> </label>
                                        <b> <input type='text' name='txtPost'
                                               class="form-control" id='txtPost' value=<%= pl.getApplicantExp(app).get(0).getPost() %> disabled> </input> </b>
                                    </p>
                                </div>
                                <div class=" col-md-4 col-sm-2 ">
                                    <p>
                                        <label for="txtDuration"> <span class="glyphicon glyphicon-time"> Duration </span>  </label>
                                       <b>  <input type='number' name='txtDuration'
                                               class="form-control" id='txtDuration' value=<%= pl.getApplicantExp(app).get(0).getDuration() %> disabled> </input> </b>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="form-group has-success has-feedback">
                </div>
            </form>
            <br> <input size="50" type="submit" value="Print Profile Page"
                        class="btn btn-danger" onClick="window.print()" /> <br> <br> <br>
        </div>
        <footer> Copyrights 2016 InGrow </footer>
    </div>
</body>
</html>