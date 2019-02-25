<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="search_attendance.aspx.cs" Inherits="Admin_search_attendance" %>

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
            <asp:DropDownList ID="DropDownList1"  class="form-control form-control-sm" runat="server" DataSourceID="SqlDataSource6" DataTextField="emp_id" DataValueField="emp_id"></asp:DropDownList>
             <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT DISTINCT [emp_id] FROM [attendance_tb]"></asp:SqlDataSource>
             <br />
          </div>
      <div class="form-group">
             <asp:Button ID="Button1" runat="server" class="btn btn-gradient-primary mr-2" OnClick="Button1_Click" Text="Search" />
            <br />
    </div>
          <div class="form-group">
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="att_id" DataSourceID="SqlDataSource5" Visible="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Height="113px" Width="894px">
        <Columns>
            <asp:BoundField DataField="emp_id" HeaderText="Employee Id" SortExpression="emp_id" />
            <asp:CheckBoxField DataField="att_status" HeaderText="Attendance status" SortExpression="att_status" />
            <asp:BoundField DataField="att_date" HeaderText="Date" SortExpression="att_date" />
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
              <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT * FROM [attendance_tb] WHERE ([emp_id] = @emp_id)">
                  <SelectParameters>
                      <asp:ControlParameter ControlID="DropDownList1" Name="emp_id" PropertyName="SelectedValue" Type="Int32" />
                  </SelectParameters>
              </asp:SqlDataSource>
        </div>

</asp:Content>

