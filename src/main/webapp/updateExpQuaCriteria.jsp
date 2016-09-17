<%-- 
    Document   : updateExpQuaCriteria
    Created on : Sep 17, 2016, 6:33:44 PM
    Author     : VABAYJE
--%>
<%@page import="businessoperationslayer.Applicants"%>
<%@page import="PLMethods.presentationLayerMethods"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <title>Update Job Criteria</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <link href="home.css" rel="stylesheet" type="text/css" />
    </head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <body>
        <div class="container ">
            <div class="row">
                <div class="col-md-12 col-sm-6 text-center" id=welcome1>
                    Update Vacancy Criteria : Skills ,Experience, Qualifications
                </div>
            </div>
            <div class="row"> 
                <div class="col-md-12 col-sm-5 text-center" id="welcome2">Update Criteria </div>
            </div>

            <div class="row">
                <jsp:include page="nav.jsp" />
                <div class="col-md-12 col-sm-5 col-xs-12">

                    <h1 class="btn2">Experience</h1>

                    <div class="table-responsive">

                        <table  class="table" border="1"  >
                            <tr>
                                <th >Experience ID #</th>
                                <th>Organization</th>
                                <th> Post </th>
                               <th> Eligibility for Criteria </th>      

                            </tr>
                            <%
                                int arraysizeExp = 0;
                                presentationLayerMethods plm = new presentationLayerMethods();
                                for (int i = 0; i < plm.getExpAll().size(); i++) {
                                    arraysizeExp++;
                            %><form action=updateExpQuaCriteriaServlet method="POST" >
                                <tr>
                                    <td class="danger"> <input type="text" size="1" class="form-control" name="txtExp<%= i%>" id="txtExpID<%= i%>" value=<%= plm.getExpAll().get(i).getExpid() %> disabled > 
                                    </td>
                                <input type="hidden" size="1" class="form-control" name="txtExpID<%= i%>" id="txtExpID<%= i%>" value=<%= plm.getExpAll().get(i).getExpid() %>  >
                                <td class="success"><input type="text" size="2" class="form-control" name="txtOrg<%= i%>" id="txtOrgName<%= i%>" value= <%=  plm.getExpAll().get(i).getOrganization() %> disabled ></td>
                                                                <td class="success"><input type="text" size="2" class="form-control" name="txtPost<%= i%>" id="txtPost<%= i%>" value= <%=  plm.getExpAll().get(i).getPost() %> disabled ></td>

                                <td  class="success" >
                                    <select  name="newExpEligibility<%= i%>" class="selectpicker">
                                        <%
                                            if (plm.getExpAll().get(i).isExeligibility() == true) {
                                        %>
                                        <optgroup label="Current">
                                            <option  value="true">True</option>

                                        </optgroup>
                                        <optgroup label="Change to">
                                            <option value="false">false</option>

                                        </optgroup>
                                        <% } else {
                                        %>
                                        }
                                        <optgroup label="Current">
                                            <option  value="false">False</option>

                                        </optgroup>
                                        <optgroup label="Change to">
                                            <option value="true">true</option>

                                        </optgroup>
                                        <% } %>
                                    </select>

                                </td>


                                </tr>

                                <%
                                    }
                                %>
                        </table>
                        <input type="hidden" class="form-control" name="arraysizeExp" id="arraysizeExp" value= <%=arraysizeExp%> >
                    </div>
                    
                

                    <h1 class="btn2">Qualifications</h1>

                    <div class="table-responsive">

                        <table  class="table" border="1"  >
                            <tr>
                                <th >Qualification ID #</th>
                                <th>Institute</th>
                                <th> Name of Qualification </th>
                                <th> Final Grade </th>
                               <th> Eligibility for Criteria </th>      

                            </tr>
                            <%
                                int arraysizeQua = 0;
                                
                                for (int s = 0; s < plm.getQualificationsAll().size(); s++) {
                                    arraysizeQua++;
                            %>
                                <tr>
                                    <td class="danger"> <input type="text" size="1" class="form-control" name="txtQua<%= s%>" id="txtQua<%= s%>" value=<%= plm.getQualificationsAll().get(s).getId() %> disabled > 
                                    </td>
                                <input type="hidden" size="1" class="form-control" name="txtQuaID<%= s%>" id="txtQuaID<%= s%>" value=<%= plm.getQualificationsAll().get(s).getId() %>  >
                                <td class="success"><input type="text" size="2" class="form-control" name="txtInstitute<%= s%>" id="txtInstitute<%= s%>" value= <%=  plm.getQualificationsAll().get(s).getInstitute() %> disabled ></td>
                                                                <td class="success"><input type="text" size="2" class="form-control" name="txtQName<%= s%>" id="txtQName<%= s%>" value= <%=  plm.getQualificationsAll().get(s).getName() %> disabled ></td>
                                                                <td class="success"><input type="text" size="2" class="form-control" name="txtQGrade<%= s%>" id="txtQGrade<%= s%>" value= <%=  plm.getQualificationsAll().get(s).getQClass() %> disabled ></td>

                                <td  class="success" >
                                    <select  name="newQuaEligibility<%= s%>" class="selectpicker">
                                        <%
                                            if (plm.getQualificationsAll().get(s).isQualificationsEligibility() == true) {
                                        %>
                                        <optgroup label="Current">
                                            <option  value="true">True</option>

                                        </optgroup>
                                        <optgroup label="Change to">
                                            <option value="false">false</option>

                                        </optgroup>
                                        <% } else {
                                        %>
                                        }
                                        <optgroup label="Current">
                                            <option  value="false">False</option>

                                        </optgroup>
                                        <optgroup label="Change to">
                                            <option value="true">true</option>

                                        </optgroup>
                                        <% } %>
                                    </select>

                                </td>


                                </tr>

                                <%
                                    }
                                %>
                        </table>
                        <input type="hidden" class="form-control" name="arraysizeQua" id="arraysizeQua" value= <%=arraysizeQua%> >
                    </div>



                    <br> <input size="50" type="submit" value="Print Skills Page"
                                class="btn btn-danger" onClick="window.print()" />  
                    <input type='submit' class="btn btn-success" value="Submit" >
                    <a href="index.jsp" class="btn btn-default"> Cancel </a><br> <br> <br>
                    </form>
                </div>
                </body>
                <footer>  Copyrights 2016 Jeewantha Abayakoon </footer>
            </div>
</html>