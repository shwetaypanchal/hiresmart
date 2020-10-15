<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TechnicalSupport.aspx.cs" Inherits="AdonisWebsite.TechnicalSupport" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Adonis Electronics Pvt Ltd</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:200,300,400,600,700,800,900" rel="stylesheet">

    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
      <style>
          .img-1
          {
              border:2px solid black;
              box-shadow:rgb(128, 128, 128) 10px 10px;
          }
          .container1{
              max-width:930px;
          }
          .item{
  width:200px;
  text-align:center;
  display:block;
  background-color: transparent;
  border: 1px solid transparent;
  margin-right: 10px;
  margin-bottom: 1px;
  float:left;
}
.tab {
  overflow: hidden;
  border: 1px solid #ccc;
  background-color: #f1f1f1;
}

/* Style the buttons inside the tab */
.tab button {
  background-color: inherit;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  transition: 0.3s;
  font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
  background-color: #ddd;
}

/* Create an active/current tablink class */
.tab button.active {
  background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
  display: none;
  padding: 6px 12px;
  border: 1px solid #ccc;
  border-top: none;
}
</style>
  </head>
  <body>
    <div class="bg-top navbar-light">
    	<div class="container">
    		<div class="row no-gutters d-flex align-items-center align-items-stretch">
    			<div class="col-md-3 d-flex align-items-center py-4">
    				<a class="navbar-brand" href="Home.html">
                        <img class="img-responsive" src="images/AdonisLogoSmall.jpg"  />
    				</a>
    			</div>
	    		<div class="col-lg-9 d-block">
		    		<div class="row d-flex">
					    <div class="col-md d-flex topper align-items-center align-items-stretch py-md-4">
					    	<div class="icon d-flex justify-content-center align-items-center"><span class="icon-paper-plane"></span></div>
					    	<div class="text d-flex align-items-center">
						    	<span>customer.care@adonis.co.in</span>
						    </div>
					    </div>
					    <div class="col-md d-flex topper align-items-center align-items-stretch py-md-4">
					    	<div class="icon d-flex justify-content-center align-items-center"><span class="icon-phone2"></span></div>
						    <div class="text d-flex align-items-center">
						    	<span>Call Us: 022 49789280</span>
						    </div>
					    </div>
					    <div class="col-md d-flex topper align-items-center align-items-stretch py-md-4">
					    	<div class="icon d-flex justify-content-center align-items-center"><span class="icon-phone2"></span></div>
						    <div class="text d-flex align-items-center">
						    	<span>Customer Care: 7490855555</span>
						    </div>
					    </div>
				    </div>
			    </div>
		    </div>
		  </div>
    </div>
	    <nav class="navbar navbar-expand-lg navbar-dark bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container d-flex align-items-center">
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>
	      
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav mr-auto">
	        	<li class="nav-item active"><a href="Home.aspx" class="nav-link">Home</a></li>
	        	<li class="nav-item"><a href="AboutUs.aspx" class="nav-link pl-0">About Us</a></li>
	        	<li class="nav-item"><a href="Ourjourney.aspx" class="nav-link">Our Journey</a></li>
                <li class="nav-item"><a href="OurTeam.aspx" class="nav-link">Our Team</a></li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Products & Service </a>
                    <div class="dropdown-menu dropdown-menu-left" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="Product.aspx">Product</a>
                    <a class="dropdown-item" href="Ourservices.aspx">Service</a>
                    
                    </div>
                </li>
                <li class="nav-item"><a href="Career.aspx" class="nav-link">Career</a></li>
	        	
	          <li class="nav-item"><a href="ContactUs.aspx" class="nav-link">Contact Us</a></li>
                <li class="nav-item"><a href="Registration.aspx" class="nav-link">Customer Support</a></li>
                <li class="nav-item"><a href="TechnicalSupport.aspx" class="nav-link">Support Video</a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
      
        <section class="hero-wrap hero-wrap-abt" style="background-color:white;">
      <div class="container">
       
      </div>
    </section>
      
  <div class="py-5 team3 bg-light">
      <div class="container">
          <div class="container">
    <div class="row justify-content-center">
      <div class="col-md-7 text-center">
        <h3 class="mb-3">Technical Support</h3>
        
      </div>
    </div>

              <div class="tab">
  <button class="tablinks" onclick="openCity(event, 'AC')">AC</button>
  <button class="tablinks" onclick="openCity(event, 'Washing Machine')">Washing Machine</button>
  <button class="tablinks" onclick="openCity(event, 'LED TV')">LED TV</button>
  <button class="tablinks" onclick="openCity(event, 'Microwave Oven')">Microwave Oven</button>
