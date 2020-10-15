<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="AdonisWebsite.Home" %>

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
          .slide-right {
  width: 100%;
  overflow: hidden;
 color:#0094ff;
}

.slide-right li {
  animation: 2s slide-right;
  animation-delay: 2s;
}

@keyframes slide-right {
  from {
    margin-left: -500px;
  }

  to {
    margin-left: 0%;
  }
}
/*.shadow {
   text-shadow: 2px 2px 4px #000;
}*/
.count{
    line-height: 1;
    font-weight: 900;
    font-size: 50px;
    color: rgba(0, 0, 0, 0.8)
}
.slidetext{
    text-shadow: 2px 2px 2px #ffc107;
    font-size: -webkit-xxx-large;
    font-weight: 900;
}
/*video { 
    min-height: 100% !important;
    min-width: 100% !important;
	height: auto !important;
    width: auto !important;
	overflow: hidden;
}*/
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
    
    <section class="home-slider owl-carousel" data-interval="10000">
        <div class="slider-item" style="background-image:url(images/adonisbannernew1.jpg);" data-stellar-background-ratio="0.5">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row no-gutters slider-text align-items-center justify-content-end" data-scrollax-parent="true">
          <div class="col-md-6 text ftco-animate pl-md-5">
        
            
            
          </div>
        </div>
        </div>
      </div>
      <div class="slider-item" style="background-image:url(images/adonisbannernew2.jpg);" data-stellar-background-ratio="0.5">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row no-gutters slider-text align-items-center justify-content-end" data-scrollax-parent="true">
          <div class="col-md-6 text ftco-animate pl-md-5">
            
          </div>
        </div>
        </div>
      </div>
        <div class="slider-item" style="background-image:url(images/adonisbannernew3.jpg);" data-stellar-background-ratio="0.5">
      	<div class="overlay"></div>
        <div class="container">
          <div class="row no-gutters slider-text align-items-center justify-content-end" data-scrollax-parent="true">
          <div class="col-md-6 text ftco-animate pl-md-5">
            
          </div>
        </div>
        </div>
      </div>
      <div class="slider-item" style="background-image:url(images/Staffpic1.jpg);" 
          data-stellar-background-ratio="0.3">
      	
        <div class="container">
          <div class="row no-gutters slider-text align-items-center justify-content-end" 
              data-scrollax-parent="true">
          <div class="col-md-6 text ftco-animate pl-md-5">
            <h1 class="mb-4" style="font-size:30px;">One Team One Goal<span class="slidetext">Customer Delight</span></h1>
            
            
          </div>
        </div>
        </div>
      </div>

        
         <div class="slider-item" style="background-image:url(images/staffpic2.jpg);" data-stellar-background-ratio="0.5">
      	
        <div class="container">
          <div class="row no-gutters slider-text align-items-center justify-content-end" data-scrollax-parent="true">
          <div class="col-md-6 text ftco-animate pl-md-5">
            <h1 class="mb-4" style="font-size:30px;">One Team One Goal<span class="slidetext">Customer Delight</span></h1>
            
          </div>
        </div>
        </div>
      </div>
         <div class="slider-item" style="background-image:url(images/staffpic3.jpg);" data-stellar-background-ratio="0.5">
      	
        <div class="container">
          <div class="row no-gutters slider-text align-items-center justify-content-end" data-scrollax-parent="true">
          <div class="col-md-6 text ftco-animate pl-md-5">
          <h1 class="mb-4" style="font-size:30px;">One Team One Goal<span class="slidetext">Customer Delight</span></h1>
            
          </div>
        </div>
        </div>
      </div>
         <div class="slider-item" style="background-image:url(images/staffpic4.jpg);" data-stellar-background-ratio="0.5">
      	
        <div class="container">
          <div class="row no-gutters slider-text align-items-center justify-content-end" data-scrollax-parent="true">
          <div class="col-md-6 text ftco-animate pl-md-5">
            <h1 class="mb-4" style="font-size:30px;">One Team One Goal<span class="slidetext">Customer Delight</span></h1>
          </div>
        </div>
        </div>
      </div>
         
    </section>

    <section class="ftco-services ftco-no-pt">
			<div class="container">
				<div class="row justify-content-center mb-5 pb-2">
          <div class="col-md-12 text-center heading-section ftco-animate">
          
            <h2 class="mb-4">Products</h2>
            <p style="color:#ffc107;">Accessories YOU may not like to Ignore!</p>
              <h2 style="text-shadow:1px 0 black, 0 1px black, 1px 0 black, 0 -1px black; color:#ffc107;"> All the accessories are designed & built keeping YOU in mind.</h2>

                <div class="row" style="font-weight:500; color:black;">
                    <div class="col-md-1"><span></span></div>
                  <div class="col-md-2" style="background-color:#1e73d473;margin:10px 10px 0px 0px;padding-top:10px;">  High vibration resistant <span style="font-weight:900;">  Coated Metal Wall Bracket</span> for Room Air Conditioners.</div>
                  <div class="col-md-2" style="background-color:#ffbf009c;margin:10px 10px 0px 0px;">High vibration resistant <span style="font-weight:900;"> Powder Coated Metal Trolley</span> for Semi & Fully automatic Washing Machine</div>
                    <div class="col-md-2" style="background-color:black;color:white;margin:10px 10px 0px 0px; padding-top:40px;"><span style="font-weight:900;">Fibre Stands </span>for Washing machines & Refrigerators.</div>
                    <div class="col-md-2" style="background-color:#1e73d473;margin:10px 10px 0px 0px; padding-top:40px;"><span style="font-weight:900;"> Anti-Corrosive Chemical</span> for Air Conditioners.</div>
                    <div class="col-md-2" style="background-color:#ffbf009c;margin:10px 10px 0px 0px;padding-top:20px;"><span style="font-weight:900;">Annual Maintenance Contract</span> for Room Air Conditioners.</div>
                    <div class="col-md-1"><span></span></div>
              </div>
             
          </div>
        </div>
              
				<div class="row">
          <div class="col-md-4 d-flex services align-self-stretch p-4 ftco-animate">
            <div class="media block-6 d-block text-justify">
              
              <div class="media-body p-2 mt-3">
                <h3 class="heading text-center">Operational Strengths</h3>
               <ul> <li>Nation-Wide footprint of Customer Relationship Centers.
                  <li>Team of Trained Engineers.
                  <li>Stringent TAT Parameters
                  <li>Quick rollout of operations.
                   <li>24*7 multilingual call center with chat & Email support
                   </ul>
              </div>
            </div>      
          </div>
          <div class="col-md-4 d-flex services align-self-stretch p-4 ftco-animate">
            <div class="media block-6 d-block text-justify">
              
              <div class="media-body p-2 mt-3">
                <h3 class="heading text-center">Managerial Strengths</h3>
               <ul> <li>Varied services under single roof
                  <li>Structured Complaint readdressal process
                  <li>Well defined SOPs for Customer Delight.
                  <li>End to end logistic solutions.
                   </ul>
              </div>
            </div>    
          </div>
          <div class="col-md-4 d-flex services align-self-stretch p-4 ftco-animate">
            <div class="media block-6 d-block text-justify">
              
              <div class="media-body p-2 mt-3">
                <h3 class="heading text-center">Technological Strengths</h3>
               <ul> <li>State of the art CRM.
                  <li>App support
                  <li>Panel & board repair facility
                  <li>Customizable reports on one Click avaiblable 24*7
                   </ul>
              </div>
            </div>      
          </div>
          
			</div>
		</section>
		
		
		<section class="ftco-intro" style="background-image: url(images/ADOINS_BANNERS_10.jpg);" data-stellar-background-ratio="0.5">
	
      <video class="video-fluid" controls id="myvideo">
        <source src="video/TeamAdonisMuskurayegaIndia.mp4" class="active" type="video/mp4" />
        <source src="video/HappyToServe.mp4" type="video/mp4" />
          <source src="video/CustomerSpeak2.mp4" type="video/mp4" />
      </video>
    <%--<div class="carousel-item">
      <video class="video-fluid" autoplay loop muted>
        <source src="https://mdbootstrap.com/img/video/Agua-natural.mp4" type="video/mp4" />
      </video>
    </div>--%>
  
  <!--/.Slides-->
  <!--Controls-->
  <a class="carousel-control-prev" href="#video-carousel-example" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#video-carousel-example" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
  <!--/.Controls-->

