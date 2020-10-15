<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyProfile.aspx.cs" Inherits="AdonisWebsite.CompanyProfile" %>


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

.blue-bg {
 background-color: #022d5d;
    color: #fccb1d;
  height: 100%;
}

.circle {
  font-weight: bold;
  padding: 15px 20px;
  border-radius: 50%;
  background-color: #fccb1d;
  color: #4D4545;
  max-height: 50px;
  z-index: 2;
}

.how-it-works.row {
  display: flex;
}
.how-it-works.row .col-2 {
  display: inline-flex;
  align-self: stretch;
  align-items: center;
  justify-content: center;
}
.how-it-works.row .col-2::after {
  content: "";
  position: absolute;
  border-left: 3px solid #fccb1d;
  z-index: 1;
}
.how-it-works.row .col-2.bottom::after {
  height: 50%;
  left: 50%;
  top: 50%;
}
.how-it-works.row .col-2.full::after {
  height: 100%;
  left: calc(50% - 3px);
}
.how-it-works.row .col-2.top::after {
  height: 50%;
  left: 50%;
  top: 0;
}

.timeline div {
  padding: 0;
  height: 40px;
}
.timeline hr {
  border-top: 3px solid #fccb1d;
  margin: 0;
  top: 17px;
  position: relative;
}
.timeline .col-2 {
  display: flex;
  overflow: hidden;
}
.timeline .corner {
  border: 3px solid #fccb1d;
  width: 100%;
  position: relative;
  border-radius: 15px;
}
.timeline .top-right {
  left: 50%;
  top: -50%;
}
.timeline .left-bottom {
  left: -50%;
  top: calc(50% - 3px);
}
.timeline .top-left {
  left: -50%;
  top: -50%;
}
.timeline .right-bottom {
  left: 48.5%;
  top: calc(50% - 3px);
}

ul {
    -webkit-column-count: 2;
    -moz-column-count: 2;
    column-count: 2;
}
      </style>
  </head>
  <body>
    <div class="bg-top navbar-light">
    	<div class="container">
    		<div class="row no-gutters d-flex align-items-center align-items-stretch">
    			<div class="col-md-3 d-flex align-items-center py-4">
    				<a class="navbar-brand" href="index.html">
                        <img class="img-responsive" src="images/AdonisLogoSmall.jpg"  />
    				</a>
    			</div>
	    		<div class="col-lg-9 d-block">
		    		<div class="row d-flex">
					    <div class="col-md d-flex topper align-items-center align-items-stretch py-md-4">
					    	<div class="icon d-flex justify-content-center align-items-center"><span class="icon-paper-plane"></span></div>
					    	<div class="text d-flex align-items-center">
						    	<span>sysmail@adonis.co.in</span>
						    </div>
					    </div>
					    <div class="col-md d-flex topper align-items-center align-items-stretch py-md-4">
					    	<div class="icon d-flex justify-content-center align-items-center"><span class="icon-phone2"></span></div>
						    <div class="text d-flex align-items-center">
						    	<span>Call Us: 022 4090 8931</span>
						    </div>
					    </div>
					    <div class="col-md topper d-flex align-items-center align-items-stretch">
					    	<p class="mb-0 d-flex d-block">
					    		
					    	</p>
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
    
    <%--<section class="hero-wrap hero-wrap-abt" style="background-color:white;">
   
      <div class="container">
       
          <div class="col-md-9 ftco-animate">
            <br />
            <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Company <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
       
      </div>
    </section>--%>

   
    <section class="ftco-section">
				
<div class="container-fluid blue-bg">
  <div class="container">
    <h2 class="pb-3 pt-2" style="color:white;">Brand Served</h2>
    <!--first section-->
    <div class="row align-items-center how-it-works">
      <div class="col-2 text-center bottom">
        <div class="circle">1</div>
      </div>
      <div class="col-6">
        <h5 style="color:white;">2001 - 2005</h5>
  <ul>  <li>   ONIDA</li>
