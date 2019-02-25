<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="view_model.aspx.cs" Inherits="Admin_view_model" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <ul class="navbar-nav navbar-nav-right">
          <li class="nav-item nav-profile dropdown">
              <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                 <div class="nav-profile-text">
                      <p class="mb-1 text-black">Model</p>
                  </div>
              </a>
            <div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
              <a class="dropdown-item" href="add_model.aspx">
                Add Model
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="view_model.aspx">
               View Model
              </a>
                <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="search_model.aspx">
               Search Model
              </a>
            </div>
          </li>
        </ul>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT * FROM [model_tb]" DeleteCommand="DELETE FROM [model_tb] WHERE [model_id] = @model_id" InsertCommand="INSERT INTO [model_tb] ([model_id], [item_code], [cat_id], [model_image]) VALUES (@model_id, @item_code, @cat_id, @model_image)" UpdateCommand="UPDATE [model_tb] SET [item_code] = @item_code, [cat_id] = @cat_id, [model_image] = @model_image WHERE [model_id] = @model_id">
        <DeleteParameters>
            <asp:Parameter Name="Model Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="model_id" Type="Int32" />
            <asp:Parameter Name="item_code" Type="Int32" />
            <asp:Parameter Name="cat_id" Type="Int32" />
            <asp:Parameter Name="model_image" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="item_code" Type="Int32" />
            <asp:Parameter Name="cat_id" Type="Int32" />
            <asp:Parameter Name="model_image" Type="String" />
            <asp:Parameter Name="model_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

