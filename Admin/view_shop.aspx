<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="view_shop.aspx.cs" Inherits="Admin_view_shop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <ul class="navbar-nav navbar-nav-right">
          <li class="nav-item nav-profile dropdown">
              <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                 <div class="nav-profile-text">
                      <p class="mb-1 text-black">Shop</p>
                  </div>
              </a>
            <div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
              <a class="dropdown-item" href="add_shop.aspx">
                Add shop
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="view_shop.aspx">
               Update
              </a>
            </div>
          </li>
        </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="shop_id" DataSourceID="SqlDataSource1" ForeColor="Black">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="shop_id" HeaderText="Shop ID" ReadOnly="True" SortExpression="shop_id">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="shop_name" HeaderText="Shop Name" SortExpression="shop_name">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="location" HeaderText="Location" SortExpression="location">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="contact_person" HeaderText="Contact Person" SortExpression="contact_person">
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="mobile" HeaderText="Mobile Number" SortExpression="mobile">
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" DeleteCommand="DELETE FROM [shop_tb] WHERE [shop_id] = @shop_id" InsertCommand="INSERT INTO [shop_tb] ([shop_id], [shop_name], [location], [contact_person], [mobile]) VALUES (@shop_id, @shop_name, @location, @contact_person, @mobile)" SelectCommand="SELECT * FROM [shop_tb]" UpdateCommand="UPDATE [shop_tb] SET [shop_name] = @shop_name, [location] = @location, [contact_person] = @contact_person, [mobile] = @mobile WHERE [shop_id] = @shop_id">
        <DeleteParameters>
            <asp:Parameter Name="shop_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="shop_id" Type="Int32" />
            <asp:Parameter Name="shop_name" Type="String" />
            <asp:Parameter Name="location" Type="String" />
            <asp:Parameter Name="contact_person" Type="String" />
            <asp:Parameter Name="mobile" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="shop_name" Type="String" />
            <asp:Parameter Name="location" Type="String" />
            <asp:Parameter Name="contact_person" Type="String" />
            <asp:Parameter Name="mobile" Type="Decimal" />
            <asp:Parameter Name="shop_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

