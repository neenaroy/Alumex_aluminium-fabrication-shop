<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="view_stock.aspx.cs" Inherits="Admin_view_stock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="stock_id" DataSourceID="SqlDataSource1" ForeColor="Black">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="stock_id" HeaderText="stock_id" ReadOnly="True" SortExpression="stock_id" />
            <asp:BoundField DataField="item_name" HeaderText="item_name" SortExpression="item_name" />
            <asp:BoundField DataField="item_code" HeaderText="item_code" SortExpression="item_code" />
            <asp:BoundField DataField="item_price" HeaderText="item_price" SortExpression="item_price" />
            <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
            <asp:BoundField DataField="shop_name" HeaderText="shop_name" SortExpression="shop_name" />
            <asp:BoundField DataField="supply_place" HeaderText="supply_place" SortExpression="supply_place" />
            <asp:BoundField DataField="invoice_number" HeaderText="invoice_number" SortExpression="invoice_number" />
            <asp:BoundField DataField="invoice_date" HeaderText="invoice_date" SortExpression="invoice_date" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" DeleteCommand="DELETE FROM [stock_tb] WHERE [stock_id] = @stock_id" InsertCommand="INSERT INTO [stock_tb] ([stock_id], [item_name], [item_code], [item_price], [quantity], [shop_name], [supply_place], [invoice_number], [invoice_date]) VALUES (@stock_id, @item_name, @item_code, @item_price, @quantity, @shop_name, @supply_place, @invoice_number, @invoice_date)" SelectCommand="SELECT * FROM [stock_tb]" UpdateCommand="UPDATE [stock_tb] SET [item_name] = @item_name, [item_code] = @item_code, [item_price] = @item_price, [quantity] = @quantity, [shop_name] = @shop_name, [supply_place] = @supply_place, [invoice_number] = @invoice_number, [invoice_date] = @invoice_date WHERE [stock_id] = @stock_id">
        <DeleteParameters>
            <asp:Parameter Name="stock_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="stock_id" Type="Int32" />
            <asp:Parameter Name="item_name" Type="String" />
            <asp:Parameter Name="item_code" Type="Int32" />
            <asp:Parameter Name="item_price" Type="Decimal" />
            <asp:Parameter Name="quantity" Type="Int32" />
            <asp:Parameter Name="shop_name" Type="String" />
            <asp:Parameter Name="supply_place" Type="String" />
            <asp:Parameter Name="invoice_number" Type="Int32" />
            <asp:Parameter DbType="Date" Name="invoice_date" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="item_name" Type="String" />
            <asp:Parameter Name="item_code" Type="Int32" />
            <asp:Parameter Name="item_price" Type="Decimal" />
            <asp:Parameter Name="quantity" Type="Int32" />
            <asp:Parameter Name="shop_name" Type="String" />
            <asp:Parameter Name="supply_place" Type="String" />
            <asp:Parameter Name="invoice_number" Type="Int32" />
            <asp:Parameter DbType="Date" Name="invoice_date" />
            <asp:Parameter Name="stock_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