<li>SAMTEL</li>
<li>BENQ</li> 
<li>JVC</li> 
<li>wipro</li> 
<li>InFocus </li>
<li>ZTE</li>
      </ul>
      </div>
    </div>
    <!--path between 1-2-->
    <div class="row timeline">
      <div class="col-2">
        <div class="corner top-right"></div>
      </div>
      <div class="col-8">
        <hr/>
      </div>
      <div class="col-2">
        <div class="corner left-bottom"></div>
      </div>
    </div>
    <!--second section-->
    <div class="row align-items-center justify-content-end how-it-works">
      <div class="col-6 text-right">
        <h5>2006 - 2009</h5>
         <ul class="text-justify">
         <li> Motorola
<li>Rose Telecom
<li>Belu
<li>SANYO
<li>moserbaer
<li>TCL
<li>Kyocera
<li>Hypercity
         </ul>
         
      </div>
      <div class="col-2 text-center full">
        <div class="circle">2</div>
      </div>
    </div>
    <!--path between 2-3-->
    <div class="row timeline">
      <div class="col-2">
        <div class="corner right-bottom"></div>
      </div>
      <div class="col-8">
        <hr/>
      </div>
      <div class="col-2">
        <div class="corner top-left"></div>
      </div>
    </div>
    <!--third section-->
    <div class="row align-items-center how-it-works">
      <div class="col-2 full">
        <div class="circle">3</div>
      </div>
      <div class="col-6 text-center">
        <h5>2010 - 2015</h5>
        <ul>  
          <li> AOC 
<li>MCC
<li>dish tv
<li>TATA AIG
<li>Airtel DTH
<li>Philips 
<li>i-Buzz Beetel
<li>Diebold
<li>Blue Star
<li>EPS
<li>Live
<li>SG
<li>Skyworth
              
              </ul>
      </div>
    </div>

       <div class="row timeline">
      <div class="col-2">
        <div class="corner top-right"></div>
      </div>
      <div class="col-8">
        <hr/>
      </div>
      <div class="col-2">
        <div class="corner left-bottom"></div>
      </div>
    </div>
    <!--second section-->
    <div class="row align-items-center justify-content-end how-it-works">
      <div class="col-6 text-right">
        <h5>2016 - 2018</h5>
       <ul class="text-justify">
          <li>   Vijay Sales
<li>Amazon
<li>Saregama
<li>Yash Electronics 
<li>LUMAX 
<li>BPL 
<li>Future Tech
<li>Daewoo
<li>Flipkart
<li>Croma
      </ul>
      </div>
      <div class="col-2 text-center full">
        <div class="circle">4</div>
      </div>
    </div>
      <div class="row timeline">
      <div class="col-2">
        <div class="corner right-bottom"></div>
      </div>
      <div class="col-8">
        <hr/>
      </div>
      <div class="col-2">
        <div class="corner top-left"></div>
      </div>
    </div>
        <div class="row align-items-center how-it-works">
      <div class="col-2 text-center top">
        <div class="circle">5</div>
      </div>
      <div class="col-6">
        <h5>2019</h5>
        <p></p>
      </div>
    </div>

       <div class="row timeline">
      <div class="col-2">
        <div class="corner top-right"></div>
      </div>
      <div class="col-8">
        <hr/>
      </div>
      <div class="col-2">
        <div class="corner left-bottom"></div>
      </div>
    </div>
  </div>
</div>
			
		</section>

		
		
	
		
		
   <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-5">
             
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-3">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
            
          </div>
            <br />
          <div class="col-md">
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
          
          <div class="col-md">
            <div class="ftco-footer-widget mb-5">
            	<h2 class="ftco-heading-2">Corporate Office</h2>
              <p>
                  11/B, Mahal Industrial Estate,<br />
                  Off Mahakali Caves Road, Paper Box Road, Andheri East, <br />
                  Mumbai, Maharashtra 400093
              </p>
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