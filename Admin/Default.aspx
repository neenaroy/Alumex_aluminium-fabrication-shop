<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="4">
        <ItemTemplate>
            <table class="tbl" >
            <tr>
                <td style="text-align: center">
                    <asp:Image ID="Image2" runat="server"  CssClass="img" ImageUrl='<%#Eval("cat_image") %>' />
                </td>
            </tr>
            <tr>
                <td>
                                Name :
                                <asp:Label ID="Label1" runat="server" Text='<%#Eval("cat_name") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%#Eval("iid") %>'>View..</asp:LinkButton>
                </td>
            </tr>
        </table>
        </ItemTemplate>

    </asp:DataList>
</asp:Content>

