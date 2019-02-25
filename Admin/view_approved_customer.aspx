<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="view_approved_customer.aspx.cs" Inherits="Admin_view_approved_customer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" ForeColor="Black" Height="176px" Width="865px" CellSpacing="2">
        <Columns>
            <asp:BoundField DataField="book_id" HeaderText="Booking Id" InsertVisible="False" ReadOnly="True" SortExpression="book_id" >
            <HeaderStyle Height="1px" />
            </asp:BoundField>
            <asp:BoundField DataField="mobile" HeaderText="Mobile" SortExpression="mobile" />
            <asp:BoundField DataField="model_id" HeaderText="Model_id" SortExpression="model_id" />
            <asp:BoundField DataField="item_code" HeaderText="Item code" SortExpression="item_code" />
            <asp:BoundField DataField="delivery" HeaderText="Delivery" SortExpression="delivery" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT * FROM [booking_tb] WHERE ([delivery] = @delivery)">
        <SelectParameters>
            <asp:Parameter DefaultValue="approved" Name="delivery" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

