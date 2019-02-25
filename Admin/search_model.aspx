<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="search_model.aspx.cs" Inherits="Admin_search_model" %>

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
      <div class="form-group">
           <label for="exampleInputUsername1">Select Model</label>
            <asp:DropDownList ID="DropDownList1"  class="form-control form-control-sm" runat="server" DataSourceID="SqlDataSource1" DataTextField="model_id" DataValueField="model_id"></asp:DropDownList>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT DISTINCT [model_id] FROM [model_tb]"></asp:SqlDataSource>
             <br />
          </div>
      <div class="form-group">
             <asp:Button ID="Button1" runat="server" class="btn btn-gradient-primary mr-2" OnClick="Button1_Click" Text="Search" />
            <br />
    </div>
          <div class="form-group">
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="model_id" DataSourceID="SqlDataSource2" Visible="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Height="113px" Width="894px">
        <Columns>
            <asp:BoundField DataField="model_id" HeaderText="Model_id" SortExpression="model_id" ReadOnly="True" />
            <asp:BoundField DataField="item_code" HeaderText="Item_code" SortExpression="item_code" />
            <asp:BoundField DataField="cat_id" HeaderText="cat_id" SortExpression="cat_id" />
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
              <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT [model_id], [item_code], [cat_id] FROM [model_tb] WHERE ([model_id] = @model_id)">
                  <SelectParameters>
                      <asp:ControlParameter ControlID="DropDownList1" Name="model_id" PropertyName="SelectedValue" Type="Int32" />
                  </SelectParameters>
              </asp:SqlDataSource>
        </div>

</asp:Content>

