﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ServiceRequest.aspx.cs" Inherits="AdonisWebsite.ServiceRequest" %>


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
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Customer Support</a>
                    <div class="dropdown-menu dropdown-menu-left" aria-labelledby="navbarDropdownMenuLink1">
                        <a class="dropdown-item" href="Registration.aspx">Registration</a>
                    <a class="dropdown-item" href="TechnicalSupport.aspx">Technical Support</a>
                    
                    </div>
                </li>
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
    <section class="hero-wrap hero-wrap-abt" style="background-color:white;">
   
      <div class="container">
       
          <div class="col-md-9 ftco-animate">
            <br />
            <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Customer Support <i class="ion-ios-arrow-forward"></i></a></span> <span>Technical support <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
       
      </div>
    </section>
      
       <section class="ftco-section bg-light">
      <form id="frmReg" autocomplete="off" runat="server">
          <div class="container">
<asp:RadioButtonList ID="rblSelect" AutoPostBack="true" OnSelectedIndexChanged="rblSelect_SelectedIndexChanged" runat="server" RepeatColumns="2" Width="100%"  RepeatDirection="Horizontal">
    <asp:ListItem Value="Normal">Normal Service Request</asp:ListItem>
    <asp:ListItem Value="HC">Service Request for Cancer Patient/ Handicap </asp:ListItem>
