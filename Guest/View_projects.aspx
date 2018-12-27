<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/guest.master" AutoEventWireup="true" CodeFile="View_projects.aspx.cs" Inherits="Guest_View_projects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="contact py-5">
	<div class="container">
		<h2 class="heading text-capitalize mb-sm-5 mb-4">Projects Done</h2>
			<div class="mail_grid_w3l">
            	<div class="row">
						<div class="col-md-6 contact_left_grid" data-aos="fade-right">
                            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="4">
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" Height="200px" Width="300px" ImageUrl='<%# Eval("project_image") %>' />
                                    <br />
                                    <br />
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT [project_image] FROM [project_tb]"></asp:SqlDataSource>
                         </div>
                    </div>
                </div>
        </div>
</section>
</asp:Content>