</div>
              <div id="AC" class="tabcontent">
  <h3>Air Condtioner</h3>
  <div class="row">
      <!-- column  -->
      <div class="col-lg-10">
        <!-- Row -->
        <div class="row">
            <div class="col-md-12">
            <div class="pt-2">
              <h5 class="mt-4 font-weight-medium mb-0">Onida AC Remote control</h5>
              <h6 class="subtitle">New Remote control function in AC. In  RHO .ICY and URS models</h6>
            </div>
          </div>
          <div class="col-md-12">
            <video  controls>
  <source src="video/ACRemoteICY.mp4" type="video/mp4">
  
  Your browser does not support the video tag.
</video>
              <br />
                  <video  controls>
  <source src="video/ACRemoteICY1.mp4" type="video/mp4">
  
  Your browser does not support the video tag.
</video>
          </div>
          
        </div>
      </div>
      </div>

                  <!-- 2nd -->
                  <div class="row">
      <!-- column  -->
      <div class="col-lg-10">
        <!-- Row -->
        <div class="row">
            <div class="col-md-12">
            <div class="pt-2">
              <h5 class="mt-4 font-weight-medium mb-0">AC PMS Steps Video</h5>
              
            </div>
          </div>
          <div class="col-md-12">
              <video  controls>
  <source src="video/AC-PMS Video.mp4" type="video/mp4">
  
  Your browser does not support the video tag.
</video>
          </div>
          
        </div>
      </div>
      </div>
</div>

<div id="Washing Machine" class="tabcontent">
  <h3>Washing Machine</h3>
  <div class="row">
      <!-- column  -->
      <div class="col-lg-10">
        <!-- Row -->
        <div class="row">
            <div class="col-md-12">
            <div class="pt-2">
              <h5 class="mt-4 font-weight-medium mb-0">Onida Washing machine Model-T85GRDH- Fully automatic washing Machine Demonstration</h5>
              
            </div>
          </div>
          <div class="col-md-12">
            <video  controls>
  <source src="video/WM heating function.mp4" type="video/mp4">
  
  Your browser does not support the video tag.
</video>
          </div>
          
        </div>
      </div>
      </div>
    <div class="row">
      <!-- second-->
      <div class="col-lg-10">
        <!-- Row -->
        <div class="row">
            <div class="col-md-12">
            <div class="pt-2">
              <h5 class="mt-4 font-weight-medium mb-0">Onida  Semiautomatic Washine BRISTLE  Washine Machine 7.2 Kg Demonstration</h5>
              
            </div>
          </div>
          <div class="col-md-12">
            <video  controls>
  <source src="video/semiautomatic WM demo.mp4" type="video/mp4">
  
  Your browser does not support the video tag.
</video>
          </div>
          
        </div>
      </div>
    </div>

    <div class="row">
      <!-- second-->
      <div class="col-lg-10">
        <!-- Row -->
        <div class="row">
            <div class="col-md-12">
            <div class="pt-2">
              <h5 class="mt-4 font-weight-medium mb-0">WM - T62CGN model demonstration video</h5>
              
            </div>
          </div>
          <div class="col-md-12">
            <video  controls>
  <source src="video/WMT62CGNdemovideo.mp4" type="video/mp4">
  
  Your browser does not support the video tag.
</video>
          </div>
          
        </div>
      </div>
    </div>
</div>

<div id="LED TV" class="tabcontent">
  <h3>LED TV</h3>
 
</div>

<div id="Microwave Oven" class="tabcontent">
  <h3>Microwave Oven</h3>
 
</div>

</div>
          </div>
      </div>
          
<footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
        <div class="row">
         
            <br />
          <!--<div class="col-md">
            <div class="ftco-footer-widget mb-5 ml-md-4">
              <h2 class="ftco-heading-2">Services</h2>
              <ul class="list-unstyled">
                <li><a href="#"><span class="ion-ios-arrow-round-forward mr-2"></span>Aircondition</a></li>
                <li><a href="#"><span class="ion-ios-arrow-round-forward mr-2"></span>Washing Machin</a></li>
                <li><a href="#"><span class="ion-ios-arrow-round-forward mr-2"></span>Microwave</a></li>
                <li><a href="#"><span class="ion-ios-arrow-round-forward mr-2"></span>Tv and Accessories</a></li>
                <li><a href="#"><span class="ion-ios-arrow-round-forward mr-2"></span>Others</a></li>
              </ul>
            </div>
          </div>
          -->
          <div class="col-md">
            <div class="ftco-footer-widget mb-5">
            	<h2 class="ftco-heading-2">Registered Office</h2>
              <p>Adonis Electronics Private Limited<br />
                  11/B, Mahal Industrial Estate,<br />
                  Off Mahakali Caves Road, <br />Paper Box Road, <br />Andheri East, <br />
                  Mumbai, Maharashtra 400093
              </p>
            </div>
          </div>
            <div class="col-md">
             <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-3">
                
                <li class="ftco-animate"><a target="_blank" href="https://twitter.com/AdonisElect"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a target="_blank" href="https://www.facebook.com/profile.php?id=100001963614422"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a target="_blank" href="https://www.instagram.com/adoniselectronics/"><span class="icon-instagram"></span></a></li>
                 <li class="ftco-animate"><a target="_blank" href="https://www.linkedin.com/in/adonis-electronics-7084181a0/"><span class="icon-linkedin"></span> </a></li>
              </ul>
                <br /><br />
                <br /><br />
               
                   <h6 style="color:white;">COVID19 Policy</h6>
               
                
              <ul class="list-unstyled float-md-left float-lft mt-3">
                  
                  <li class="blink"><a href="Covid19crclockdown.html" target="_blank">COVID19-CRC Lockdown </a> </li>
                  <li class="blink"><a href="NcovidCRC.html" target="_blank">NCOVID-CRC </a> </li>
                  <li class="blink"><a href="NcovidCRC1.html" target="_blank">NCOVID-CRC1</a> </li>
                  <li class="blink"><a href="NcovidCRC2SOP.html" target="_blank">NCOVID-CRC2 SOP</a> </li>
                  </ul>

                    
            </div>

             <div class="col-md">
            <div class="ftco-footer-widget mb-5 ml-md-4">
              <h2 class="ftco-heading-2">Policy</h2>
              <ul class="list-unstyled">
                <li><a href="TermsCondition.html" target="_blank"><span class="ion-ios-arrow-round-forward mr-2"></span>Terms & Conditions</a></li>
                <li><a href="RefundReturn.html" target="_blank"><span class="ion-ios-arrow-round-forward mr-2"></span>Refund & Return </a></li>
                <li><a href="PrivacySecurity.html" target="_blank"><span class="ion-ios-arrow-round-forward mr-2"></span>Privacy &  Security</a></li>
		<li><a href="FlipcartInstallation.html" target="_blank"><span class="ion-ios-arrow-round-forward mr-2"></span>Scope of Work & Commercials for installation of Split AC</a></li>
                             <li><a href="standardinstallationWM.html" target="_blank"><span class="ion-ios-arrow-round-forward mr-2"></span> Scope of Work for Standard Installation - Washing Machine</a></li>
                   <li><a href="StandardInstallationMWO.html" target="_blank"><span class="ion-ios-arrow-round-forward mr-2"></span> Scope of Work for Standard Installation - Microwave Oven</a></li>
              </ul>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p>
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Adonis Electronics Pvt Ltd</p>
  
          </div>
        </div>
      </div>
    </footer>
  
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>
      <script>
function openCity(evt, cityName) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
}
</script>

  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    <!-- for chatbot -->
      <script type="text/javascript" id="hs-script-loader" async defer src="//js.hs-scripts.com/7501622.js"></script>
  </body>
</html>