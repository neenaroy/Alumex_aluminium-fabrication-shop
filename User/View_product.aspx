<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="View_product.aspx.cs" Inherits="User_View_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section>
    <asp:DataList ID="DataList2" runat="server" RepeatColumns="4">
  <ItemStyle CssClass="igrid" />
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
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%#Eval("cat_id") %>'>View..</asp:LinkButton>
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>

    </section>
</asp:Content>

