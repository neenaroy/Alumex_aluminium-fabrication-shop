<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/guest.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Guest_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT booking_tb.*, model_tb.model_id AS Expr1, model_tb.model_image, reg_tb.regi_id FROM booking_tb INNER JOIN model_tb ON booking_tb.model_id = model_tb.model_id CROSS JOIN reg_tb booking_tb.mobile=reg_tb.mobile and status=0 and booking_tb.model_id=model_tb.model_id"></asp:SqlDataSource>
</asp:Content>

