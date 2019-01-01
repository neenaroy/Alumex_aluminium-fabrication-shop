<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/guest.master" AutoEventWireup="true" CodeFile="add_to_cart.aspx.cs" Inherits="Guest_add_to_cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="model_id" DataSourceID="SqlDataSource1" RepeatColumns="4">
        <ItemTemplate>
<br />
            <br />
            <table class="w-100">
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="200" Width="200" ImageUrl='<%# Eval("model_image") %>' />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <table class="w-100">
                            <tr>
                                <td>
                                    <asp:Button ID="Button1" runat="server" CommandName="addtocart" OnClick="Button1_Click" Text="Add To Cart" />
                                </td>
                                <td>
                                    <asp:Button ID="Button2" runat="server" CommandName="byenow" OnClick="Button2_Click" Text="Buy Now" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT * FROM [model_tb] WHERE (([cat_id] = @cat_id) AND ([model_id] = @model_id))">
        <SelectParameters>
            <asp:QueryStringParameter Name="cat_id" QueryStringField="id" Type="Int32" />
            <asp:QueryStringParameter Name="model_id" QueryStringField="model" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

