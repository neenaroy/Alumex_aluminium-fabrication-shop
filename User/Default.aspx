<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="contact py-5">
	<div class="container">
		<h2 class="heading text-capitalize mb-sm-5 mb-4"> Contact Us </h2>
			<div class="mail_grid_w3l">
				<form action="#" method="post">
					<div class="row">
						<div class="col-md-6 contact_left_grid" data-aos="fade-right">
							<div class="contact-fields-w3ls">
								<input type="text" name="Name" placeholder="Name" required="">
							</div>
							<div class="contact-fields-w3ls">
								<input type="email" name="Email" placeholder="Email" required="">
							</div>
							<div class="contact-fields-w3ls">
								<input type="text" name="Telephone" placeholder="Phone Number" required="">
							</div>
							<div class="contact-fields-w3ls">
								<input type="text" name="Subject" placeholder="Subject" required="">
							</div>
						</div>
						<div class="col-md-6 contact_left_grid" data-aos="fade-left">
							<div class="contact-fields-w3ls">
								<textarea name="Message" placeholder="Message..." required=""></textarea>
							</div>
							<input type="submit" value="Submit">
						</div>
					</div>

				</form>
			</div>
		
	</div>
</section>
</asp:Content>

