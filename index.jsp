<%-- 
    Document   : index
    Created on : 12 Mar, 2020, 9:54:08 PM
    Author     : ankit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <title>Dashboard</title>
        <link rel="icon" type="image/png" href="img/icons/favicon.ico"/>

        <!-- Custom fonts for this template-->
        <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css"/>

        <!-- Custom styles for this template-->
        <link href="css/sb-admin-2.min.css" rel="stylesheet">
        <link href="css/index.css" rel="stylesheet" type="text/css">

    </head>
<style>


h5.notice{
    animation-duration: 1200ms;
    animation-name: blink;
    animation-iteration-count: infinite;
    animation-direction: alternate;
    -webkit-animation:blink 1200ms infinite; /* Safari and Chrome */
}
@keyframes blink {
    from {
        color:#000000;
    }
    to {
        color:#ff0000;
    }
}
@-webkit-keyframes blink {
    from {
        color:#000000;
    }
    to {
        color:#ff0000;
    }
}

</style>
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
                    <div class="sidebar-brand-icon justify-content-center">
                        <img src="img/logo2.jpg" class="img-fluid" style="border-radius: 50px; margin-top: 10px; margin-bottom: 10px;" width="65" height="65">
                    </div>
                    <div class="sidebar-brand-text mx-3">Staysafe</div>
                </a>
                <hr class="sidebar-divider d-none d-md-block">
                <!-- Nav Item - Dashboard -->
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">
                        <i class="fas fa-fw fa-tachometer-alt"></i>
                        <span>Parent Module</span></a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href='/staysafe_new/userDetail'>
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

                        <a class="navbar-brand" href="#">Dashboard</a>

                        <!-- Topbar Navbar -->
                        <ul class="navbar-nav ml-auto">

                            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                            <li class="nav-item dropdown no-arrow d-sm-none">


                                <!-- Nav Item - User Information -->
                            <li class="nav-item dropdown no-arrow">
                                <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown"
                                   aria-haspopup="true" aria-expanded="false">
                                    <span class="mr-2 d-none d-lg-inline text-gray-600 small">Welcome ${sessionScope.Name}</span>
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

                    <!-- Begin Page Content -->
                    <div class="container-fluid">


                        <!-- Content Row -->
                        <div class="row">

                            <!--total students Card Example -->
                            <div class="col-xl-3 col-md-6 mb-4">
                                <div class="card border-left-primary shadow h-100 py-2 animate__animated animate__fadeInLeft">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Total Students</div>
                                                <div class="h5 mb-0 font-weight-bold text-gray-800">1000</div>
                                            </div>
                                            <div class="col-auto">
                                                <i class="fas fa-user-tie" style="font-size: 50px; color: #D4DADD;"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="col-xl-3 col-md-6 mb-4">
                                    <button class=" card-body font-weight-bold text-uppercase border-left-info shadow h-100 py-2
                                            col mr-2 animate__animated animate__fadeInLeft btn" id="Science_student" style="background-color: #fff;" data-toggle="tooltip" title="Click for More Details">              
                                        Science Student
                                        <i class="fas fa-user-tie" style="font-size: 50px; color: #D4DADD; float: right;"></i>
                                    </button>
                            </div>

                            <div class="col-xl-3 col-md-6 mb-4">
                                    <button class="card-body font-weight-bold text-uppercase border-left-success shadow h-100 py-2
                                            col mr-2 animate__animated animate__fadeInLeft btn" id="Commerse_student" style="background-color: #fff;"  data-toggle="tooltip" title="Click for More Details">              
                                        Commerce Student
                                        <i class="fas fa-user-tie" style="font-size: 50px; color: #D4DADD; float: right;"></i>
                                    </button>
                            </div>
                            
                            <!-- Pending tasks Card Example -->
                            <div class="col-xl-3 col-md-6 mb-4">
                                <div class="card border-left-warning shadow h-100 py-2 animate__animated animate__fadeInLeft">
                                    <div class="card-body">
                                        <div class="row no-gutters align-items-center">
                                            <div class="col mr-2">
                                                <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">Teachers</div>
                                                <div class="h5 mb-0 font-weight-bold">20</div>
                                            </div>
                                            <div class="col-auto">
                                                <i class="fas fa-chalkboard-teacher" style="font-size: 50px; color: #D4DADD;"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <!-- Content Row -->

                        <div class="row">

                            <!-- Area Chart -->
                            <div class="col-xl-8 col-lg-7 act">
                                <div class="card shadow mb-4 animate__animated animate__fadeInUp" id="Growth_chart">
                                    <!-- Card Header - Dropdown -->
                                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                        <h6 class="m-0 font-weight-bold">Growth</h6>
                                    </div>
                                    <!-- Card Body -->
                                    <div class="card-body">
                                        <div class="chart-bar">
                                            <canvas id="myBarChart"></canvas>
                                        </div>
                                    </div>
                                </div>

                                <!--Science boys-->
                                <div class="card shadow mb-4 animate__animated animate__fadeInLeft" id="Science_boys">
                                    <!-- Card Header - Dropdown -->
                                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                        <h6 class="m-0 font-weight-bold">Science Boys</h6>
                                    </div>
                                    <!-- Card Body -->
                                    <div class="card-body">
                                        <div class="chart-bar">
                                            <canvas id="myBarChart1"></canvas>
                                        </div>
                                    </div>
                                </div>

                                <!--Science girls-->
                                <div class="card shadow mb-4 animate__animated animate__fadeInLeft" id="Science_girls">
                                    <!-- Card Header - Dropdown -->
                                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                        <h6 class="m-0 font-weight-bold">Science girls</h6>
                                    </div>
                                    <!-- Card Body -->
                                    <div class="card-body">
                                        <div class="chart-bar">
                                            <canvas id="myBarChart2"></canvas>
                                        </div>
                                    </div>
                                </div>

                                <!--Commerce boys-->
                                <div class="card shadow mb-4 animate__animated animate__fadeInLeft" id="Commerce_boys">
                                    <!-- Card Header - Dropdown -->
                                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                        <h6 class="m-0 font-weight-bold">Commerce Boys</h6>
                                    </div>
                                    <!-- Card Body -->
                                    <div class="card-body">
                                        <div class="chart-bar">
                                            <canvas id="myBarChart3"></canvas>
                                        </div>
                                    </div>
                                </div>
                                <!--Commerce girls-->
                                <div class="card shadow mb-4 animate__animated animate__fadeInLeft" id="Commerce_girls">
                                    <!-- Card Header - Dropdown -->
                                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                        <h6 class="m-0 font-weight-bold">Commerce girls</h6>
                                    </div>
                                    <!-- Card Body -->
                                    <div class="card-body">
                                        <div class="chart-bar">
                                            <canvas id="myBarChart4"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Pie Chart -->
                            <div class="col-xl-4 col-lg-5">
                                <div class="card shadow mb-4 animate__animated animate__fadeInUp animate__delay-500ms act1" id="chart">
                                    <!-- Card Header - Dropdown -->
                                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                        <h6 class="m-0 font-weight-bold">Assesment</h6>
                                    </div>
                                    <!-- Card Body -->
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="chart-pie pt-4 pb-2">
                                                <canvas id="myPieChart"></canvas>
                                            </div>
                                            <div class="mt-4 small" style="text-align: center;">
                                                <span class="mr-2">
                                                    <i class="fas fa-circle text-primary"></i> Teachers
                                                </span>
                                                <span class="mr-2">
                                                    <i class="fas fa-circle text-success"></i> Social
                                                </span>
                                                <span class="mr-2">
                                                    <i class="fas fa-circle text-info"></i> Practical
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--Science Chard Start-->
                                <div class="card shadow mb-4 animate__animated animate__fadeInRight animate__delay-500ms act1" id="Science">
                                    <!-- Card Header - Dropdown -->
                                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                        <h6 class="m-0 font-weight-bold">Chart Science</h6>
                                    </div>
                                    <!-- Card Body -->
                                    <div class="card-body">
                                        <div class="text-center">
                                            <img class="img-fluid" width="290" height="290" src="img/science.svg" alt="">
                                        </div>
                                        <div class="row" style="margin-top: 5px;">
                                            <button class="btn btn-outline-success btn-sm btn-block" id="button" style="border-radius: 20px;">Science Boys</button>
                                            <button class="btn btn-outline-primary btn-sm btn-block" id="button1" style="border-radius: 20px;">Science Girls</button>
                                        </div>
                                    </div>
                                </div>
                                <!--Science Chard End-->
                                <!--Commerce Chard Start-->
                                <div class="card shadow mb-4 animate__animated animate__fadeInRight animate__delay-500ms act1" id="Commerse">
                                    <!-- Card Header - Dropdown -->
                                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                        <h6 class="m-0 font-weight-bold">Chart Commerce</h6>
                                    </div>
                                    <!-- Card Body -->
                                    <div class="card-body">
                                        <div class="text-center">
                                            <img class="img-fluid" width="290" height="290" src="img/commerce.svg" alt="">
                                        </div>
                                        <div class="row" style="margin-top: 5px;">
                                            <button class="btn btn-outline-success btn-sm btn-block" id="button2" style="border-radius: 20px;">Commerce Boys</button>
                                            <button class="btn btn-outline-primary btn-sm btn-block" id="button3" style="border-radius: 20px;">Commerce Girls</button>
                                        </div>
                                    </div>
                                </div>
                                <!--Commerce Chard end-->
                            </div>
                        </div>

                        <!-- Content Row -->
                        <div class="row">

                            <!-- Content Column -->
                            <div class="col-lg-6 mb-4">

                                <!-- Project Card Example -->
                                <div class="card shadow mb-4 animate__animated animate__fadeInUp animate__delay-500ms">
                                    <div class="card-header py-3">
                                        <h6 class="m-0 font-weight-bold">Upcoming events</h6>
                                    </div>
                                    <div class="card-body cord">
                                        <h4 class="small font-weight-bold">singing competition</h4>
                                        <div class="text-right">
                                            <button type="button" class="button" style="border: 2px solid #400080;"><span style="color:black"><span style="color:black">Registration</span></span></button>
                                        </div>
                                        <div style="margin-top: 5px;">
                                            <hr class="sidebar-divider my-0">
                                        </div>
                                        <h4 class="small font-weight-bold" style="margin-top: 5px;">Drawing competition</h4>
                                        <div class="text-right">
                                          <button type="button" class="button" style="border: 2px solid #400080;"><span style="color:black">Registration</span></button>
                                        </div>
                                        <div style="margin-top: 5px;">
                                            <hr class="sidebar-divider my-0">
                                        </div>
                                        <h4 class="small font-weight-bold" style="margin-top: 5px;">Dance competition</h4>
                                        <div class="text-right">
                                          <button type="button" class="button" style="border: 2px solid #400080;"><span style="color:black">Registration</span></button>
                                        </div>
                                        <div style="margin-top: 5px;">
                                            <hr class="sidebar-divider my-0">
                                        </div>
                                        
                                        <div style="margin-top: 5px;">
                                            <hr class="sidebar-divider my-0">
                                        </div>
                                        <h4 class="small font-weight-bold" style="margin-top: 5px;">cricket competition</h4>
                                        <div class="text-right">
                                          <button type="button" class="button" style="border: 2px solid #400080;"><span style="color:black">Registration</span></button>
                                        </div>

                                    </div>
                                </div>
                            </div>

                             <div class="col-lg-6 mb-4">
                                <!--Notice -->
                                <div class="card shadow mb-4 animate__animated animate__fadeInUp animate__delay-500ms">
                                    <div class="card-header py-3">
                                        <h6 class="m-0 font-weight-bold">Important Notice</h6>
                                    </div>
                                    <div class="card-body cord">
			<marquee style="bottom: 1em;color: #00000; height: 80%;position: absolute; text-align: center;" scrollamount="5" direction="up" loop="true" behaviour="scroll"> 
			<p class="marquee">
      			<h5 class="notice"><sup><span class="badge badge-success">New</span></sup> Classes shall remain suspended due to <br>COVID-19 untill further notice</h5><br> 
      			<h5 class="notice"><sup><span class="badge badge-success">New</span></sup> Class X Students have been promoted to <br> higher classes by according to <br> Government Rules </h5><br>
      			<h5 class="notice"><sup><span class="badge badge-success">New</span></sup> Class XII New Board Exam Time will be <br>Published Soon According CBSE Officials</h5><br>
     			<h5 class="notice"><sup><span class="badge badge-success">New</span></sup> PDF Books as well as Sample Paper for<br> Students are available for students at<br> the E-Library Section</h5> <br>
			<h5 class="notice"><sup><span class="badge badge-success">New</span></sup> Sample Lectures for Class X-XII <br> are available at the E-Learning Section</h5><br>
      			<h5 class="notice"><sup><span class="badge badge-success">New</span></sup> For Any Doubt Students and Parents<br> can Contact us on School Email-Id</h5><br>
     			
			 </p>
			</marquee>
                                        </div>
                                        
                                </div>
                            </div>


                        </div>
                        <!-- /.container-fluid -->

                    </div>
                    <!-- End of Main Content -->

                    <!-- Footer -->
                    <footer class="sticky-footer bg-white shadow">
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

        <!-- Custom scripts for all pages-->
        <script src="js/sb-admin-2.min.js"></script>
        <script src="js/user.js"></script>
        <script src="js/index.js"></script>

        <!-- Page level plugins -->
        <script src="vendor/chart.js/Chart.min.js"></script>
        <script src="js/demo/chart_science_bar.js"></script>
        <script src="js/demo/chart_science_girls.js"></script>
        <script src="js/demo/chart_commerce_boys.js"></script>
        <script src="js/demo/chart_commerce_girls.js"></script>

        <!-- Page level custom scripts -->
        <!--<script src="js/demo/chart-area-demo.js"></script>-->
        <script src="js/demo/chart-pie-demo.js"></script>
        <script src="js/demo/chart-bar-demo.js"></script>


    </body>

</html>