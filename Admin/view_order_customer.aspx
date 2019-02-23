<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="view_order_customer.aspx.cs" Inherits="view_order_customer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged2" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="217px" Width="723px">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="book_id" HeaderText="Booking Id" InsertVisible="False" ReadOnly="True" SortExpression="book_id" />
            <asp:BoundField DataField="mobile" HeaderText="User Name" SortExpression="mobile" />
           <asp:BoundField DataField="model_id" HeaderText="Model Id" SortExpression="model_id" />
            <asp:BoundField DataField="item_code" HeaderText="Item code" SortExpression="item_code" />
            <asp:BoundField DataField="delivery" HeaderText="Delivery" SortExpression="delivery" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="select" runat="server" CommandName="Select" Text="Select" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <EmptyDataTemplate>
            <asp:Button ID="select" runat="server" CommandName="Select" Text="Select" />
        </EmptyDataTemplate>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT * FROM [booking_tb] WHERE (([delivery] = @delivery)and ([status] = @status)) " >
     <SelectParameters>
            <asp:Parameter DefaultValue="not delivered" Name="delivery" Type="String" />
          <asp:Parameter DefaultValue="1" Name="status" Type="Int32" />
        </SelectParameters> 
    </asp:SqlDataSource>
</asp:Content>

