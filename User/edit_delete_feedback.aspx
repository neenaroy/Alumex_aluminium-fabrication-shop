<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="edit_delete_feedback.aspx.cs" Inherits="User_edit_delete_feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="feedback" HeaderText="feedback" SortExpression="feedback" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT [feedback] FROM [feedback_tb] WHERE ([mobile] = @mobile)">
        <SelectParameters>
            <asp:SessionParameter Name="mobile" SessionField="username" Type="Decimal" />
        </SelectParameters>
    </asp:SqlDataSource>
    </asp:Content>

