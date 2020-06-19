<%-- 
    Document   : login
    Created on : 3 May, 2020, 1:00:31 PM
    Author     : ankit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Welcome</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--===============================================================================================-->	
        <link rel="icon" type="image/png" href="img/icons/favicon.ico"/>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
      
        <link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
        
        <link rel="stylesheet" type="text/css" href="css/util.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <!--===============================================================================================-->
    </head>
    <body>
<%
 response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);
session.invalidate();
%>

        <div class="container-login100">
            <div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
                <form class="login100-form validate-form" method='POST' action='/staysafe_new/login'>
                    <div class="text-center">
                        <img src="img/Staysafe security (5).png" width="200px" height="200px" style="margin-top: -50px; border-radius: 60px;">
                    </div>

                    <span class="login100-form-title p-b-37">
                        Sign In
                    </span>
                    <div class="wrap-input100 validate-input m-b-20" data-validate="Enter Your roll Number">
                        <input class="input100" type="text" name="rollnumber" name="rollnumber" id="rollnumber" placeholder="Enter Roll Number">
                        <span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input m-b-20" data-validate="Enter Your Password">
                        <input class="input100" type="password" name="password" id="password" placeholder="Password">
                        <span class="focus-input100"></span>
                    </div>

                    <div class="container-login100-form-btn">
                        <button class="login100-form-btn">
                            Sign In
                        </button>
                    </div>

                    <div style="margin-top: 20px;">
                        <hr class="sidebar-divider my-0">
                    </div>
                    <div class="row">
                        <div class="float-left" style="margin-top: 10px;">
                            <a href="forgot-password.jsp" class="txt2 hov1">
                                Forgot Password
                            </a>
                        </div>
                        <div class="float-right" style="margin-top: 10px; margin-left: 130px;">
                            <a href="aboutus.jsp" class="txt2 hov1">
                                About Us
                            </a>
                        </div>
                    </div>
                </form>


            </div>
        </div>



        <div id="dropDownSelect1"></div>


        <!--===============================================================================================-->
        <script src="vendor/jq/jquery/jquery-3.2.1.min.js"></script>
     
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        
        <script src="js/main.js"></script>
    </body>
</html>