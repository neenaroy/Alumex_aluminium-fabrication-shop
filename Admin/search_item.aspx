﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="search_item.aspx.cs" Inherits="Admin_search_item" %>

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
    <div class="form-group">
           <label for="exampleInputUsername1">Select Item</label>
            <asp:DropDownList ID="DropDownList1"  class="form-control form-control-sm" runat="server" DataSourceID="SqlDataSource1" DataTextField="item_code" DataValueField="item_code"></asp:DropDownList>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT DISTINCT [item_code] FROM [item_tb]"></asp:SqlDataSource>
             <br />
          </div>
      <div class="form-group">
             <asp:Button ID="Button1" runat="server" class="btn btn-gradient-primary mr-2" OnClick="Button1_Click" Text="Search" />
            <br />
    </div>
          <div class="form-group">
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="item_id" DataSourceID="SqlDataSource2" Visible="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Height="113px" Width="894px">
        <Columns>
            <asp:BoundField DataField="item_name" HeaderText="item_name" SortExpression="item_name" />
            <asp:BoundField DataField="item_code" HeaderText="item_code" SortExpression="item_code" />
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
              <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT * FROM [item_tb] WHERE ([item_code] = @item_code)">
                  <SelectParameters>
                      <asp:ControlParameter ControlID="DropDownList1" Name="item_code" PropertyName="SelectedValue" Type="Int32" />
                  </SelectParameters>
              </asp:SqlDataSource>
        </div>
</asp:Content>

