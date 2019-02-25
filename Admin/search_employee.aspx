<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="search_employee.aspx.cs" Inherits="Admin_search_employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <ul class="navbar-nav navbar-nav-right">
          <li class="nav-item nav-profile dropdown">
              <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                 <div class="nav-profile-text">
                      <p class="mb-1 text-black">Employee</p>
                  </div>
              </a>
            <div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
              <a class="dropdown-item" href="add_employee.aspx">
                Add Employee
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="view_employee.aspx">
               View Employee
              </a>
               <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="add_attendance.aspx">
               Add Attendance
              </a>
                 <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="search_employee.aspx">
               Search Employee
              </a>
                 <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="search_attendance.aspx">
               Search Attendance
              </a>
            </div>

          </li>
        </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="form-group">
           <label for="exampleInputUsername1">Select Employee</label>
            <asp:DropDownList ID="DropDownList1"  class="form-control form-control-sm" runat="server" DataSourceID="SqlDataSource3" DataTextField="emp_mobile" DataValueField="emp_mobile"></asp:DropDownList>
             <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString2 %>" SelectCommand="SELECT DISTINCT [emp_mobile] FROM [emp_tb]"></asp:SqlDataSource>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT DISTINCT [item_code] FROM [item_tb]"></asp:SqlDataSource>
             <br />
          </div>
      <div class="form-group">
             <asp:Button ID="Button1" runat="server" class="btn btn-gradient-primary mr-2" OnClick="Button1_Click" Text="Search" />
            <br />
    </div>
          <div class="form-group">
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="emp_id" DataSourceID="SqlDataSource4" Visible="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Height="113px" Width="894px">
        <Columns>
            <asp:BoundField DataField="emp_id" HeaderText="Id" SortExpression="emp_id" ReadOnly="True" />
            <asp:BoundField DataField="emp_fname" HeaderText="First name" SortExpression="emp_fname" />
            <asp:BoundField DataField="emp_lname" HeaderText="Last name" SortExpression="emp_lname" />
            <asp:BoundField DataField="emp_house" HeaderText="House Name" SortExpression="emp_house" />
            <asp:BoundField DataField="emp_email" HeaderText="Email" SortExpression="emp_email" />
            <asp:BoundField DataField="emp_mobile" HeaderText="Mobile" SortExpression="emp_mobile" />
            <asp:BoundField DataField="emp_doj" HeaderText="Date of Joining" SortExpression="emp_doj" />
            <asp:BoundField DataField="emp_loc" HeaderText="Location" SortExpression="emp_loc" />
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
              <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT * FROM [emp_tb] WHERE ([emp_mobile] = @emp_mobile)">
                  <SelectParameters>
                      <asp:ControlParameter ControlID="DropDownList1" Name="emp_mobile" PropertyName="SelectedValue" Type="Decimal" />
                  </SelectParameters>
              </asp:SqlDataSource>
              <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT * FROM [item_tb] WHERE ([item_code] = @item_code)">
                  <SelectParameters>
                      <asp:ControlParameter ControlID="DropDownList1" Name="item_code" PropertyName="SelectedValue" Type="Int32" />
                  </SelectParameters>
              </asp:SqlDataSource>
        </div>

</asp:Content>

