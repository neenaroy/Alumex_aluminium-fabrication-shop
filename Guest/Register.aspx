<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Guest_Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Alumex Aluminium Fabrication</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="" />

  <!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Flexslider  -->
	<link rel="stylesheet" href="css/flexslider.css">
	<!-- Flaticons  -->
	<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
	<!-- Owl Carousel -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
</head>
<body>
    <div id="colorlib-page">
		<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
		<aside id="colorlib-aside" role="complementary" class="border js-fullheight">
			<h1 id="colorlib-logo"><a href="index.html">Alumex Aluminium Fabrication</a></h1>
			<nav id="colorlib-main-menu" role="navigation">
				<ul>
					<li><a href="index.aspx">Home</a></li>
					<li><a href="work.html">Project</a></li>
					<li><a href="about.html">About</a></li>
					<li><a href="services.html">Services</a></li>
					<li><a href="blog.html">Blog</a></li>
					<li class="colorlib-active"><a href="contact.html">Contact</a></li>
                    <li><a href="login.aspx">Login</a></li>
				</ul>
			</nav>

			</aside>

		<div id="colorlib-main">

			<div class="colorlib-contact">
				<div class="colorlib-narrow-content">
					<div class="row">
						<div class="col-md-12 animate-box" data-animate-effect="fadeInLeft">
							<span class="heading-meta">Read</span>
							<h2 class="colorlib-heading">Enter Your Details Here..</h2>
						</div>
					</div>
						<div class="col-md-9 col-md-push-1">
							<div class="row">
								<div class="col-md-10 col-md-offset-1 col-md-pull-1 animate-box" data-animate-effect="fadeInLeft">
                                     <form id="form1" runat="server">
                                        <div class="form-group">
                                             <asp:TextBox ID="txtfname" runat="server" CausesValidation="True" class="form-control" placeholder="First Name"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtfname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                             <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtfname" ErrorMessage="Enter a valid name" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                                            </div>
                                         <div class="form-group">
                                             <asp:TextBox ID="txtlname" runat="server" CausesValidation="True" class="form-control" placeholder="Last Name" ></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtlname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtlname" ErrorMessage="Enter a valid name" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                                         </div>
                                     <div class="form-group">
                                             <asp:TextBox ID="txthousename" runat="server" CausesValidation="True" class="form-control" placeholder="Address Line" ></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txthousename" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                             <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txthousename" ErrorMessage="Enter a valid address" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                                     </div>
                                     <div class="form-group">
                                             <asp:TextBox ID="txtemail" runat="server" CausesValidation="True" class="form-control" placeholder="Email"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                             <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter a valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                     </div>
                                </div>
                            </div>
						</div>
                    <div class="col-md-9 col-md-push-1">
							<div class="row">
								<div class="col-md-10 col-md-offset-1 col-md-pull-1 animate-box" data-animate-effect="fadeInLeft">
                                     <div class="form-group">
                                            <asp:TextBox ID="txtmobile" runat="server" CausesValidation="True" class="form-control" placeholder="Mobile Number"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtmobile" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtmobile" ErrorMessage="Enter a valid number" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                                    </div>
                                    <div class="form-group">
                                            <asp:TextBox ID="txtloc" runat="server" CausesValidation="True" class="form-control" placeholder="Location"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtloc" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtloc" ErrorMessage="Enter a valid name" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                                    </div>
                                    <div class="form-group">
                                             <asp:TextBox ID="txtpswd" runat="server" CausesValidation="True" class="form-control" placeholder="Password"></asp:TextBox>
                                     </div>
                                    <div class="form-group">
                                         <asp:TextBox ID="txtrpswd" runat="server" CausesValidation="True" class="form-control" placeholder="Confirm Password"></asp:TextBox>
                                    </div>
					                <div class="form-group">
                                     <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-primary btn-send-message" OnClick="Button1_Click"   />
					                </div>
                                </form>
                            </div>								
				        </div>
			      </div>
              </div>								
				</div>
			</div>
		</div>
			
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<!-- Sticky Kit -->
	<script src="js/sticky-kit.min.js"></script>
	<!-- Owl carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- Counters -->
	<script src="js/jquery.countTo.js"></script>
	<!-- Google Map -->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"></script>
	<script src="js/google_map.js"></script>
	
	
	<!-- MAIN JS -->
	<script src="js/main.js"></script>

</body>
</html>
