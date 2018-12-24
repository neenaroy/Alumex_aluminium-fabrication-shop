<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="User_register" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>Alumex Aluminium Fabrication</title>	
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="Intrend Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!--// Meta tag Keywords -->
		
	<!-- css files -->
	<link rel="stylesheet" href="css/bootstrap.css"> <!-- Bootstrap-Core-CSS -->
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" /> <!-- Style-CSS --> 
	<link rel="stylesheet" href="css/fontawesome-all.css"> <!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->
	
	<!-- web-fonts -->
	<link href="//fonts.googleapis.com/css?family=Poiret+One&amp;subset=cyrillic,latin-ext" rel="stylesheet">
	<!-- //web-fonts -->
</head>
<body>
      <!-- banner -->
<div class="inner-page-banner" id="home"> 	   
	<!--Header-->
	<header>
		<div class="container agile-banner_nav">
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				
				<h1><a class="navbar-brand" href="index.html">Alumex <span class="display"></span></a></h1>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item">
							<a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="about.html">About</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="services.html">Services</a>
						</li>
						<li class="dropdown nav-item">
							<a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">Pages
								<b class="caret"></b>
							</a>
							<ul class="dropdown-menu agile_short_dropdown">
								<li>
									<a href="error.html">Error Page</a>
								</li>
								<li>
									<a href="single.html">Single Page</a>
								</li>
							</ul>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="projects.html">Projects</a>
						</li>
						<li class="nav-item active">
							<a class="nav-link" href="contact.html">Contact</a>
						</li>
					</ul>
				</div>	  
			</nav>
		</div>
	</header>
	<!--Header-->
</div>
<!-- //banner --> 


<!-- contact -->
<section class="contact py-5">
	<div class="container">
		<h2 class="heading text-capitalize mb-sm-5 mb-4">Enter Your Details.... </h2>
			<div class="mail_grid_w3l">
      		<form runat="server" >
               <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
					<div class="row">
						<div class="col-md-6 contact_left_grid" data-aos="fade-right">
							<div class="contact-fields-w3ls">
                                <asp:TextBox ID="txtfname" runat="server" CausesValidation="True" class="form-control" placeholder="First Name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtfname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtfname" ErrorMessage="Enter a valid name" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                            </div>
							<div class="contact-fields-w3ls">
                                <asp:TextBox ID="txtlname" runat="server" CausesValidation="True" class="form-control" placeholder="Last Name" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtlname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtlname" ErrorMessage="Enter a valid name" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                            </div>
                            <div class="contact-fields-w3ls">
                                <asp:TextBox ID="txthousename" runat="server" CausesValidation="True" class="form-control" placeholder="Address Line" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txthousename" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txthousename" ErrorMessage="Enter a valid address" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                            </div>
                            <div class="contact-fields-w3ls">
                                <asp:TextBox ID="txtemail" runat="server" CausesValidation="True" class="form-control" placeholder="Email"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter a valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </div>
                            <div class="contact-fields-w3ls">
                                 <asp:TextBox ID="txtmobile" runat="server" CausesValidation="True" class="form-control" placeholder="Mobile Number"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtmobile" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtmobile" ErrorMessage="Enter a valid number" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                            </div>
                            <div class="contact-fields-w3ls">
                                <asp:TextBox ID="txtloc" runat="server" CausesValidation="True" class="form-control" placeholder="Location"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtloc" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                               <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtloc" ErrorMessage="Enter a valid name" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                            </div>
                            <div class="contact-fields-w3ls">
                               <asp:TextBox ID="txtpswd" runat="server" CausesValidation="True" class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                                <cc1:PasswordStrength ID="txtpswd_PasswordStrength" runat="server" Enabled="True" TargetControlID="txtpswd">
                                </cc1:PasswordStrength>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtpswd" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                   </div>
                            <div class="contact-fields-w3ls">
                                <asp:TextBox ID="txtrpswd" runat="server" CausesValidation="True" class="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                                 <cc1:PasswordStrength ID="txtrpswd_PasswordStrength" runat="server" Enabled="True" TargetControlID="txtrpswd">
                                </cc1:PasswordStrength>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtrpswd" ErrorMessage="*" ForeColor="Red" ></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Mismatch" ControlToCompare="txtpswd" ControlToValidate="txtrpswd" ForeColor="Red"></asp:CompareValidator>
                               </div>
                            <div class="contact-fields-w3ls">
                                 <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-primary btn-send-message" OnClick="Button1_Click"   />
							</div>
					</div>
                </form>
			</div>
		</div>
</section>
   
<!-- js-scripts -->		

	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.2.3.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script> <!-- Necessary-JavaScript-File-For-Bootstrap --> 
	<!-- //js -->

	<!-- start-smoth-scrolling -->
	<script src="js/SmoothScroll.min.js"></script>
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
	    jQuery(document).ready(function ($) {
	        $(".scroll").click(function (event) {
	            event.preventDefault();
	            $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
	        });
	    });
	</script>
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
	    $(document).ready(function () {
	        /*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/

	        $().UItoTop({ easingType: 'easeOutQuart' });

	    });
	</script>
	<!-- //here ends scrolling icon -->
	<!-- start-smoth-scrolling -->
	
<!-- //js-scripts -->
</body>
</html>
