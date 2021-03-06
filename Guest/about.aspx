﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="Guest_about" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title> Alumex Aluminium Fabrication</title>
	
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
	
	<link href="css/slider.css" type="text/css" rel="stylesheet" media="all"> 
	
	<!-- css files -->
	<link rel="stylesheet" href="css/bootstrap.css"> <!-- Bootstrap-Core-CSS -->
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" /> <!-- Style-CSS --> 
	<link rel="stylesheet" href="css/fontawesome-all.css"> <!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->
	
	<!-- testimonials css -->
	<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" /><!-- flexslider css -->
	<!-- //testimonials css -->

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
				
				<h1><a class="navbar-brand" href="Index.aspx">Alumex<span class="display"></span></a></h1>
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
						<a class="nav-link" href="gallery.aspx">Gallery</a>
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

    <!-- about -->
<section class="wthree-row py-5">
	<div class="container py-lg-5 py-3">
		<h3 class="heading text-capitalize mb-sm-5 mb-4"> About us </h3>
		<div class="row d-flex justify-content-center">
			<div class="card col-lg-3 col-md-6 border-0">
				<div class="card-body bg-light pl-0 pr-0 pt-0">
					<h5 class=" card-title titleleft">Kitchen Remodeling</h5>
					<p class="card-text mb-3">Kitchen remodeling and renovating mean to make improvements on an existing kitchen or they can be drastic, much like a remodel.</p>
					<a href="#ab-bot" class="btn scroll">View More</a>
				</div>
				<img class="card-img-top" src="../Admin/images/cp7.jpg" alt="Card image cap">
			</div>
			<div class="card col-lg-3 col-md-6 border-0 mt-md-0 mt-5">
				<img class="card-img-top" src="../Admin/images/Entry door_Solid Wood with Walnut.jpg" alt="Card image cap " height="200">
				<div class="card-body bg-light text-center">
					<h5 class="card-title pt-3">Doors & Windows</h5>
					<p class="card-text mb-3 ">We use only best quality doors and Windows, customers can choose different designs and models as their wish.</p>
					<a href="#ab-bot" class="btn scroll">View More</a>
				</div>
			</div>
			<div class="card col-lg-3 col-md-6 border-0 mt-lg-0 mt-5 ">
				<img class="card-img-top " src="../Admin/images/od veed.jpg" alt="Card image cap " height="200">
				<div class="card-body bg-light text-center">
					<h5 class="card-title pt-3">Roof Tops</h5>
					<p class="card-text mb-3 ">We use only best quality Materials and customers can choose different designs and models as their wish.</p>
					<a href="#ab-bot" class="btn scroll">View More</a>
				</div>
			</div>
			<div class="card col-lg-3 col-md-6 border-0 mt-lg-0 mt-5 text-right">
				<div class="card-body bg-light pl-0 pr-0 pt-0">
					<h5 class="card-title titleright">Staircases</h5>
					<p class="card-text mb-3">We use only best quality material can choose different designs and models as their wish.</p>
					<a href="#ab-bot" class="btn scroll">View More</a>
				</div>
				<img class="card-img-top " src="../Admin/images/wood with aluminium stair.jpg" alt="Card image cap " height="200">
			</div>
		</div>
	</div>
</section>
<!-- //about -->


  <!-- js-scripts -->		

	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.2.3.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script> <!-- Necessary-JavaScript-File-For-Bootstrap --> 
	<!-- //js -->
		
	<!-- stats -->
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.countup.js"></script>
	<script>
	    $('.counter').countUp();
	</script>
	<!-- //stats -->

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

    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
