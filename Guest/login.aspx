<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Guest_login" %>

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
					<li class="nav-item active">
						<a class="nav-link" href="Index.aspx">Home <span class="sr-only">(current)</span></a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="about.aspx">About</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="View_projects.aspx">Projects</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="contact.aspx">Contact</a>
					</li>
                    <li class="nav-item">
						<a class="nav-link" href="login.aspx">Login</a>
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
		<h2 class="heading text-capitalize mb-sm-5 mb-4">Sign In </h2>
			<div class="mail_grid_w3l">
      		<form runat="server" >
					<div class="row">
						<div class="col-md-6 contact_left_grid" data-aos="fade-right">
							<div class="contact-fields-w3ls">
                             <asp:TextBox ID="txtmobile" runat="server" CausesValidation="True" class="form-control" placeholder="Phone Number"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtmobile" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtmobile" ErrorMessage="Enter a valid number" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>          
							</div>
							<div class="contact-fields-w3ls">
                              <asp:TextBox ID="txtpswd" runat="server" CausesValidation="True" class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtpswd" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
							</div>
							<div class="contact-fields-w3ls">
                             <asp:Button ID="Button1" runat="server" Text="Sign In" class="btn btn-primary btn-send-message" OnClick="Button1_Click"  />&nbsp;&nbsp;<a href="register1.aspx"><b><i>New One?</i></b></a>
							</div>
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

