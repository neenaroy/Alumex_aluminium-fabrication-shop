<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="search_stock.aspx.cs" Inherits="Admin_search_stock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <ul class="navbar-nav navbar-nav-right">
          <li class="nav-item nav-profile dropdown">
              <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                 <div class="nav-profile-text">
                      <p class="mb-1 text-black">Stock</p>
                  </div>
              </a>
            <div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
              <a class="dropdown-item" href="add_stock.aspx">
                Add Stock
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="add_sell.aspx">
               In_stock
              </a>
                 <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="add_sell.aspx">
               Out_stock
              </a>
                 <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="search_stock.aspx">
               Search Stock
              </a>
            </div>
          </li>
        </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-group">
       <label for="exampleInputUsername1">Select Item Code</label>
       <asp:DropDownList ID="DropDownList1" runat="server" class="form-control form-control-sm" DataSourceID="SqlDataSource2" DataTextField="item_code" DataValueField="item_code" ></asp:DropDownList>
    </div>
    <div class="form-group">
    <asp:Button ID="Button1" runat="server" Text="Search" class="btn btn-gradient-primary mr-2" OnClick="Button1_Click" />
        <br />
        </div>
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="stock_id" DataSourceID="SqlDataSource1" ForeColor="Black" Height="179px" Width="950px" Visible="False">
            <Columns>
                <asp:BoundField DataField="stock_id" HeaderText="Stock ID" ReadOnly="True" SortExpression="stock_id">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="item_code" HeaderText="Item Code" SortExpression="item_code">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="item_price" HeaderText="Item Price" SortExpression="item_price">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="shop_id" HeaderText="Shop ID" SortExpression="shop_id">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="supply_place" HeaderText="Place of Supply" SortExpression="supply_place">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="invoice_number" HeaderText="Invoice Number" SortExpression="invoice_number">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="invoice_date" HeaderText="Date Of Invoice" SortExpression="invoice_date">
                <HeaderStyle Height="50px" />
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
    </div>



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT * FROM [stock_tb] WHERE ([item_code] = @item_code)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="item_code" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT DISTINCT [item_code] FROM [stock_tb]"></asp:SqlDataSource>
</asp:Content>

