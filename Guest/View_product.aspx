<%@ Page Language="C#" AutoEventWireup="true" CodeFile="view_product.aspx.cs" Inherits="Guest_view_product" %>

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
		<h2 class="heading text-capitalize mb-sm-5 mb-4">Purchase Now...</h2>
			<div class="mail_grid_w3l">
      		<form runat="server" >
					<div class="row">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="model_id" DataSourceID="SqlDataSource1" RepeatColumns="4">
        <ItemTemplate>
            <table class="w-100">
                <tr>
                    <td>ID:
                        <asp:Label ID="model_idLabel" runat="server" Text='<%# Eval("model_id") %>' />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="200" Width="300" ImageUrl='<%# Eval("model_image") %>' />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <table class="auto-style1">
                            <tr>
                                <td>
                                  &nbsp; &nbsp;    <asp:Button ID="Button1" runat="server" CommandName="addtocart" Text="Add To Cart" OnClick="Button1_Click" class="btn btn-primary btn-send-message" />
                                </td>
                                <td>
                                   &nbsp; &nbsp; &nbsp;<asp:Button ID="Button2" runat="server" CommandName="byenow" Text="Bye Now" OnClick="Button2_Click" class="btn btn-primary btn-send-message" Height="33px" Width="136px" />
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT * FROM [model_tb] WHERE ([cat_id] = @cat_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="cat_id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
               
            </form>
         </div>
	    </div>
      </div>
        </section>     
</body>
</html>
