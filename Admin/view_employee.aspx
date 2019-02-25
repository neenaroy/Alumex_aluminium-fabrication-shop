<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="view_employee.aspx.cs" Inherits="Admin_view_employee" %>

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
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="emp_id" DataSourceID="SqlDataSource1" ForeColor="Black">
       <Columns>
            <asp:BoundField DataField="emp_id" HeaderText="Employee id" ReadOnly="True" SortExpression="emp_id" />
            <asp:BoundField DataField="emp_fname" HeaderText="  First Name" SortExpression="emp_fname" />
            <asp:BoundField DataField="emp_lname" HeaderText="last name" SortExpression="emp_lname" />
            <asp:BoundField DataField="emp_house" HeaderText="House Name" SortExpression="emp_house" />
            <asp:BoundField DataField="emp_email" HeaderText="Email" SortExpression="emp_email" />
            <asp:BoundField DataField="emp_mobile" HeaderText="Number" SortExpression="emp_mobile" />
            <asp:BoundField DataField="emp_doj" HeaderText="date of Joining" SortExpression="emp_doj" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT * FROM [emp_tb]" DeleteCommand="DELETE FROM [emp_tb] WHERE [emp_id] = @emp_id" InsertCommand="INSERT INTO [emp_tb] ([emp_id], [emp_fname], [emp_lname], [emp_house], [emp_email], [emp_mobile], [emp_doj], [emp_loc]) VALUES (@emp_id, @emp_fname, @emp_lname, @emp_house, @emp_email, @emp_mobile, @emp_doj, @emp_loc)" UpdateCommand="UPDATE [emp_tb] SET [emp_fname] = @emp_fname, [emp_lname] = @emp_lname, [emp_house] = @emp_house, [emp_email] = @emp_email, [emp_mobile] = @emp_mobile, [emp_doj] = @emp_doj, [emp_loc] = @emp_loc WHERE [emp_id] = @emp_id">
        <DeleteParameters>
            <asp:Parameter Name="emp_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="emp_id" Type="Int32" />
            <asp:Parameter Name="emp_fname" Type="String" />
            <asp:Parameter Name="emp_lname" Type="String" />
            <asp:Parameter Name="emp_house" Type="String" />
            <asp:Parameter Name="emp_email" Type="String" />
            <asp:Parameter Name="emp_mobile" Type="Decimal" />
            <asp:Parameter DbType="Date" Name="emp_doj" />
            <asp:Parameter Name="emp_loc" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="emp_fname" Type="String" />
            <asp:Parameter Name="emp_lname" Type="String" />
            <asp:Parameter Name="emp_house" Type="String" />
            <asp:Parameter Name="emp_email" Type="String" />
            <asp:Parameter Name="emp_mobile" Type="Decimal" />
            <asp:Parameter DbType="Date" Name="emp_doj" />
            <asp:Parameter Name="emp_loc" Type="String" />
            <asp:Parameter Name="emp_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

