<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="admin_view_category.aspx.cs" Inherits="Admin_admin_view_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
       <ul class="navbar-nav navbar-nav-right">
          <li class="nav-item nav-profile dropdown">
              <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                 <div class="nav-profile-text">
                      <p class="mb-1 text-black">Category</p>
                  </div>
              </a>
            <div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
              <a class="dropdown-item" href="add_category.aspx">
                Add category
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="admin_view_category.aspx">
               Update
              </a>
                 <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="search_category.aspx">
              Search
              </a>
            </div>
          </li>
        </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cat_id" DataSourceID="SqlDataSource1" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="cat_id" HeaderText="Ctegory ID" ReadOnly="True" SortExpression="cat_id" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="cat_name" HeaderText="Category Name" SortExpression="cat_name" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="cat_description" HeaderText="Description" SortExpression="cat_description" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="cat_image" HeaderText="Image" SortExpression="cat_image"  Visible="false" />
        <asp:TemplateField>
        <ItemTemplate>
            <asp:Image ID="Image1" runat="server" Height="100px"  ImageUrl='<%# Eval("cat_image") %>' />
        </ItemTemplate>
            </asp:TemplateField>
        </columns>
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

