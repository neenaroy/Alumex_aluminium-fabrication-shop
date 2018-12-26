<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="view_window.aspx.cs" Inherits="User_view_window" %>

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
            model_image:
            <asp:Label ID="model_imageLabel" runat="server" Text='<%# Eval("model_image") %>' />
            <br />
            <table class="w-100">
                <tr>
                    <td>
                        <asp:Label ID="model_nameLabel0" runat="server" Font-Bold="True" Text='<%# Eval("model_name") %>' />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("model_image") %>' />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" CommandName="Add To Cart" Text="Add To Cart" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT [model_id], [model_name], [model_image] FROM [model_tb] WHERE ([cat_name] = @cat_name)">
        <SelectParameters>
            <asp:Parameter DefaultValue="cat_name" Name="cat_name" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