</asp:RadioButtonList>

          <asp:Panel ID="normalPnel" runat="server" Visible="false">
              <p>Preventive Service Request</p>
              <div class="row">
          <div class="col-sm-2 col-md-2 col-xs-12">Full Name : </div>
          <div class="col-sm-2 col-md-2 col-xs-12"><asp:TextBox ID="txtFullname" runat="server" />
              <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtFullname" ForeColor="Red" Text="Enter Name" />
          </div>
          <div class="col-sm-2 col-md-2 col-xs-12">&nbsp; Mobile no : </div>
          <div class="col-sm-2 col-md-2 col-xs-12"><asp:TextBox ID="txtMobile" TextMode="Number" runat="server"/> 
              <asp:RequiredFieldValidator ID="rfvMobile" runat="server" ControlToValidate="txtMobile" ForeColor="Red" Text="Enter Mobile No" />
              </div>
          <div class="col-sm-2 col-md-2 col-xs-12">&nbsp;Email Id : </div>
          <div class="col-sm-2 col-md-2 col-xs-12"><asp:TextBox ID="txtEmail" runat="server"/>
              <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ForeColor="Red" Text="Enter Email Id" />
          </div>
         </div>
          
          <div class="row">
          <div class="col-sm-2 col-md-2 col-xs-12">Address : </div>
          <div class="col-sm-2 col-md-2 col-xs-12"><asp:TextBox ID="txtAddress" MaxLength="250" runat="server" />
              <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress" ForeColor="Red" Text="Enter Address" />
          </div>
          <div class="col-sm-2 col-md-2 col-xs-12">&nbsp; </div>
          <div class="col-sm-2 col-md-2 col-xs-12">&nbsp;Landmark : </div>
          <div class="col-sm-2 col-md-2 col-xs-12"><asp:TextBox ID="txtLandmark" MaxLength="250" runat="server" /> </div>
              <div class="col-sm-2 col-md-2 col-xs-12">&nbsp; </div>
         </div>
          
          <div class="row">
          <div class="col-sm-2 col-md-2 col-xs-12">State : </div>
          <div class="col-sm-2 col-md-2 col-xs-12"><asp:DropDownList ID="ddlstate" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlstate_SelectedIndexChanged" />
              <asp:RequiredFieldValidator ID="rfvstate" runat="server" ControlToValidate="ddlstate"
                ErrorMessage="Please Select" ForeColor="Red" InitialValue="--SELECT--"></asp:RequiredFieldValidator>
          </div>
          <div class="col-sm-2 col-md-2 col-xs-12">&nbsp; City: </div>
          <div class="col-sm-2 col-md-2 col-xs-12"><asp:DropDownList ID="ddlCity" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlCity_SelectedIndexChanged" />
              <asp:RequiredFieldValidator ID="rfvCity" runat="server" ControlToValidate="ddlCity"
                ErrorMessage="Please Select" ForeColor="Red" InitialValue="--SELECT--"></asp:RequiredFieldValidator>
          </div>
          <div class="col-sm-2 col-md-2 col-xs-12">&nbsp;Area: </div>
          <div class="col-sm-2 col-md-2 col-xs-12"><asp:DropDownList ID="ddlarea" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlarea_SelectedIndexChanged" />
              <asp:RequiredFieldValidator ID="rfvarea" runat="server" ControlToValidate="ddlarea"
                ErrorMessage="Please Select" ForeColor="Red" InitialValue="--SELECT--"></asp:RequiredFieldValidator>
          </div>
         </div>
          <br />

          <div class="row">
          <div class="col-sm-2 col-md-2 col-xs-12">Sub Area : </div>
          <div class="col-sm-2 col-md-2 col-xs-12"><asp:DropDownList ID="ddlsubarea" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlsubarea_SelectedIndexChanged" />
              <asp:RequiredFieldValidator ID="rfvsubarea" runat="server" ControlToValidate="ddlsubarea"
                ErrorMessage="Please Select" ForeColor="Red" InitialValue="--SELECT--"></asp:RequiredFieldValidator>
          </div>
              <div class="col-sm-2 col-md-2 col-xs-12"><span></span> </div>
          <div class="col-sm-2 col-md-2 col-xs-12">&nbsp; Pincode: </div>
          <div class="col-sm-2 col-md-2 col-xs-12"><asp:TextBox ID="txtPincode" runat="server" /> </div>
          <div class="col-sm-2 col-md-2 col-xs-12">&nbsp; </div>
          
         </div>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
              <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                      <ContentTemplate>
                
              <div class="row">
                    <div class="col-sm-2 col-md-2 col-xs-12">Product :  </div>
                  <div class="col-sm-2 col-md-2 col-xs-12">
                      <asp:DropDownList ID="ddlProduct" runat="server">
                          <asp:ListItem>--SELECT--</asp:ListItem>
                          <asp:ListItem Value="AC">Onida AC</asp:ListItem>
                          <asp:ListItem Value="AO">Other Brand AC</asp:ListItem>
                      </asp:DropDownList>
                  </div>
                  <div class="col-sm-2 col-md-2 col-xs-12">Quanity : </div>
                  <div class="col-sm-2 col-md-2 col-xs-12"><asp:DropDownList ID="ddlQnt" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlQnt_SelectedIndexChanged">
                      <asp:ListItem Value="0">--SELECT--</asp:ListItem>
                      <asp:ListItem Value="1">1</asp:ListItem>
                      <asp:ListItem Value="2">2</asp:ListItem>
                      <asp:ListItem Value="3">3</asp:ListItem>
                      <asp:ListItem Value="4">4</asp:ListItem>
                      <asp:ListItem Value="5">5</asp:ListItem>
                      <asp:ListItem Value="6">6</asp:ListItem>
                      <asp:ListItem Value="7">7</asp:ListItem>
                      <asp:ListItem Value="8">8</asp:ListItem>
                      <asp:ListItem Value="9">9</asp:ListItem>
                      <asp:ListItem Value="10">10</asp:ListItem>
                      </asp:DropDownList> </div>
                  <div class="col-sm-2 col-md-2 col-xs-12"><span></span></div>
                  
                          <div class="col-sm-2 col-md-2 col-xs-12"><span></span> </div>
                  </div>
              
                          <br />
              <div class="row">
                  <div class="col-sm-2 col-md-2 col-xs-12">Price</div>
                  <div class="col-sm-2 col-md-2 col-xs-12"><asp:Label ID="txtPrice" runat="server"></asp:Label>   </div>
                  <div class="col-sm-2 col-md-2 col-xs-12">Discount : </div>
                  <div class="col-sm-2 col-md-2 col-xs-12"><asp:Label ID="lblDiscountvalue" runat="server"></asp:Label>   </div>
                  <div  class="col-sm-3 col-md-3 col-xs-12"><asp:Label ID="lblDiscount" Visible="false" runat="server"></asp:Label></div>
              </div>


                          </ContentTemplate>
                      </asp:UpdatePanel>
          <br />
          </asp:Panel>


          
          <asp:Panel ID="chPanel" runat="server" Visible="false">
              <p>Preventive Service Request For Cancer and Handicap user</p>
          </asp:Panel>
              </div>
 </form>
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