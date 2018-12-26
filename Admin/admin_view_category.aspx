<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="admin_view_category.aspx.cs" Inherits="Admin_admin_view_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cat_id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="cat_id" HeaderText="cat_id" ReadOnly="True" SortExpression="cat_id" />
            <asp:BoundField DataField="cat_name" HeaderText="cat_name" SortExpression="cat_name" />
            <asp:BoundField DataField="cat_description" HeaderText="cat_description" SortExpression="cat_description" />
            <asp:BoundField DataField="cat_image" HeaderText="cat_image" SortExpression="cat_image"  Visible="false" />
        <asp:TemplateField>
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" Height="100px"  ImageUrl='<%# Eval("cat_image") %>' />
        </ItemTemplate>
            </asp:TemplateField>
        </columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" DeleteCommand="DELETE FROM [category_tb] WHERE [cat_id] = @cat_id" InsertCommand="INSERT INTO [category_tb] ([cat_id], [cat_name], [cat_description], [cat_image]) VALUES (@cat_id, @cat_name, @cat_description, @cat_image)" SelectCommand="SELECT * FROM [category_tb]" UpdateCommand="UPDATE [category_tb] SET [cat_name] = @cat_name, [cat_description] = @cat_description, [cat_image] = @cat_image WHERE [cat_id] = @cat_id">
        <DeleteParameters>
            <asp:Parameter Name="cat_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="cat_id" Type="Int32" />
            <asp:Parameter Name="cat_name" Type="String" />
            <asp:Parameter Name="cat_description" Type="String" />
            <asp:Parameter Name="cat_image" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="cat_name" Type="String" />
            <asp:Parameter Name="cat_description" Type="String" />
            <asp:Parameter Name="cat_image" Type="String" />
            <asp:Parameter Name="cat_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

