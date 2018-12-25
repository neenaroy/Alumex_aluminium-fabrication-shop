<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="add_attendance.aspx.cs" Inherits="Admin_add_attendance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    </p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="emp_id" DataSourceID="SqlDataSource1" ForeColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="emp_id" HeaderText="emp_id" ReadOnly="True" SortExpression="emp_id" />
            <asp:BoundField DataField="emp_fname" HeaderText="emp_fname" SortExpression="emp_fname" />
            <asp:BoundField DataField="emp_lname" HeaderText="emp_lname" SortExpression="emp_lname" />
        </Columns>
        <EmptyDataTemplate>
            <asp:Button ID="Button1" runat="server" CommandName="Select"  Text="Button" />
        </EmptyDataTemplate>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT [emp_id], [emp_fname], [emp_lname] FROM [emp_tb]"></asp:SqlDataSource>
</asp:Content>

