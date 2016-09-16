<%@page import="businessoperationslayer.Applicants"%>
<%@page import="PLMethods.presentationLayerMethods"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <title>Report</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <link href="home.css" rel="stylesheet" type="text/css" />
    </head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <body>
        <div class="container ">
            <div class="row">
                <div class="col-md-12 col-sm-6 text-center" id=welcome1>
                    ----------------------------------
                </div>
            </div>
            <div class="row"> 
                <div class="col-md-12 col-sm-5 text-center" id="welcome2">Applicant Report</div>
            </div>

            <div class="row">
                <jsp:include page="nav.jsp" />
                <div class="col-md-12 col-sm-5 col-xs-12">

                    <h1 class="btn2">Analysis</h1>
                    <h4 class="text-primary">*Ranked From Most Eligible to Least Eligible</h4>
                    <div class="table-responsive">

                        <table  class="table" border="1"  >
                            <tr>
                                <th >ID #</th>
                                <th>Name</th>
                                <th>Skill Score</th>
                                <th>Exp/Qualification Score</th>
                                <th>Total Score</th>
                                <th>View</th>
                            </tr>
                            <%   presentationLayerMethods plm = new presentationLayerMethods();
                                for (int i = 0; i < plm.getUserEvaluationAll().size(); i++) {

                            %>
                            <tr>
                                <td class="danger"><%=   plm.getUserEvaluationAll().get(i).getApplicantID()%></td>
                                <%   Applicants app = new Applicants();
                                    app.setAppID(plm.getUserEvaluationAll().get(i).getApplicantID());
                                %>
                                <td class="success"><%=    plm.getApplicants(app).get(0).getName()%></td>
                                <td class="success"><%=   plm.getUserEvaluationAll().get(i).getSkillScore()%></td>
                                <td class="success"><%=   plm.getUserEvaluationAll().get(i).getExpQuaScore()%></td>
                                <td class="info class">.<%=   plm.getUserEvaluationAll().get(i).getFinalScore()%></td>
                                <td class="panel-warning"> <form method="GET" action="profile.jsp"> 
                                    <input type="hidden" class="form-control" name="appid" id="appid" value= <%= plm.getUserEvaluationAll().get(i).getApplicantID() %> >
                                    <button type="submit" class="btn btn-danger">View </button>
                                    </form> 
                                    </td>
                            </tr>
                            <%
                                }
                            %>
                        </table>

                    </div>


                    <br> <input size="50" type="submit" value="Print Reports Page"
                                class="btn5" onClick="window.print()" /> <br> <br> <br>
                </div>
                </body>
                <footer>  Copyrights 2016 Jeewantha Abayakoon </footer>
            </div>
</html>