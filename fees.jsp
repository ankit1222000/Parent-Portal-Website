
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
        <link rel="stylesheet" href="">

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

                        <a class="navbar-brand" href="#">Fees Section</a>

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

                    <!-- Begin Page Content -->
                    <div class="container-fluid">
                        <!-- Content Row -->

                        <!--row content-->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card shadow animate__animated animate__fadeInUp">
                                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                        <h6 class="m-0 font-weight-bold">Fees Section</h6>
                                    </div>
                                    <!--card Body-->
                                    <div class="card-body">
                                        <form class="form" id="form">
                                            <p>Student Name</p>
                                            <div class="row">
                                                <div class="col-md-4 pr-1">
                                                    <div class="form-group">
                                                        <label for="firstname">First Name</label>
                                                        <input type="text" class="form-control" placeholder="Firstname" id="first">
                                                    </div>
                                                </div>
                                                
                                                <div class="col-md-4 pl-1">
                                                    <div class="form-group">
                                                        <label for="Lastname">Last Name</label>
                                                        <input type="text" class="form-control" placeholder="Lastname" id="last">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6 pr-1">
                                                    <div class="form-group">
                                                        <label for="RollNo">Roll Number</label>
                                                        <input type="text" class="form-control" placeholder="Roll Number" id="roll">
                                                    </div>
                                                </div>
                                                <div class="col-md-6 pl-1">
                                                    <div class="form-group">
                                                        <label for="Scholarno">Scholar Number</label>
                                                        <input type="text" class="form-control" placeholder="Scholar Number" id="schlr">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6 pr-1">
                                                    <div class="form-group">
                                                        <label for="Mono">Mob. Number</label>
                                                        <input type="text" class="form-control" placeholder="Mobile Number" id="mob">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4 pr-1">
                                                    <div class="form-group">
                                                        <label for="class">Class</label>
                                                        <select class="form-control" id="option">
                                                            <option>XI</option>
                                                            <option>XII</option>
                                                           
                                                        </select>
                                                    </div>
                                                </div>
<div class="col-md-4 pl-1">
                                                    <div class="form-group">
					
					</div>
					</div>
					<div class="col-md-4 pl-1">
                                                    <div class="form-group">
					<label for="Sig">Signature/School Stamp</label>
					</div>
					</div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4 pr-1">
                                                    <div class="form-group">
                                                        <label for="installment">Installment</label>
                                                        <select class="form-control form-control-sm" id="install">
                                                            <option>I</option>
                                                            <option>II</option>
                                                            <option>III</option>
                                                            <option>IV</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <p>Installment Method</p>
                                            <div class="row">
                                                <div class="col-md-1 px-1">
                                                    <!-- Default inline 2-->
                                                    <div class="custom-control custom-radio custom-control-inline">
                                                        <input type="radio" class="custom-control-input" id="defaultInline2"
                                                               name="inlineDefaultRadiosExample" value="Offline">
                                                        <label class="custom-control-label" for="defaultInline2">offline</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-1 pl-1">
                                                    <!-- Default inline 3-->
                                                    <div class="custom-control custom-radio custom-control-inline">
                                                        <input type="radio" class="custom-control-input" id="defaultInline3"
                                                               name="inlineDefaultRadiosExample" value="Check">
                                                        <label class="custom-control-label" for="defaultInline3">check</label>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="text-left" style="margin-top: 20px;">
                                                <button id="create_pdf" onClick="generatePdf()" class=" btn btn-sm shadow-sm" style="background-color: red; color: white;"><i
                                                        class="fas fa-download fa-sm" style="color: white;"></i> Generate Reciept</button>
                                            </div>
<br/>

                                        </form>
 <div class="row">
                            <div class="col-lg-12">
<div class="card shadow animate__animated animate__fadeInUp">
                                    <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                        <h6 class="m-0 font-weight-bold">Payment History</h6>
</div>
<div class="card-body">
                                     
					<table class="table table-hover">
					<thead>
					<tr>
					<th>Session</th>
					<th>Class</th>
					<th>Receipt Type</th>
					<th>Receipt No.</th>
					<th>Amount Paid</th>
					<th>Remarks</th>
					</tr>
					</thead>
					<tbody>
					<tr>
					<td>June-2020</td>
					<td>XII</td>
					<td>Student Fees/Tution Fees-Challan</td>
					<td>C1/2016/03453</td>
					<td>4550/-</td>
					<td>Challan has been reconciled by Gyan Sagar Academy</td>
					</tr>

					<tr>
					<td>July-2020</td>
					<td>XII</td>
					<td>Student Fees/Exam Fees-Cash</td>
					<td>C1/2020/24453</td>
					<td>3550/-</td>
					<td>Paid</td>
					</tr>

					<tr>
					<td>August-2020</td>
					<td>XII</td>
					<td>Student Fees/Tution Fees-Challan</td>
					<td>C1/2020/03253</td>
					<td>4550/-</td>
					<td>Challan has been reconciled by Gyan Sagar Academy</td>
					</tr>

					<tr>
					<td>September-2020</td>
					<td>XII</td>
					<td>Student Fees/Development Fees-Challan</td>
					<td>C7/2020/03463</td>
					<td>7550/-</td>
					<td>Challan has been reconciled by Gyan Sagar Academy</td>
					</tr>

                                        <tr>
					<td>Oct-2020</td>
					<td>XII</td>
					<td>Student Fees/Exam Fess-Challan</td>
					<td>C08/2020/03453</td>
					<td>5550/-</td>
					<td>Challan has been reconciled by Gyan Sagar Academy</td>
					</tr>

					<tr>
					<td>Nov-2020</td>
					<td>XII</td>
					<td>Tution Fees/Tour Fees-Challan</td>
					<td>C8/2020/02253</td>
					<td>8550/-</td>
					<td>Challan has been reconciled by Gyan Sagar Academy</td>
					</tr>
			
					</tbody>
					</table>
					</div>
					
					</div>
					</div>
					</div>


                                    </div>

                                </div>
                            </div>

                        </div>
                    


                    </div>
                    <!-- End of Main Content -->

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
                            <a class="btn " style="color: white; background-color: red;" href="/staysafe_new/logout">Logout</a>
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
	<script src="js/jspdf.min.js"></script>
	<script src="js/pdf.js"></script>
        <!-- Custom scripts for all pages-->
        <script src="js/sb-admin-2.min.js"></script>

    </body>