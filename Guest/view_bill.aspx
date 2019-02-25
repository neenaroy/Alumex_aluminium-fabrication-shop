<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/guest.master" AutoEventWireup="true" CodeFile="view_bill.aspx.cs" Inherits="Guest_view_bill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 201px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
    <asp:DataList ID="DataList1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyField="bill_no" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Both">
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="White" />
        <ItemTemplate>
            <table class="w-100">
                <tr>
                    <td>ALUMEX ALUMINIUM FABRICATION</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Manathavady&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 670 644&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ph:9846197275&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Bill No:&nbsp;
                        <asp:Label ID="bill_noLabel" runat="server" Text='<%# Eval("bill_no") %>' />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <table class="w-100">
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style1">Name of Work</td>
                                <td>
                                    <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">Squre Feet</td>
                                <td>
                                    <asp:Label ID="squarefeetLabel" runat="server" Text='<%# Eval("squarefeet") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">amount</td>
                                <td>
                                    <asp:Label ID="amountLabel" runat="server" Text='<%# Eval("amount") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style1">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT [bill_no], [username], [squarefeet], [amount], [category] FROM [bill] WHERE ([username] = @username)">
        <SelectParameters>
            <asp:SessionParameter Name="username" SessionField="username" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