<!--Carousel Wrapper-->
			
		</section>
		
	
    <section class="ftco-counter img" id="section-counter" style="background-image: url(images/bg_3.jpg);" data-stellar-background-ratio="0.5">
    	<div class="container">
				<div class="row">
          <div class="col-md-6 col-lg-4 d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18 d-flex">
              <div class="text d-flex align-items-center">
                <strong class="count">33</strong>
              </div>
              <div class="text-2">
              	<span>Years of <br>Experience</span>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18 d-flex">
              <div class="text d-flex align-items-center">
                <strong class="number">Millions</strong>
              </div>
              <div class="text-2">
              	<span>Of Happy <br>Customers</span>
              </div>
            </div>
          </div>
          <!--<div class="col-md-6 col-lg-3 d-flex justify-content-center counter-wrap ftco-animate">
            <div class="block-18 d-flex">
              <div class="text d-flex align-items-center">
                <strong class="number" data-number="100">0</strong>
              </div>
              <div class="text-2">
              	<span>Professional <br>Expert</span>
              </div>
            </div>
          </div>-->
          <div class="col-md-6 col-lg-4 d-flex justify-content-center counter-wrap ftco-animate-">
            <div class="block-18 d-flex">
              <div class="text d-flex align-items-center">
                <strong class="count">5</strong>
              </div>
              <div class="text-2">
              	<span>Smiling <br>faces per minute*</span>
              </div>
            </div>
          </div>
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
                    <li><a href="TermsCondition.html" target="_blank"><span class="ion-ios-arrow-round-forward mr-2"></span>Terms & Condition</a></li>
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
    
  
      StandardInstallationMWO
  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none"
      stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


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
    <script type="text/javascript">
        $('.count').each(function () {
    $(this).prop('Counter',0).animate({
        Counter: $(this).text()
    }, {
        duration: 2000,
        easing: 'swing',
        step: function (now) {
            $(this).text(Math.ceil(now));
        }
    });
        });
        var myvid = document.getElementById('myvideo');

myvid.addEventListener('ended', function(e) {
  // get the active source and the next video source.
  // I set it so if there's no next, it loops to the first one
  var activesource = document.querySelector("#myvideo source.active");
  var nextsource = document.querySelector("#myvideo source.active + source") || document.querySelector("#myvideo source:first-child");
  
  // deactivate current source, and activate next one
  activesource.className = "";
  nextsource.className = "active";
  
  // update the video source and play
  myvid.src = nextsource.src;
  myvid.play();
});

    </script>
      <!-- Start of HubSpot Embed Code -->
  <script type="text/javascript" id="hs-script-loader" async defer src="//js.hs-scripts.com/7501622.js"></script>
<!-- End of HubSpot Embed Code -->
  </body>
</html>