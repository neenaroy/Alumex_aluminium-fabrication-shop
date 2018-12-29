<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/guest.master" AutoEventWireup="true" CodeFile="view_window.aspx.cs" Inherits="Guest_view_window" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="model_id" DataSourceID="SqlDataSource1" RepeatColumns="4">
        <ItemTemplate>
            model_id:
            <asp:Label ID="model_idLabel" runat="server" Text='<%# Eval("model_id") %>' />
            <br />
            model_name:
            <asp:Label ID="model_nameLabel" runat="server" Text='<%# Eval("model_name") %>' />
            <br />
            cat_id:
            <asp:Label ID="cat_idLabel" runat="server" Text='<%# Eval("cat_id") %>' />
            <br />
            model_image:
            <asp:Label ID="model_imageLabel" runat="server" Text='<%# Eval("model_image") %>' />
            <br />
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("model_image") %>' />
<br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT * FROM [model_tb] WHERE ([cat_id] = @cat_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="cat_id" QueryStringField="102" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

