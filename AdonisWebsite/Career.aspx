<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Career.aspx.cs" Inherits="AdonisWebsite.Career" %>

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
          .job-post{
              border:1px solid black;
              box-shadow:2px 2px 2px 2px #888888;
              background-color:#0094ff5e;
              color:black;
          }

          .job {
            -moz-animation-duration: 3s;
            -webkit-animation-duration: 3s;
            -moz-animation-name: slidein;
            -webkit-animation-name: slidein;
         }
         @-moz-keyframes slidein {
            from {
               margin-left:100%;
               width:300%
            }
            75% {
               font-size:300%;
               margin-left:25%;
               width:150%;
            }
            to {
               margin-left:0%;
               width:100%;
            }
         }
         @-webkit-keyframes slidein {
            from {
               margin-left:100%;
               width:300%
            }
            75% {
               font-size:300%;
               margin-left:25%;
               width:150%;
            }
            to {
               margin-left:0%;
               width:100%;
            }
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
     <section class="ftco-section">
			<div class="container">

				<div class="row no-gutters">

					<div class="col-md-5 p-md-5 img img-2 mt-5 mt-md-0" style="background-image: url(images/ADOINS_BANNERS_5.jpg);">
					</div>
					<div class="col-md-7 wrap-about py-5 px-4 px-md-5 ftco-animate">
	         
	           
                   <h2>Career</h2>
                We use our strong processes & technology to back up the robust network spread across the country
To achieve the goal – Customer Delight.<br />
We empower the people to understand the processes & connect their ideas to the environment around them & ensure that the strong ideas yield amazing results for the world.<br />
As an organisation, we value being Honest, Integral & Professional in all the tasks.
We celebrate hard work, dedication & success; ensure the employee has balanced work life with quality time to spend with the family & friends & pursue further in the areas of his/her interests.<br />
          At Adonis, we celebrate diversity and do not discriminate on the basis of race, colour, religion, gender , national, social or ethnic origin, political affiliation, sexual orientation, marital status, disability, age, veteran status, or other legally protected characteristics.
          <br />
All employment decisions are based on business needs, job requirements, competence and merit.
          <br />
          <br />
Welcome to Adonis! Make your ideas count & contribute towards society!!
          
			</div>
        <br />
                    </div>
                <br />
        <h4>Share Your CV at <a href="mailto:customer.care@adonis.co.in" target="_blank">hr@adonis.co.in</a></h4>
        </div>
      <br />
      
      <div class="container">
          <h4 style="color:#fda729">Current Requirement</h4>
          <div class="col-lg-8 job-post">
              
              <h4 class="job">Software Developer</h4>
              Looking for software developer with excellent knowledge on ASP.Net and MVC. 
              <br />
              Knowlegede on HTML, CSS, and Bootstrap<br />
              2-3 years of experience required<br />
              Location : Andheri,Mumbai
          </div>
      </div>
 </section>

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