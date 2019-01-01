<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/guest.master" AutoEventWireup="true" CodeFile="my_cart.aspx.cs" Inherits="Guest_my_cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            book_id:
            <asp:Label ID="book_idLabel" runat="server" Text='<%# Eval("book_id") %>' />
            <br />
            model_id:
            <asp:Label ID="model_idLabel" runat="server" Text='<%# Eval("model_id") %>' />
            <br />
            item_name:
            <asp:Label ID="item_nameLabel" runat="server" Text='<%# Eval("item_name") %>' />
            <br />
            model_image:
            <asp:Label ID="model_imageLabel" runat="server" Text='<%# Eval("model_image") %>' />
<br />
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("model_image") %>' />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT booking_tb.book_id, model_tb.model_id, item_tb.item_name, model_tb.model_image FROM booking_tb INNER JOIN model_tb ON booking_tb.model_id = model_tb.model_id CROSS JOIN item_tb"></asp:SqlDataSource>
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT * FROM [booking_tb] WHERE (([mobile] = @mobile) AND ([model_id] = @model_id) AND ([item_code] = @item_code))">
        <SelectParameters>
            <asp:SessionParameter Name="mobile" SessionField="username" Type="Decimal" />
            <asp:QueryStringParameter Name="model_id" QueryStringField="model" Type="Int32" />
            <asp:QueryStringParameter Name="item_code" QueryStringField="item" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>

