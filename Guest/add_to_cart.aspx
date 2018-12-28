<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/guest.master" AutoEventWireup="true" CodeFile="add_to_cart.aspx.cs" Inherits="Guest_add_to_cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table width="100">
                                <tr>
                                    <td><h3>BOOK NOW...!!!</h3></td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Panel ID="Panel1" runat="server">
                                        </asp:Panel>
                                    </td>
                                </tr>
                                
                                  <tr>
                                    
                                    <td>
                                        <asp:Button ID="buynow" runat="server" Text="Buy Now" OnClick="buynow_Click" />
                                    </td>
                                </tr>
                          </table>         </asp:Content>

