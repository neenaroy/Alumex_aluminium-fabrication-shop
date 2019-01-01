<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/guest.master" AutoEventWireup="true" CodeFile="booking.aspx.cs" Inherits="Guest_booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="contact py-5">
	<div class="container">
		<h2 class="heading text-capitalize mb-sm-5 mb-4">Purchase Now</h2>
			<div class="mail_grid_w3l">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="model_id" DataSourceID="SqlDataSource1" RepeatColumns="3">
        <ItemTemplate>
<br />
            <br />
            <table class="w-100">
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="250" Width="450" ImageUrl='<%# Eval("model_image") %>' />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <table class="w-100">
                            <tr>
                                <td>
                                    <asp:Button ID="Button1" runat="server" CommandName="addtocart" OnClick="Button1_Click" Text="Add To Cart" Height="59px" Width="215px" />
                                </td>
                                <td>
                                    <asp:Button ID="Button2" runat="server" CommandName="byenow" OnClick="Button2_Click" Text="Buy Now" Width="216px" Height="57px" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT * FROM [model_tb] WHERE (([cat_id] = @cat_id) AND ([model_id] = @model_id))">
        <SelectParameters>
            <asp:QueryStringParameter Name="cat_id" QueryStringField="id" Type="Int32" />
            <asp:QueryStringParameter Name="model_id" QueryStringField="model" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
  </div>
         </div> </div>
        </section>
</asp:Content>

