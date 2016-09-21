
<%@page contentType="text/html" pageEncoding="UTF-8"%>
   
    <!DOCTYPE html>
<html lang="en">
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
      <title>Register User</title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link href="home.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
   </head>
     <% if(session.getAttribute("registration") !=null){
                String reg = (String)session.getAttribute("registration");;
                if(reg != null){
                if (reg == "successful" ){  
                    %>
                   
                    <Script >alert('Registration successful. Please Login'); </Script>
                    
                     
                    <%   session.setAttribute("registration", null);}  else{
%>
                         <Script > alert('Registration Failed. Please Try again'); </Script>
 <% session.setAttribute("registration", null); }    
}
                        }
%>
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
         <div id=bodyleft>
            <div class="row">
            
               <div class=" col-md-12 col-sm-3 ">
                 <jsp:include page="nav.jsp" />
                  <div id=transparent>
                     <h1>User Registration</h1>
                  </div>
                  <form method="Post" action="registerUserServlet">
                     <table width="200" border="0" cellpadding="5">
                        <tr>
                           <td><label for="txtUsername"> Username </label></td>
                           <td><input type='text'  class="form-control form-control expandable"  style="width: 250px" name='txtUsername' placeholder="enter  Username" id='txtUsername' required>
                              </input>
                           </td>
               </div>
               </tr>
               <tr>
               <td><label for="txtPassword"> Password </label></td>
               <td><input type='password' name='txtPassword' class="form-control" placeholder="enter  Password" id='txtPassword' required>
               </input>
               </td>
               </tr>
               <tr>
               <td><label for="txtConfirmPassword"> Confirm Password </label></td>
               <td><input type='password' name='txtConfirmPassword' class="form-control" placeholder="enter Password" id='txtPasswordConfirm' required>
               </input></td>
            </div>
            </tr>
            <tr>
            <td><label for="txtName"> Name </label></td>
            <td><input type='text' name='txtName' placeholder="enter Name" class="form-control"
               id='txtName' required> </input></td>
            </tr>
           <tr>
            <td><label for="txtbday"> Birth Date </label></td>
            <td><input type='date' name='txtbday' class="form-control" placeholder="enter birth date" id='txtbday' required> </input></td>
            </tr>
            <tr>
            <td><label for="txtNICNo"> NICNo </label></td>
            <td><input type='text' name='txtNICNo' class="form-control" placeholder="enter NICNo" id='txtNICNo' required> </input></td>
            </tr>
            <tr>
            <td><label for="txtEmail" class="control-label"> Email </label></td>
            <td><input type='email' name='txtEmail' class="form-control "	placeholder="enter Email" id='txtEmail'  required> </input></td>
            <div class="help-block with-errors"></div>
            </tr>
            <tr>
            <td><label for="txtContactNo"> Contact No </label></td>
            <td><input type='number' name='txtContactNo' class="form-control" placeholder="enter ContactNo" id='txtContactNo' required> </input></td>
            </tr>
            </table>
            <input type='submit' class="btn btn-success" value="Submit" id="btnLogin">
            </input> <a href="index.jsp" class="btn btn-default">Cancel </a> </input>
            </form>
         </div>
      </div>
      </div>
      <script type="text/javascript"
         src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
      <script type="text/javascript">
         $(function () {
             $("#btnLogin").click(function () {
                 var password = $("#txtPassword").val();
                 var confirmPassword = $("#txtPasswordConfirm").val();
                 if (password != confirmPassword) {
                     alert("Passwords do not match.");
                     return false;
                 }
                 return true;
             });
         });
      </script>
      <br>
   </body>
                            <script >
          $(document).ready(function () {
        $(".nav li").removeClass("active"); 
        $('#register').addClass('active');
       
    });
        </script>
   
   <footer>  © Copyrights 2016 Project InGrow </footer>
   </div>
</html>