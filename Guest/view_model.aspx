<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/guest.master" AutoEventWireup="true" CodeFile="view_model.aspx.cs" Inherits="Guest_view_model" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="model_id" DataSourceID="SqlDataSource1" RepeatColumns="4">
        <ItemTemplate>
            <table class="w-100">
                <tr>
                    <td>ID:
                        <asp:Label ID="model_idLabel" runat="server" Text='<%# Eval("model_id") %>' />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="200" Width="300" ImageUrl='<%# Eval("model_image") %>' />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><a href='add_to_cart.aspx?id=<%# Eval("cat_id") %>&amp;model=<%# Eval("model_id") %>&amp;item=<%# Eval("item_code") %>'>Intrested?</a></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT * FROM [model_tb] WHERE ([cat_id] = @cat_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="cat_id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

