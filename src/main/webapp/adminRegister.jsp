<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
      <title>Admin Register</title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
      <link href="home.css" rel="stylesheet" type="text/css" />
   </head>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
   <body>
      <div class="container ">
         <div class="row">
            <div class="col-md-12 col-sm-6 text-center" id=welcome1>
               <marquee>A little bit more to become a member !!</marquee>
            </div>
         </div>
         <div class="row">
            <div class="col-md-9 col-sm-5" id="welcome2">InGrow Job Application Management</div>
         
         </div>
            <jsp:include page="nav.jsp" />
         <div id=bodyleft>
            <div class="row">
               <div class=" col-md-12 col-sm-3 ">
                  <div id=transparent>
                     <h1>Admin Registration</h1>
                  </div>
                  <form method="Post" action="AddAdminConfirm.jsp">
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
            <td><label for="txtEmpNo"> EmpNo </label></td>
            <td><input type='text' name='txtEmpNo' class="form-control" placeholder="enter NICNo" id='txtEmpNo' required> </input></td>
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
            </input> <a href="index.jsp" class="btn btn-danger">Cancel </a> </input>
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
   </body>
   <footer>  Copyrights 2016 Project InGrow </footer>
   </div>
</html>