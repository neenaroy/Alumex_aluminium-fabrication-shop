<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="search_shop.aspx.cs" Inherits="Admin_search_shop" %>

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
               Update Shops
              </a>
                <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="search_shop.aspx">
              Search Shops
              </a>
            </div>
          </li>
        </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="form-group">
           <label for="exampleInputUsername1">Select shop</label>
            <asp:DropDownList ID="DropDownList1"  class="form-control form-control-sm" runat="server" DataSourceID="SqlDataSource1" DataTextField="shop_name" DataValueField="shop_name"></asp:DropDownList>
             <br />
          </div>
      <div class="form-group">
             <asp:Button ID="Button1" runat="server" class="btn btn-gradient-primary mr-2" OnClick="Button1_Click" Text="Search" />
            <br />
    </div>
          <div class="form-group">
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="shop_id" DataSourceID="SqlDataSource2" Visible="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="shop_id" HeaderText="Shop Id" ReadOnly="True" SortExpression="shop_id" />
            <asp:BoundField DataField="shop_name" HeaderText="Shop Name" SortExpression="shop_name" />
            <asp:BoundField DataField="location" HeaderText="Location" SortExpression="location" />
            <asp:BoundField DataField="contact_person" HeaderText="Contact Person" SortExpression="contact_person" />
            <asp:BoundField DataField="mobile" HeaderText="Mobile" SortExpression="mobile" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT DISTINCT [shop_name] FROM [shop_tb]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT * FROM [shop_tb] WHERE ([shop_name] = @shop_name)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="shop_name" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
        </div>
</asp:Content>

