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
        <link href="css/E-library.css" rel="stylesheet">

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
                                    <a class="dropdown-item" href="/staysafe_new/userDetails">
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
                                        <h6 class="m-0 font-weight-bold">E-Books</h6>
                                        <div class="text-right">
                                            <select class="form-control form-control-sm" style="border-radius: 5px;">
                                                <option class="active">All Books</option>

                                            </select>
                                        </div>
                                    </div>

                                    <!--card Body-->
                                    <div class="card-body" style="overflow: hidden; overflow-y: scroll;">
                                        <!--start books show-->
                                        <div class="row">
                                            <!--book-->
                                            <div class="card bg-book">
                                                <img class="card-img-top" src="./img/politics10.jpg" alt="Democratic Politics-II x" 
                                                     onerror="this.onerror=null;this.src='./img/voidimage.svg';" height="300">
                                                <div class="card-body">
                                                    <h6 class="card-title">Democratic Politics-II Textbook for Class - 10</h6>
                                                    <!--<p class="card-text">S</p>-->
                                                    <a href="https://drive.google.com/file/d/1RJCHMVX2wcgTaQE9MAf3qlXB3MyDwZO2/view?usp=sharing" class="btn btn-sm shadow-sm" style="background-color: red; color: white;"><i
                                                            class="fas fa-download fa-sm" style="color: white;"></i> Download</a>
                                                </div>
                                            </div>
                                            <!--book-->
                                            <div class="card bg-book">
                                                <img class="card-img-top" src="./img/science10.jpg" alt="Science x" 
                                                     onerror="this.onerror=null;this.src='./img/voidimage.svg';" height="300">
                                                <div class="card-body">
                                                    <h6 class="card-title">Science Textbook for Class - 10</h6>
                                                    <!--<p class="card-text">S</p>-->
                                                    <a href="https://drive.google.com/file/d/1xNp55m23jNX_jXb8idPNwAHkS1tI7gj-/view?usp=sharing" class="btn btn-sm shadow-sm" style="background-color: red; color: white;"><i
                                                            class="fas fa-download fa-sm" style="color: white;"></i> Download</a>
                                                </div>
                                            </div>
                                            <!--book-->
                                            <div class="card bg-book">
                                                <img class="card-img-top" src="./img/Computer-Science-with-Python-cbse-11.png" alt="Computer-Science-with-Python-cbse-11" 
                                                     onerror="this.onerror=null;this.src='./img/voidimage.svg';" height="300">
                                                <div class="card-body">
                                                    <h6 class="card-title">Computer-Science-with-Python-11</h6>
                                                    <!--<p class="card-text">S</p>-->
                                                    <a href="https://drive.google.com/file/d/1mbg0JWT_Cq0NVzYSOKaHRVEnmczYJNGs/view?usp=sharing" class="btn btn-sm shadow-sm" style="background-color: red; color: white;"><i
                                                            class="fas fa-download fa-sm" style="color: white;"></i> Download</a>
                                                </div>
                                            </div>
                                            <!--book-->
                                            <div class="card bg-book">
                                                <img class="card-img-top" src="./img/chemistry11.jpg" alt="Chemistry Textbook Part - 1 for Class - 11" 
                                                     onerror="this.onerror=null;this.src='./img/voidimage.svg';" height="300">
                                                <div class="card-body">
                                                    <h6 class="card-title">Chemistry Textbook Part - 1 for Class - 11</h6>
                                                    <!--<p class="card-text">S</p>-->
                                                    <a href="https://drive.google.com/file/d/1f7Vg0NniAJ10aRI2uG37CMOmPGpr52w3/view?usp=sharing" class="btn btn-sm shadow-sm" style="background-color: red; color: white;"><i
                                                            class="fas fa-download fa-sm" style="color: white;"></i> Download</a>
                                                </div>
                                            </div>
                                            <!--book-->
                                            <div class="card bg-book">
                                                <img class="card-img-top" src="./img/Chem11-Part2.jpg" alt="Chemistry Textbook Part - 2 for Class - 11" 
                                                     onerror="this.onerror=null;this.src='./img/voidimage.svg';" height="300">
                                                <div class="card-body">
                                                    <h6 class="card-title">Chemistry Textbook Part - 2 for Class - 11</h6>
                                                    <!--<p class="card-text">S</p>-->
                                                    <a href="https://drive.google.com/file/d/18LgHhMMTfbIq0CPR74ErNmLdx9pFnQrp/view?usp=sharing" class="d-none d-sm-inline-block btn btn-sm shadow-sm" style="background-color: red; color: white;"><i
                                                            class="fas fa-download fa-sm" style="color: white;"></i> Download</a>
                                                </div>
                                            </div>
                                            <!--book-->
                                            <div class="card bg-book">
                                                <img class="card-img-top" src="./img/biology.jpg" alt="Biology Textbook for Class - 11 " 
                                                     onerror="this.onerror=null;this.src='./img/voidimage.svg';" height="300">
                                                <div class="card-body">
                                                    <h6 class="card-title">Biology Textbook for Class - 11 </h6>
                                                    <!--<p class="card-text">S</p>-->
                                                    <a href="https://drive.google.com/file/d/1U8eAWuWjzrmE4EDBI2n20AqMwqj9dNH_/view?usp=sharing" class="d-none d-sm-inline-block btn btn-sm shadow-sm" style="background-color: red; color: white;"><i
                                                            class="fas fa-download fa-sm" style="color: white;"></i> Download</a>
                                                </div>
                                            </div>
                                        </div>
                                        <!--margin-->
                                        <div style="margin-top: 5px;">
                                            <hr class="sidebar-divider my-0">
                                        </div>
                                        <div class="row">
                                            <!--book-->
                                            <div class="card bg-book">
                                                <img class="card-img-top" src="./img/accountancy.jpg" alt="Accountancy part-2 class - 11" 
                                                     onerror="this.onerror=null;this.src='./img/voidimage.svg';" height="300">
                                                <div class="card-body">
                                                    <h6 class="card-title">Accountancy part-2 Textbook for Class - 11</h6>
                                                    <!--<p class="card-text">S</p>-->
                                                    <a href="https://drive.google.com/file/d/18F_N-Nsie3HQo8DJioDaXj5QnfxPS5yR/view?usp=sharing" class="btn btn-sm shadow-sm" style="background-color: red; color: white;"><i
                                                            class="fas fa-download fa-sm" style="color: white;"></i> Download</a>
                                                </div>
                                            </div>
                                            <!--book-->
                                            <div class="card bg-book">
                                                <img class="card-img-top" src="./img/economic11.jpg" alt="economic 11" 
                                                     onerror="this.onerror=null;this.src='./img/voidimage.svg';" height="300">
                                                <div class="card-body">
                                                    <h6 class="card-title">Economic Textbook for Class - 11</h6>
                                                    <!--<p class="card-text">S</p>-->
                                                    <a href="https://drive.google.com/file/d/1OknQXq8gymO202k8vLfL_RwH6XLqTQ_6/view?usp=sharing" class="btn btn-sm shadow-sm" style="background-color: red; color: white;"><i
                                                            class="fas fa-download fa-sm" style="color: white;"></i> Download</a>
                                                </div>
                                            </div>
                                            <!--book-->
                                            <div class="card bg-book">
                                                <img class="card-img-top" src="./img/chemistry12.jpg" alt="Chemistry - Part 2" 
                                                     onerror="this.onerror=null;this.src='./img/voidimage.svg';" height="300">
                                                <div class="card-body">
                                                    <h6 class="card-title">Chemistry Textbook for Class - 12</h6>
                                                    <!--<p class="card-text">S</p>-->
                                                    <a href="https://drive.google.com/file/d/18LgHhMMTfbIq0CPR74ErNmLdx9pFnQrp/view?usp=sharing" class="btn btn-sm shadow-sm" style="background-color: red; color: white;"><i
                                                            class="fas fa-download fa-sm" style="color: white;"></i> Download</a>
                                                </div>
                                            </div>
                                            <!--book-->
                                            <div class="card bg-book">
                                                <img class="card-img-top" src="./img/businessstudies11.jpg" alt="Business Studies for Class - 11" 
                                                     onerror="this.onerror=null;this.src='./img/voidimage.svg';" height="300">
                                                <div class="card-body">
                                                    <h6 class="card-title">Business Studies Textbook for Class - 11</h6>
                                                    <!--<p class="card-text">S</p>-->
                                                    <a href="https://drive.google.com/file/d/1sj_V4S9vBqdxKiab_miqW-IEbfMSKD1U/view?usp=sharing" class="btn btn-sm shadow-sm" style="background-color: red; color: white;"><i
                                                            class="fas fa-download fa-sm" style="color: white;"></i> Download</a>
                                                </div>
                                            </div>
                                            <!--book-->
                                            <div class="card bg-book">
                                                <img class="card-img-top" src="./img/maths11.jpg" alt="Mathematics Textbook for Class - 11" 
                                                     onerror="this.onerror=null;this.src='./img/voidimage.svg';" height="300">
                                                <div class="card-body">
                                                    <h6 class="card-title">Mathematics Textbook for Class - 11</h6>
                                                    <!--<p class="card-text">S</p>-->
                                                    <a href="https://drive.google.com/file/d/11NOEGmpuGa55iMGgKMsCWiCH02x2n_4h/view?usp=sharing" class="d-none d-sm-inline-block btn btn-sm shadow-sm" style="background-color: red; color: white;"><i
                                                            class="fas fa-download fa-sm" style="color: white;"></i> Download</a>
                                                </div>
                                            </div>
                                            <!--book-->
                                            <div class="card bg-book">
                                                <img class="card-img-top" src="./img/accountancy12.jpg" alt="Accountancy Textbook for Class - 12 " 
                                                     onerror="this.onerror=null;this.src='./img/voidimage.svg';" height="300">
                                                <div class="card-body">
                                                    <h6 class="card-title">Accountancy Textbook for Class - 12 </h6>
                                                    <!--<p class="card-text">S</p>-->
                                                    <a href="https://drive.google.com/file/d/15n8y0UOwHOwCbfa6blm6yqFy5BnHlvjE/view?usp=sharing" class="d-none d-sm-inline-block btn btn-sm shadow-sm" style="background-color: red; color: white;"><i
                                                            class="fas fa-download fa-sm" style="color: white;"></i> Download</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>
                    <!-- End of E-books section-->
                    
                    <!--previous year paper Section start-->
                    <div class="container-fluid">
                        <!--row content-->
                        <div class="row">
                            <div class="col-lg-12" style="margin-top: 50px;">
                                <div class="card shadow animate__animated animate__fadeInUp" style="height: 780px;">
                                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                        <h6 class="m-0 font-weight-bold">Previous Year Paper</h6>
                                        <div class="text-right">
                                            <select class="form-control form-control-sm" style="border-radius: 5px;">
                                                <option class="active">2017</option>
                                            </select>
                                        </div>
                                    </div>

                                    <!--card Body-->
                                    <div class="card-body" style="overflow: hidden; overflow-y: scroll;">
                                        <div class="row">
                                            <div class="card bg-book">
                                                <img class="card-img-top" src="./img/previous year paper/maths2017paperset1.png" alt="Mathematics set-1 paper 2017 for Class - 12" 
                                                     onerror="this.onerror=null;this.src='./img/voidimage.svg';" height="300">
                                                <div class="card-body">
                                                    <h6 class="card-title">Mathematics set-1 paper 2017 for Class - 12</h6>
                                                    <!--<p class="card-text">S</p>-->
                                                    <a href="https://drive.google.com/file/d/17ARz9XNfPjrzpuxDWpdQxFE081C451UX/view?usp=sharing" class="btn btn-sm shadow-sm" style="background-color: red; color: white;"><i
                                                            class="fas fa-download fa-sm" style="color: white;"></i> Download</a>
                                                </div>
                                            </div>
                                            <div class="card bg-book">
                                                <img class="card-img-top" src="./img/previous year paper/mathsset-22017.png" alt="Mathematics set-1 paper 2017 for Class - 12" 
                                                     onerror="this.onerror=null;this.src='./img/voidimage.svg';" height="300">
                                                <div class="card-body">
                                                    <h6 class="card-title">Mathematics set-2 paper 2017 for Class - 12</h6>
                                                    <!--<p class="card-text">S</p>-->
                                                    <a href="https://drive.google.com/file/d/1qdqMjXk8qTyxZtBTQOs01FfkF26qGQAo/view?usp=sharing" class="btn btn-sm shadow-sm" style="background-color: red; color: white;"><i
                                                            class="fas fa-download fa-sm" style="color: white;"></i> Download</a>
                                                </div>
                                            </div>
                                            <div class="card bg-book">
                                                <img class="card-img-top" src="./img/previous year paper/mathsset-32017.png" alt="Mathematics set-3 paper 2017 for Class - 12" 
                                                     onerror="this.onerror=null;this.src='./img/voidimage.svg';" height="300">
                                                <div class="card-body">
                                                    <h6 class="card-title">Mathematics set-3 paper 2017 for Class - 12</h6>
                                                    <!--<p class="card-text">S</p>-->
                                                    <a href="https://drive.google.com/file/d/1VysYE7znSdrJMx4E3EQLm4L6Dx1rIM_r/view?usp=sharing" class="btn btn-sm shadow-sm" style="background-color: red; color: white;"><i
                                                            class="fas fa-download fa-sm" style="color: white;"></i> Download</a>
                                                </div>
                                            </div>
                                            <div class="card bg-book">
                                                <img class="card-img-top" src="./img/previous year paper/maths2018set1.png" alt="Mathematics set-1 paper 2018 for Class - 12" 
                                                     onerror="this.onerror=null;this.src='./img/voidimage.svg';" height="300">
                                                <div class="card-body">
                                                    <h6 class="card-title">Mathematics set-1 paper 2018 for Class - 12</h6>
                                                    <!--<p class="card-text">S</p>-->
                                                    <a href="https://drive.google.com/file/d/1RJCHMVX2wcgTaQE9MAf3qlXB3MyDwZO2/view?usp=sharing" class="btn btn-sm shadow-sm" style="background-color: red; color: white;"><i
                                                            class="fas fa-download fa-sm" style="color: white;"></i> Download</a>
                                                </div>
                                            </div>
                                            <div class="card bg-book">
                                                <img class="card-img-top" src="./img/previous year paper/mathsset-22018.png" alt="Mathematics set-2 paper 2018 for Class - 12" 
                                                     onerror="this.onerror=null;this.src='./img/voidimage.svg';" height="300">
                                                <div class="card-body">
                                                    <h6 class="card-title">Mathematics set-2 paper 2018 for Class - 12</h6>                                                    <!--<p class="card-text">S</p>-->
                                                    <a href="https://drive.google.com/file/d/1B3QUjokweki3c0QhU9o9EhEpMVq6Qcqa/view?usp=sharing" class="btn btn-sm shadow-sm" style="background-color: red; color: white;"><i
                                                            class="fas fa-download fa-sm" style="color: white;"></i> Download</a>
                                                </div>
                                            </div>
                                            <div class="card bg-book">
                                                <img class="card-img-top" src="./img/previous year paper/Physics 2018 Set-a.png" alt="Physics set-A paper 2018 for Class - 12" 
                                                     onerror="this.onerror=null;this.src='./img/voidimage.svg';" height="300">
                                                <div class="card-body">
                                                    <h6 class="card-title">Physics set-A paper 2018 for Class - 12</h6>
                                                    <!--<p class="card-text">S</p>-->
                                                    <a href="https://drive.google.com/file/d/1nkMYN_XEMPgq3wlFUt4QksLlFii09JMl/view?usp=sharing" class="btn btn-sm shadow-sm" style="background-color: red; color: white;"><i
                                                            class="fas fa-download fa-sm" style="color: white;"></i> Download</a>
                                                </div>
                                            </div>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>
                    <!--previous year paper end-->
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
        <script src="./vendor/OwlCarousel2-2.3.4/dist/owl.carousel.min.js"></script>
    </body>
</html>