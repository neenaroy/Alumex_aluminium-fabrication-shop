<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/guest.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Guest_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="book_id" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            book_id:
            <asp:Label ID="book_idLabel" runat="server" Text='<%# Eval("book_id") %>' />
            <br />
            mobile:
            <asp:Label ID="mobileLabel" runat="server" Text='<%# Eval("mobile") %>' />
            <br />
            model_id:
            <asp:Label ID="model_idLabel" runat="server" Text='<%# Eval("model_id") %>' />
            <br />
            item_code:
            <asp:Label ID="item_codeLabel" runat="server" Text='<%# Eval("item_code") %>' />
            <br />
            status:
            <asp:Label ID="statusLabel" runat="server" Text='<%# Eval("status") %>' />
            <br />
            delivery:
            <asp:Label ID="deliveryLabel" runat="server" Text='<%# Eval("delivery") %>' />
            <br />
            regi_id:
            <asp:Label ID="regi_idLabel" runat="server" Text='<%# Eval("regi_id") %>' />
            <br />
            mobile1:
            <asp:Label ID="mobile1Label" runat="server" Text='<%# Eval("mobile1") %>' />
            <br />
            password:
            <asp:Label ID="passwordLabel" runat="server" Text='<%# Eval("password") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT booking_tb.*, reg_tb.* FROM booking_tb CROSS JOIN reg_tb where booking_tb.mobile=reg_tb.mobile"></asp:SqlDataSource>
</asp:Content>

