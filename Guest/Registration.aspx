<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/guest.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Guest_Registration" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="contact py-5">
	<div class="container">
		<h2 class="heading text-capitalize mb-sm-5 mb-4">Enter Your Details.... </h2>
			<div class="mail_grid_w3l">
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
					</div>
			</div>
		</div>
</section>

</asp:Content>

