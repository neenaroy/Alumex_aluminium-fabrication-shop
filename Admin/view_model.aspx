<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="view_model.aspx.cs" Inherits="Admin_view_model" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="model_id" DataSourceID="SqlDataSource1" ForeColor="Black" Height="317px" Width="957px">
        <Columns>
            <asp:BoundField DataField="model_id" HeaderText="Model ID" ReadOnly="True" SortExpression="model_id" >
            <HeaderStyle Height="50px" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="item_code" HeaderText="Item Code" SortExpression="item_code" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="cat_id" HeaderText="Category ID" SortExpression="cat_id" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
           <asp:TemplateField>
                 <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="200" Width="300" ImageUrl='<%# Eval("model_image") %>' />
                </ItemTemplate>
            </asp:TemplateField>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT * FROM [model_tb]"></asp:SqlDataSource>
</asp:Content>

