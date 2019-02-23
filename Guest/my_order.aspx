<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/guest.master" AutoEventWireup="true" CodeFile="my_order.aspx.cs" Inherits="Guest_my_order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT booking_tb.book_id, booking_tb.mobile, booking_tb.model_id,booking_tb.status, model_tb.model_id AS Expr1, model_tb.item_code,item_tb.item_code, item_tb.item_name, model_tb.model_image FROM booking_tb INNER JOIN model_tb ON booking_tb.model_id = model_tb.model_id CROSS JOIN item_tb where  booking_tb.model_id=model_tb.model_id and  model_tb.item_code=item_tb.item_code and ([mobile] = @mobile) AND ([status] = @status)"></asp:SqlDataSource>
    <SelectParameters>
            <asp:SessionParameter Name="mobile" SessionField="username" Type="Decimal" />
            <asp:Parameter DefaultValue="1" Name="status" Type="Int32" />
        </SelectParameters>
</asp:Content>

