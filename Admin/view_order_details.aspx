<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="view_order_details.aspx.cs" Inherits="view_order_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="book_id" DataSourceID="SqlDataSource1" ForeColor="Black">
        <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="book_id" HeaderText="booking Id" InsertVisible="False" ReadOnly="True" SortExpression="book_id">
            <HeaderStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="mobile" HeaderText="Mobile Number" SortExpression="mobile">
            <HeaderStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="model_id" HeaderText="Model ID" SortExpression="model_id">
            <HeaderStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="item_code" HeaderText="Item code" SortExpression="item_code">
            <HeaderStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
            <asp:BoundField DataField="delivery" HeaderText="Delivery" SortExpression="delivery">
            <HeaderStyle HorizontalAlign="Center" />
            </asp:BoundField>
        </Fields>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT * FROM [booking_tb] WHERE ([book_id] = @book_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="book_id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
        
        <br />
        <br />
    <asp:Button ID="btnaprove" runat="server" Text="Approve" OnClick="btnaprove_Click"  />
    <asp:Button ID="btnreject" runat="server" Text="Reject" OnClick="btnreject_Click" />
</asp:Content>

