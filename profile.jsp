<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <!--  This file has been downloaded from https://bootdey.com  -->
    <!--  All snippets are MIT license https://bootdey.com/license -->
    <title>Bootdey.com</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <link href="http://netdna.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" rel="stylesheet">
  <link type='text/css' rel='stylesheet' href='/staysafe/css/profile.css' >
</head>
<body>
<jsp:include page='/map.jsp' />
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<div class="row">

<div class="col-lg-1"></div>


    <div class="col-lg-4 col-xlg-3 col-md-5">

        <div class="card">
	 <div class="card-header">
                                    <h3><class="card-title">${sessionScope.Name}</h3>
	</div>
            <div class="card-body">
                <center class="m-t-30"> <img  class="rounded" src="img/Students/${sessionScope.Name}.jpg" class="rounded" width="150">
  <br>
   <br>            
 <div class="row text-center justify-content-md-center">
                    <div class="col-4"> <img src="img/icons/class.png" alt="class-icon"><font class="font-medium"> ${studentBean.getClasses()}</font></div>
                        <div class="col-4"><img src="img/icons/${studentBean.getStream()}.png" alt="${studentBean.getStream()}-icon"><font class="font-medium">${studentBean.getStream()}</font></div>
                 
             </div>
	
</div>
                    <div class="row text-center justify-content-md-center">
                        <div class="col-4"> <img src="img/icons/${studentBean.getGender()}.png" alt="${studentBean.getGender()}-icon"><font class="font-medium">${studentBean.getGender()}</font></div>
                        <div class="col-4"><img src="img/icons/Date.png" alt="Date-icon"><font class="font-medium">${studentBean.getDob()}</font></a></div>
                    </div>
                </center>

</div>

</div>

 <div class="card">

	<div class="card-header">
                                    <h3><class="card-title">Personal Information</h3>
	</div>
            <div class="card-body"> <h5><small class="text-muted"><table><tr><td>Father's Name<img src="img/icons/dad.png" alt='father-icon'></td><td>&nbsp;&nbsp;Mother's Name<img src="img/icons/mother.png" alt='mother-icon'></td></tr></small></h5>
                <h5><tr><td>${studentBean.getMother()}</td><td>&nbsp;&nbsp;${studentBean.getFather()}</td></tr></table></h5>
 <h5><small class="text-muted p-t-30 db">Phone<img src="img/icons/phone.png" alt='phone-icon'></small></h5>
                <h6>+91 ${studentBean.getPhone()}</h6> <h5><small class="text-muted p-t-30 db">Address<img src="img/icons/map.png" alt='address-icon'></small></h5>
                <h6>${studentBean.getAddress()},${studentBean.getCity()},${studentBean.getCountry()}</h6>
                <div class="map-box"><br>
                 <iframe id="map" width="100%" height="190" frameborder="0" style="border:0" allowfullscreen=""> </iframe>
                </div>



            </div>
        </div>

    </div>

<script src="http://netdna.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<script type="text/javascript">
	<!---->

</script>
</body>
</html>