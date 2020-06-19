<%-- 
    Document   : notice
    Created on : 25 Mar, 2020, 5:34:35 PM
    Author     : ankit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <title>E-learning</title>
        <link rel="icon" type="image/png" href="img/icons/favicon.ico"/>

        <!-- Custom fonts for this template-->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css"/>

        <!-- Custom styles for this template-->
        <link href="css/sb-admin-2.min.css" rel="stylesheet">
        <link href="css/e-learning.css" rel="stylesheet">

    </head>

    <body id="page-top">
<%
 response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);
        String login=(String)session.getAttribute("Status");
       if(login==null){
	response.sendRedirect("login.jsp");
}

%>

        <!-- Page Wrapper -->
        <div id="wrapper">

            <!-- Sidebar -->
            <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

                <!-- Sidebar - Brand -->
                <a class="sidebar-brand d-flex align-items-center justify-content-center" href="#">
                    <div class="sidebar-brand-icon">
                        <img src="img/logo2.jpg" class="img-fluid" style="border-radius: 50px; margin-top: 10px; margin-bottom: 10px;" width="65" height="65">
                    </div>
                    <div class="sidebar-brand-text mx-3">Staysafe</div>
                </a>

                <hr class="sidebar-divider d-none d-md-block">

                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">
                        <i class="fas fa-fw fa-tachometer-alt"></i>
                        <span>Parent Module</span></a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="/staysafe_new/userDetail">
                        <i class="far fa-user-circle"></i>
                        <span>User Profile</span>
                    </a>
                </li>


                <li class="nav-item">
                    <a class="nav-link" href="result.jsp">
                        <i class="fas fa-poll"></i>
                        <span>Result</span></a>
                </li>

                <li class="nav-item ">
                    <a class="nav-link" href="fees.jsp">
                        <i class="fa fa-credit-card"></i>
                        <span>Fees</span></a>
                </li>


                <li class="nav-item">
                    <a class="nav-link" href="attendence.jsp">
                        <i class="fa fa-bell"></i>
                        <span>Attendence</span></a>
                </li>


                <li class="nav-item">
                    <a class="nav-link" href="E-library.jsp">
                        <i class="fas fa-book-reader"></i>
                        <span>E-library</span>
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="E-learning.jsp">
                        <i class="fas fa-laptop"></i>
                        <span>E-learning</span>
                    </a>
                </li>


                <li class="nav-item">
                    <a class="nav-link" href="aboutus.jsp">
                        <i class="fas fa-code"></i>
                        <span>About US</span></a>
                </li> 

                <li class="nav-item">
                    <a class="nav-link" href="#" data-toggle="modal" data-target="#logoutModal">
                        <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                        Logout
                    </a>
                </li>


                <!-- Sidebar Toggler (Sidebar) -->
                <div class="text-center d-none d-md-inline">
                    <button class="rounded-circle border-0" id="sidebarToggle"></button>
                </div>

            </ul>
            <!-- End of Sidebar -->
            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">

                <!-- Main Content -->
                <div id="content">

                    <!-- Topbar -->
                    <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                        <!-- Sidebar Toggle (Topbar) -->
                        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                            <i class="fa fa-bars"></i>
                        </button>

                        <a class="navbar-brand active" href="#">E-library</a>

                        <!-- Topbar Navbar -->
                        <ul class="navbar-nav ml-auto">

                            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                            <li class="nav-item dropdown no-arrow d-sm-none">


                                <!-- Nav Item - User Information -->
                            <li class="nav-item dropdown no-arrow">
                                <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown"
                                   aria-haspopup="true" aria-expanded="false">
                                    <span class="mr-2 d-none d-lg-inline text-gray-600 small">${sessionScope.Name}</span>
                                    <img class="img-profile rounded" src="img/icons/LOGO.png">
                                </a>
                                <!-- Dropdown - User Information -->
                                <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                                    <a class="dropdown-item" href="/staysafe_new/userDetail">
                                        <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Profile
                                    </a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                        <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Logout
                                    </a>
                                </div>
                            </li>

                        </ul>

                    </nav>
                    <!-- End of Topbar -->

                    <!-- Begin E-books section -->
                    <div class="container-fluid">
                        <!--row content-->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card shadow animate__animated animate__fadeInUp" style="height: 780px;">
                                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                        <h6 class="m-0 font-weight-bold">E-Video</h6>

                                    </div>

                                    <!--card Body-->
                                    <div class="card-body" style="overflow: hidden; overflow-y: scroll;">
                                        <!--start books show-->
                                        <div class="row justify-content-center">
                                            <div class="col-md-2 show">
                                                <img src="img/youtube image/image1.png" class="img-fluid" data-toggle="modal" data-target="#exampleModalCenter">
                                            </div>
                                            <div class="col-md-2 show">
                                                <img src="img/youtube image/image2.png" class="img-fluid" data-toggle="modal" data-target="#exampleModalCenter1">
                                            </div>
                                            <div class="col-md-2 show">
                                                <img src="img/youtube image/image3.png" class="img-fluid" data-toggle="modal" data-target="#exampleModalCenter2">
                                            </div>
                                            <div class="col-md-2 show">
                                                <img src="img/youtube image/image4.png" class="img-fluid" data-toggle="modal" data-target="#exampleModalCenter3">
                                            </div>
                                            <div class="col-md-2 show">
                                                <img src="img/youtube image/image5.png" class="img-fluid" data-toggle="modal" data-target="#exampleModalCenter4">
                                            </div>
                                            <div class="col-md-2 show">
                                                <img src="img/youtube image/image6.png" class="img-fluid" data-toggle="modal" data-target="#exampleModalCenter5">
                                            </div>

                                        </div>
                                        <div style="margin: 5px;">
                                            <hr class="sidebar-divider my-0">
                                        </div>
                                        <div class="row justify-content-center">
                                            <div class="col-md-2 show">
                                                <img src="img/youtube image/image7.png" class="img-fluid" data-toggle="modal" data-target="#exampleModalCenter6">
                                            </div>
                                            <div class="col-md-2 show">
                                                <img src="img/youtube image/image8.png" class="img-fluid" data-toggle="modal" data-target="#exampleModalCenter7">
                                            </div>
                                            <div class="col-md-2 show">
                                                <img src="img/youtube image/image9.png" class="img-fluid" data-toggle="modal" data-target="#exampleModalCenter8">
                                            </div>
                                            <div class="col-md-2 show">
                                                <img src="img/youtube image/image10.png" class="img-fluid" data-toggle="modal" data-target="#exampleModalCenter9">
                                            </div>
                                            <div class="col-md-2 show">
                                                <img src="img/youtube image/image5.png" class="img-fluid" data-toggle="modal" data-target="#exampleModalCenter4">
                                            </div>
                                            <div class="col-md-2 show">
                                                <img src="img/youtube image/image6.png" class="img-fluid" data-toggle="modal" data-target="#exampleModalCenter5">
                                            </div>

                                        </div>


                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>
                    <!-- End of E-books section-->


                    <!-- Footer -->
                    <footer class="sticky-footer bg-white shadow" style="margin-top: 50px;">
                        <div class="container my-auto">
                            <div class="copyright text-right my-auto">
                                ©
                                <script>
                                    document.write(new Date().getFullYear())
                                </script>
                                <a href="#">StaySafe</a>
                            </div>
                        </div>
                    </footer>
                    <!-- End of Footer -->


                </div>
                <!-- End of Content Wrapper -->

            </div>
            <!-- End of Page Wrapper -->

            <!-- Scroll to Top Button-->
            <a class="scroll-to-top rounded" href="#page-top">
                <i class="fas fa-angle-up"></i>
            </a>
            <!--YOUTUBE VEDIO DECLARE -->
            <div class="modal fade" id="exampleModalCenter">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content contain">
                        <div class="modal-body">
                           
                        </div>

                    </div>
                </div>
            </div>
            
            <!--new-->
            <div class="modal fade" id="exampleModalCenter1">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content contain">
                        <div class="modal-body">
                           
                        </div>

                    </div>
                </div>
            </div>
            
            <!--new-->
            <div class="modal fade" id="exampleModalCenter2">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content contain">
                        <div class="modal-body">
                           
                        </div>

                    </div>
                </div>
            </div>
            
            <!--new-->
            <div class="modal fade" id="exampleModalCenter3">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content contain">
                        <div class="modal-body">
                           
                        </div>

                    </div>
                </div>
            </div>
            <div class="modal fade" id="exampleModalCenter4">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content contain">
                        <div class="modal-body">
                        
                        </div>

                    </div>
                </div>
            </div>
            <div class="modal fade" id="exampleModalCenter5">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content contain">
                        <div class="modal-body">
                           
                        </div>

                    </div>
                </div>
            </div>
            <div class="modal fade" id="exampleModalCenter6">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content contain">
                        <div class="modal-body">
             
                        </div>

                    </div>
                </div>
            </div>
            <div class="modal fade" id="exampleModalCenter7">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content contain">
                        <div class="modal-body">
                           
                        </div>

                    </div>
                </div>
            </div>
            <div class="modal fade" id="exampleModalCenter8">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content contain">
                        <div class="modal-body">
                           
                        </div>

                    </div>
                </div>
            </div>
            <div class="modal fade" id="exampleModalCenter9">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content contain">
                        <div class="modal-body">
                           
                        </div>

                    </div>
                </div>
            </div>
            <!-- Logout Modal-->
            <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                        <div class="modal-footer">
                            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                            <a class="btn" style="color: white; background-color: red;" href="/staysafe_new/logout">Logout</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bootstrap core JavaScript-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
        <script src="js/e-learning.js"></script>
        <!-- Custom scripts for all pages-->
        <script src="js/sb-admin-2.min.js"></script>
    </body>
</html>