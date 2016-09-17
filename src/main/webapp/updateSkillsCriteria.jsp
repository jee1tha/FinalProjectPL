<%-- 
    Document   : updateCriteria
    Created on : Sep 17, 2016, 1:26:37 PM
    Author     : VABAYJE
--%>

<%@page import="businessoperationslayer.Applicants"%>
<%@page import="PLMethods.presentationLayerMethods"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <title>Update Job Criteria</title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link href="home.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
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

                    <h1 class="btn2">Skills</h1>

                    <div class="table-responsive">

                        <table  class="table" border="1"  >
                            <tr>
                                <th >Skill ID #</th>
                                <th>Name</th>
                                <th> Eligibility</th>
                        
                            </tr>
                            <%
                                int arraysize = 0;
                                presentationLayerMethods plm = new presentationLayerMethods();
                                for (int i = 0; i < plm.getSkillAll().size(); i++) {
                                    arraysize++;
                            %><form action=updateSkillsCriteriaServlet method="POST" >
                                <tr>
                                    <td class="danger"> <input type="text" size="1" class="form-control" name="txtSkill<%= i%>" id="txtSkillID<%= i%>" value=<%= plm.getSkillAll().get(i).getSkillID()%> disabled > 
                                    </td>
                                        <input type="hidden" size="1" class="form-control" name="txtSkillID<%= i%>" id="txtSkillID<%= i%>" value=<%= plm.getSkillAll().get(i).getSkillID()%>  >
                                    <td class="success"><input type="text" size="2" class="form-control" name="txtSkillName<%= i%>" id="txtSkillName<%= i%>" value= <%=  plm.getSkillAll().get(i).getSkill()%> disabled ></td>
                                    <td  class="success" >
                                        <select  name="newEligibility<%= i%>" class="selectpicker">
                                            <%  
                                                if( plm.getSkillAll().get(i).isSeligibility() == true ){
                                                %>
                                            <optgroup label="Current">
                                                <option  value="true">True</option>
                                               
                                            </optgroup>
                                            <optgroup label="Change to">
                                                <option value="false">false</option>
                                               
                                            </optgroup>
                                            <% }else{
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
<input type="hidden" class="form-control" name="arraySize" id="arraysize" value= <%=arraysize%> >
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