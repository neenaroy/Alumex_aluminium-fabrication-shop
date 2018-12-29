<%@ Page Language="C#" AutoEventWireup="true" CodeFile="guesthome.aspx.cs" Inherits="Guest_guesthome" %>

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
					    <li class="nav-item">
							<a class="nav-link" href="guesthome.aspx">Home <span class="sr-only">(current)</span></a>
						</li>
                        <li class="nav-item">
							<a class="nav-link" href="View_projects.aspx">Projects</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="view_cart.aspx">My Cart</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="add_orders.aspx">My Orders</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="view_bill.aspx">Bill</a>
						</li>
						
                        <li class="dropdown nav-item active">
							<a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">Feedback
								<b class="caret"></b>
							</a>
							<ul class="dropdown-menu agile_short_dropdown">
								<li>
									<a href="Add_feedback.aspx">Add Feedback</a>
								</li>
								<li>
									<a href="Edit_delete_feedback.aspx">View</a>
								</li>
							</ul>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="../logout.aspx">Logout</a>
						</li>
					</ul>
				</div>
			</nav>
		</div>
	</header>
	<!--Header-->
</div>
<!-- //banner --> 

     <section class="contact py-5">
	<div class="container">
		<h2 class="heading text-capitalize mb-sm-5 mb-4">Our Sevices</h2>
			<div class="mail_grid_w3l">
                <form runat="server">
               	<div class="row">
						<div class="col-md-6 contact_left_grid" data-aos="fade-right">
                            <asp:DataList ID="DataList1" runat="server" DataKeyField="cat_id" DataSourceID="SqlDataSource1" RepeatColumns="4">
                                <ItemTemplate>
                                    <table class="w-100">
                                        <tr>
                                            <td>
                                                <asp:Label ID="cat_nameLabel0" runat="server" Font-Bold="True" ForeColor="Black" Text='<%# Eval("cat_name") %>' />
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Image ID="Image1" runat="server" Height="200px" Width="300px" ImageUrl='<%# Eval("cat_image") %>' />
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="cat_descriptionLabel" runat="server" ForeColor="Black" Text='<%# Eval("cat_description") %>' Font-Bold="True" />
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                &nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                    <asp:Button ID="Button1" runat="server" CommandName="View More"  Text="View More" />
<br />
                                    <br />
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT [cat_name], [cat_description], [cat_image], [cat_id] FROM [category_tb]"></asp:SqlDataSource>
                     </form>    </div>
               </div>  
			</div>
     
		</div>
         
</section>


<!-- footer -->
<footer class="py-5">
	<div class="container py-md-5">
		<div class="footer-logo mb-5 text-center">
			<a class="navbar-brand" href="index.html">Alumex<span class="display">Fabrication</span></a>
		</div>
		<div class="footer-grid">
			<div class="social mb-4 text-center">
				<ul class="d-flex justify-content-center">
					<li class="mx-2"><a href="#"><span class="fab fa-facebook-f"></span></a></li>
					<li class="mx-2"><a href="#"><span class="fab fa-twitter"></span></a></li>
					<li class="mx-2"><a href="#"><span class="fas fa-rss"></span></a></li>
					<li class="mx-2"><a href="#"><span class="fab fa-linkedin-in"></span></a></li>
					<li class="mx-2"><a href="#"><span class="fab fa-google-plus"></span></a></li>
				</ul>
			</div>
			
			<div class="agileits_w3layouts-copyright mt-4 text-center">
		</div>
		</div>
	</div>
</footer>
<!-- footer -->

<!-- js-scripts -->		

	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.2.3.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script> <!-- Necessary-JavaScript-File-For-Bootstrap --> 
	<!-- //js -->
	
	<!-- banner js -->
	<script src="js/snap.svg-min.js"></script>
	<script src="js/main.js"></script> <!-- Resource jQuery -->  
	<!-- //banner js --> 

	<!-- flexSlider --><!-- for testimonials -->
	<script defer src="js/jquery.flexslider.js"></script>
	<script type="text/javascript">
	    $(window).load(function () {
	        $('.flexslider').flexslider({
	            animation: "slide",
	            start: function (slider) {
	                $('body').removeClass('loading');
	            }
	        });
	    });
	</script>
	<!-- //flexSlider --><!-- for testimonials -->

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
