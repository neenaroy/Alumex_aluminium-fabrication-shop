<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="view_item.aspx.cs" Inherits="Admin_view_item" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <ul class="navbar-nav navbar-nav-right">
          <li class="nav-item nav-profile dropdown">
              <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                 <div class="nav-profile-text">
                      <p class="mb-1 text-black">Item</p>
                  </div>
              </a>
            <div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
              <a class="dropdown-item" href="add_item.aspx">
                Add Item
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="view_item.aspx">
               View Item
              </a>
                <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="Search_item.aspx">
               Search Item
              </a>
            </div>
          </li>
        </ul>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="item_id" DataSourceID="SqlDataSource1" ForeColor="Black" Height="163px" Width="829px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="item_id" HeaderText="ID" ReadOnly="True" SortExpression="item_id">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="item_code" HeaderText="Item Code" SortExpression="item_code">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="item_name" HeaderText="Item Name" SortExpression="item_name">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" DeleteCommand="DELETE FROM [item_tb] WHERE [item_id] = @item_id" InsertCommand="INSERT INTO [item_tb] ([item_id], [item_code], [item_name]) VALUES (@item_id, @item_code, @item_name)" SelectCommand="SELECT * FROM [item_tb]" UpdateCommand="UPDATE [item_tb] SET [item_code] = @item_code, [item_name] = @item_name WHERE [item_id] = @item_id">
        <DeleteParameters>
            <asp:Parameter Name="item_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="item_id" Type="Int32" />
            <asp:Parameter Name="item_code" Type="Int32" />
            <asp:Parameter Name="item_name" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="item_code" Type="Int32" />
            <asp:Parameter Name="item_name" Type="String" />
            <asp:Parameter Name="item_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

