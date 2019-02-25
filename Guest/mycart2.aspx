<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/guest.master" AutoEventWireup="true" CodeFile="mycart2.aspx.cs" Inherits="Guest_mycart2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <section class="contact py-5">
	<div class="container">
		<h2 class="heading text-capitalize mb-sm-5 mb-4">Select Your Favourite...</h2>
			<div class="mail_grid_w3l">
               	<div class="row">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" RepeatColumns="4">
        <ItemTemplate>
            <br />
            Model ID:
            <asp:Label ID="model_idLabel" runat="server" Text='<%# Eval("model_id") %>' />
            <br />
            Name:
            <asp:Label ID="item_nameLabel" runat="server" Text='<%# Eval("item_name") %>' />
            <br />
            <asp:Image ID="Image1" runat="server" Height="200" Width="300" ImageUrl='<%# Eval("model_image") %>' />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" CommandName="buynow" OnClick="Button1_Click" Text="Buy Now" />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT booking_tb.book_id, booking_tb.mobile, booking_tb.model_id,booking_tb.status, model_tb.model_id AS Expr1, model_tb.item_code,item_tb.item_code, item_tb.item_name, model_tb.model_image FROM booking_tb INNER JOIN model_tb ON booking_tb.model_id = model_tb.model_id CROSS JOIN item_tb where  booking_tb.model_id=model_tb.model_id and  model_tb.item_code=item_tb.item_code and   booking_tb.status=0 and booking_tb.mobile=8943996839"></asp:SqlDataSource>
    </section> 
</asp:Content>

