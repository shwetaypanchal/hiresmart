<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="AdonisWebsite.Product" %>


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
          .fcolor{
              color:white;
              font-size:16px;
          }
         .somesection {margin-top:50px!important;}
          .val
          {
               font-size:18px;
  float:right;
  width:65%; /*important*/
  bottom:21vw; /*important*/
  padding: 20px 70px;
  background:#0088cc9e;
              box-shadow:2px 2px 2px 2px #0044cca8;
          
          }
          img{
              max-width:100%;
              max-height:100%;
              background-size:cover;
              background-position: center;
  background-repeat: no-repeat;
          }
          .bg1{
              background-image: url(images/ADOINS_BANNERS_2.jpg);
  /* Full height */
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
          }
          .box {
  background-color: rgba(255, 255, 255, 0.3);
  border-radius: 5px;
  font-family: sans-serif;
  text-align: center;
  line-height: 1; 
 -webkit-backdrop-filter: blur(10px);
  backdrop-filter: blur(10px);  

  max-height: 50%;
  padding: 20px 40px;
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
   
      <div class="container somesection">
       
          <div class="col-md-9 ftco-animate">
            <br />
            <p class="breadcrumbs"><span class="mr-2"><a href="Home.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Product <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
       
      </div>
    </section>
  <section class="ftco-section bg1">
			<div class="container box text-center">
                <h4 class="text-center" style="color:white;">Accessories YOU may not like to Ignore!</h4>
                
    
          <div class="row">
              <div class="col-xs-5 item" data-aos="fade-right">
              <img src = "images/wallbrkt.jpg">

          </div>
              <div class="col-xs-7 val" data-aos="fade-left">
                  <h4>AC Out Door Unit(ODU) Wall bracket</h4>
                 
                  
                  <span class="fcolor"><ul class="text-justify">
                      <li>High vibration resistant Coated Metal Wall Bracket
                      <li>Safe & Designed to perform without compromising the aesthetics </li>
                      <li>Sturdy & long lasting </li>
                      <li>Available in 09 variants 
                      <li>Available with nails & fasteners 
                  </ul>
                      </span>
                  <button class="btn btn-primary" data-toggle="modal" data-target="#myModal">View PDF</button>
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
        <div class="row">
          <div class="col-md-12 text-center">

            <p>
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Adonis Electronics Pvt Ltd</p>
  
          </div>
        </div>
      </div>
    </footer>
    
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4> 
      </div>
      <div class="modal-body">
        <div style="text-align: center;">
<iframe src="PDF/WallBracket-brochure.pdf" 
style="width:500px; height:500px;" frameborder="0"></iframe>
</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

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
    <%--<script type="text/javascript">
        (function(a){a.createModal=function(b){defaults={title:"",message:"Your Message Goes Here!",closeButton:true,scrollable:false};var b=a.extend({},defaults,b);var c=(b.scrollable===true)?'style="max-height: 420px;overflow-y: auto;"':"";html='<div class="modal fade" id="myModal">';html+='<div class="modal-dialog">';html+='<div class="modal-content">';html+='<div class="modal-header">';html+='<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>';if(b.title.length>0){html+='<h4 class="modal-title">'+b.title+"</h4>"}html+="</div>";html+='<div class="modal-body" '+c+">";html+=b.message;html+="</div>";html+='<div class="modal-footer">';if(b.closeButton===true){html+='<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>'}html+="</div>";html+="</div>";html+="</div>";html+="</div>";a("body").prepend(html);a("#myModal").modal().on("hidden.bs.modal",function(){a(this).remove()})}})(jQuery);

/*
* Here is how you use it
*/
$(function(){    
    $('.view-pdf').on('click',function(){
        var pdf_link = $(this).attr('href');
        var iframe = '<div class="iframe-container"><iframe src="'+pdf_link+'"></iframe></div>'
        $.createModal({
       
        message: iframe,
        closeButton:true,
        scrollable:false
        });
        return false;        
    });    
})
    </script>--%>

      <!-- for chatbot -->
      <script type="text/javascript" id="hs-script-loader" async defer src="//js.hs-scripts.com/7501622.js"></script>
  </body>
</html>