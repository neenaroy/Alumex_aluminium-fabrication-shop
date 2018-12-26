<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="view_category.aspx.cs" Inherits="User_view_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    <section class="contact py-5">
	<div class="container">
		<h2 class="heading text-capitalize mb-sm-5 mb-4">Our Sevices</h2>
			<div class="mail_grid_w3l">
               	<div class="row">
						<div class="col-md-6 contact_left_grid" data-aos="fade-right">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="4" BorderColor="Black" BorderStyle="Solid">
        <ItemTemplate>
            
            <asp:Label ID="cat_nameLabel" runat="server" Text='<%# Eval("cat_name") %>' />
            <br />
          
            <asp:Label ID="cat_descriptionLabel" runat="server" Text='<%# Eval("cat_description") %>' />
            <br />
                        <asp:Image ID="Image1" runat="server" BorderColor="#000000" BorderStyle="Double" Height="200px" Width="300px" ImageUrl='<%# Eval("cat_image") %>' />
<br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT [cat_name], [cat_description], [cat_image] FROM [category_tb]"></asp:SqlDataSource>
      	</div>
               </div>
			</div>
		</div>
</section>
</asp:Content>


