<%-- 
    Document   : showpass
    Created on : 15 May, 2020, 2:30:57 PM
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
        <!--===============================================================================================-->
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
        String login=(String)session.getAttribute("pass");
       if(login==null){
	response.sendRedirect("login.jsp");
}

%>
        <div class="container-login100">
            <div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
                <form action='/staysafe_new/sendSMS' method="POST" class="login100-form validate-form" >
                    <div class="text-center">
                        <img src="img/Staysafe security (5).png" width="200px" height="200px" style="margin-top: -50px; border-radius: 60px;">
                    </div>

                    <span class="login100-form-title p-b-37">
                        Show Password
                    </span>
                    <span class="hint">
                        Your Password
                    </span>
                    <div class="wrap-input100 m-b-20">
                        <input class="input100 disabled" type="text" name="Password" id="Password" value=${sessionScope.pass}>
                    </div>

                    <div class="wrap-input100 validate-input m-b-20" data-validate="Enter Your Mobile Number">
                        <input class="input100" type="text" name="Phonenumber" id="Phonenumber" placeholder="Enter Your Mobile Number" maxlength="10" min="10">
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

                        <div class="text-right" >
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
        <!--===============================================================================================-->
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

        <script src="js/main.js"></script>

    </body>
</html>