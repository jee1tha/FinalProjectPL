<%@page import="PLMethods.presentationLayerMethods"%>
<%@page import="businessoperationslayer.Job"%>
<%@page language="java"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <title>Vacancies</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <link href="home.css" rel="stylesheet" type="text/css" />


        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <body>
        <div class="container ">
            <div class="row">
                <div class="col-md-12 col-sm-6" id=welcome1>
                    <marquee>A little bit more to become a member !!</marquee>
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
            <div id=bodyleft>
                <div class="row">

                    <div class="col-md-6 col-sm-3 panel-group"  >
                        <div class="panel panel-info">
                            <div class="panel-body">

                                <h2 >
                                    Available Vacancies 
                                </h2> <form method="Post " action ="jobsServlet" >
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
                                    <%
                                        
                                       
                                        %>
                                        
                                         <input type="hidden" name="jobid" value="1"> 
                                    </input>
                                    </table>
                                    <input type='submit' class="btn btn-success" value="Submit" id="btnLogin">
                                </form>

                            </div>
                        </div>



                    </div>
                </div>
            </div>

            <br>
            </body>
            </head>
            <footer>  © Copyrights 2016 Project InGrow </footer>
        </div>
</html>