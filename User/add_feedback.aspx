<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="add_feedback.aspx.cs" Inherits="User_add_feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="contact py-5">
	<div class="container">
		<h2 class="heading text-capitalize mb-sm-5 mb-4">Enter Your Feedback.... </h2>
			<div class="mail_grid_w3l">
               	<div class="row">
						<div class="col-md-6 contact_left_grid" data-aos="fade-right">
							<div class="contact-fields-w3ls">
                                <asp:TextBox ID="txtfdbk" runat="server" CausesValidation="True" class="form-control" placeholder="Enter Your Feedback" TextMode="MultiLine"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtfdbk" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
							<div class="contact-fields-w3ls">
                                 <asp:Button ID="Button1" runat="server" Text="Send" class="btn btn-primary btn-send-message" OnClick="Button1_Click"   />
							</div>
					</div>
               </div>
			</div>
		</div>
</section>
    </asp:Content>

