<%-- 
    Document   : forgot-password
    Created on : 3 May, 2020, 1:01:06 PM
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
        <!--===============================================================================================
                <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
        <!--===============================================================================================
                <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
        <!--===============================================================================================
                <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
        <!--===============================================================================================
                <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
        <!--===============================================================================================
                <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
        <!--===============================================================================================
                <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="css/util.css">
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <!--===============================================================================================-->
    </head>
    <body>


        <div class="container-login100">
            <div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
                <form action='/staysafe_new/forgot' method='POST' class="login100-form validate-form">
                    <div class="text-center">
                        <img src="img/Staysafe security (5).png" width="200px" height="200px" style="margin-top: -50px; border-radius: 60px;">
                    </div>

                    <span class="login100-form-title p-b-37">
                        Forgot Password
                    </span>
                    <div class="wrap-input100 validate-input m-b-20" data-validate="Enter Roll Number">
                        <input class="input100" type="text" name="rollnumber" id="rollnumber" placeholder="Enter Your Roll Number">
                        <span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input m-b-20" data-validate="Enter Key">
                        <input class="input100" type="text" name="Key" id="Key" placeholder="Enter Your Key">
                        <span class="focus-input100"></span>
                    </div>



                    <div class="container-login100-form-btn">
                        <button class="login100-form-btn" style="text-decoration: none;">
                            Send
                        </button>
                    </div>

                    <div style="margin-top: 20px;">
                        <hr class="sidebar-divider my-0">
                    </div>
                    <div class="row" style="margin-top: 10px;">
                        <div class="text-left" >
                            <a href="login.jsp" class="txt2 hov1">
                                Sign In
                            </a>
                        </div>
                        <div class="text-right" style="margin-left: 200px;" >
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
        <!--===============================================================================================
                <script src="vendor/animsition/js/animsition.min.js"></script>
        <!--===============================================================================================
                <script src="vendor/bootstrap/js/popper.js"></script>-->
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================
                <script src="vendor/select2/select2.min.js"></script>
        <!--===============================================================================================
                <script src="vendor/daterangepicker/moment.min.js"></script>
                <script src="vendor/daterangepicker/daterangepicker.js"></script>
        <!--===============================================================================================
                <script src="vendor/countdowntime/countdowntime.js"></script>
        <!--===============================================================================================-->
        <script src="js/main.js"></script>

    </body>
</html>