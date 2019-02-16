<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="Guest_register" %>

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
	<!-- //web-fonts --></head>
<body>
     <!-- banner -->
<div class="inner-page-banner" id="home"> 	   
	<!--Header-->
	<header>
		<div class="container agile-banner_nav">
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				
				<h1><a class="navbar-brand" href="Index.aspx">Alumex <span class="display"></span></a></h1>
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

     <section class="contact py-5">
	<div class="container">
		<h2 class="heading text-capitalize mb-sm-5 mb-4">Sign Up </h2>
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
                              <asp:TextBox ID="txtrpswd" runat="server" CausesValidation="True" class="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtrpswd" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
							</div>
							<div class="contact-fields-w3ls">
                             <asp:Button ID="Button1" runat="server" Text="Sign Up" class="btn btn-primary btn-send-message" OnClick="Button1_Click" Width="254px"  />&nbsp;&nbsp;<a href="login.aspx"><b><i>Already In?</i></b></a>
							</div>
						</div>
					</div>
                </form>
			</div>
		</div>
</section>
</body>
</html>
