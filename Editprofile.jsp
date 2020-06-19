
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

    <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Dashboard</title>
    <link rel="icon" type="image/png" href="img/icons/favicon.ico"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css"/>

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <link href="css/edit.css" rel="stylesheet">
    </head>
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

    <body>


        <div class="jumbotron jumbotron-fluid jumbo">
            <div class="container title">
                <h1 class="animate__animated animate__fadeInUp">Edit Profile</h1>
            </div>
        </div>


                

        <!-- Begin Page Content -->
        <div class="container-fluid">
            <div class="row justify-content-center" style="margin-top: -200px; z-index: 1px; ">
                <div class="col-md-8">
                    <div class="card shadow animate__animated animate__fadeInUp" style="border: none;">
                        <div class="card-header">
                            <h4 class="card-title">Edit Profile</h4>
                        </div>
                        <div class="card-body">
                            <form method="POST">
                                <center><b><u>Student Details</u></b></center>
</br>
                                <div class="row">
                                    <div class="col-md-6 pr-1">
                                        <div class="form-group">
                                            <label for="firstname"><b>Student Name</b></label> 
					    <input type="text" class="form-control"  value="${sessionScope.Name}" disabled>
                                        </div>
                                    </div>
				    <div class="col-md-6 px-1">
                                        <div class="form-group">
                                            <label for="RollNumber"><b>Roll Number</b></label>
                                            <input type="text" class="form-control"  value="${sessionScope.Rollnumber}" disabled>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="row">
                                    <div class="col-md-6 pr-1">
                                        <div class="form-group">
                                            <label for="fathername"><b>Fathers Name</b></label>
                                            <input type="text" class="form-control"  value="<%=request.getParameter("father")%>">
                                        </div>
                                    </div>
                                    <div class="col-md-6 px-1">
                                        <div class="form-group">
                                            <label for="MothersName"><b>Mothers Name</b></label>
                                            <input type="text" class="form-control"  value="<%=request.getParameter("mother")%>">
                                        </div>
                                    </div>
                                    
                                </div>
                                
                                <div class="row">
                                    <div class="col-md-4 pr-1">
                                        <div class="form-group">
                                            <label for="Clasname"><b>Class</b></label>
                                            <input type="text" class="form-control"  value="<%=request.getParameter("division")%>" disabled>
                                        </div>
                                    </div>
                                    <div class="col-md-3 px-1">
                                        <div class="form-group">
                                            <label for="Stream"><b>Stream</b></label>
                                            <input type="text" class="form-control"  value="<%=request.getParameter("stream")%>" disabled>
                                        </div>
                                    </div>
                                    <div class="col-md-5 pl-1">
                                        <div class="form-group">
                                            <label for="Lastname"><b>Email ID</b></label>
                                            <input type="email" class="form-control"  placeholder="EmailID">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3 pr-1">
                                        <div class="form-group">
                                            <label for="Gender"><b>Gender</b></label>
                                            <input type="text" class="form-control" value="<%=request.getParameter("gender")%>" >
                                        </div>
                                    </div>
                                    <div class="col-md-4 px-1">
                                        <div class="form-group">
                                            <label for="Mobileno"><b>Mob. Number</b></label>
                                            <input type="text" class="form-control"  value="<%=request.getParameter("phone")%>" maxlength="10">
                                        </div>
                                    </div>
                                    
				    <div class="col-md-5 px-1">
                                        <div class="form-group">
                                            <label for="DOB"><b>Date Of Birth</b></label>
                                            <input type="date" class="form-control"  value="<%=request.getParameter("dob")%>" maxlength="10">
                                        </div>
                                    </div>


                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="Password"><b>Password</b></label>
                                            <input type="text" class="form-control"  value="${sessionScope.Password}">
                                        </div>
                                    </div>
				    <div class="col-md-5 px-1">
                                        <div class="form-group">
                                            <label for="Key"><b>Key ID</b></label>
                                            <input type="text" class="form-control"  value="${sessionScope.Special}">
                                        </div>
                                    </div>     
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="Address"><b>Address</b></label>
                                            <input type="text" class="form-control" value="<%=request.getParameter("address")%>">
                                        </div>
                                    </div>
                                </div>                                       
                                <div class="row">
                                    <div class="col-md-4 pr-1">
                                        <div class="form-group">
                                            <label><b>City</b></label>
                                            <input type="text" class="form-control"  value="<%=request.getParameter("city")%>">
                                        </div>
                                    </div>
                                    <div class="col-md-4 px-1">
                                        <div class="form-group">
                                            <label><b>State</b></label>
                                            <input type="text" class="form-control"  value="<%=request.getParameter("state")%>">
                                        </div>
                                    </div>
                                    <div class="col-md-4 pl-1">
                                        <div class="form-group">
                                            <label><b>Country</b></label>
                                            <input type="text" class="form-control"   value="<%=request.getParameter("country")%>">
                                        </div>
                                    </div>
                                </div>


                                <div class="text-right">
                                    <button type="button" class="btn btn-outline-danger" style="outline: none;" data-toggle="modal" data-target="#requestModal">
  Send Update Profile Request</button>
                                </div>
                                <div class="clearfix"></div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
 <!-- The Modal -->
   <div class="modal fade" id="requestModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Confirm Update Request</h5>
                            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <div class="modal-body">Send "Update Request" for the following details to System Admin.</div>
                        <div class="modal-footer">
                            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                            <a class="btn" style="color: white; background-color: red;" data-toggle="modal" data-target="#updateModal" data-dismiss="modal">Send Request</a>
                        </div>
                    </div>
                </div>
            </div>
<!---Send Succesfully Modal-->
   <div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Request Send Sucessfully</h5>
                            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <div class="modal-body">Profile will be "Updated" within few days .</div>
                        <div class="modal-footer">
                           
                            <a class="btn" style="color: white; background-color: red;" href='/staysafe_new/userDetail'>OK</a>
                        </div>
                    </div>
                </div>
            </div>

    </body>
</html>

