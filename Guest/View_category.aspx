<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/guest.master" AutoEventWireup="true" CodeFile="View_category.aspx.cs" Inherits="Guest_View_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="contact py-5">
	<div class="container">
		<h2 class="heading text-capitalize mb-sm-5 mb-4">Our Sevices</h2>
			<div class="mail_grid_w3l">

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
                        </div>
               </div>  
			</div>
      
		</div>
</section>

</asp:Content>

