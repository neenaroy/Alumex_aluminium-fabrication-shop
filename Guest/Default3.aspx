<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/guest.master" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Guest_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="book_id" HeaderText="book_id" InsertVisible="False" ReadOnly="True" SortExpression="book_id" />
            <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
            <asp:BoundField DataField="model_id" HeaderText="model_id" SortExpression="model_id" />
            <asp:BoundField DataField="item_code" HeaderText="item_code" SortExpression="item_code" />
            <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
            <asp:BoundField DataField="delivery" HeaderText="delivery" SortExpression="delivery" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT * FROM [booking_tb] WHERE (([mobile] = @mobile) AND ([status] = @status))">
        <SelectParameters>
            <asp:SessionParameter Name="mobile" SessionField="username" Type="Decimal" />
            <asp:Parameter DefaultValue="1" Name="status" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

