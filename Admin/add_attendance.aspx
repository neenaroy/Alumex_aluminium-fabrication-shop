<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="add_attendance.aspx.cs" Inherits="Admin_add_attendance" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

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

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="true"  BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="emp_id" DataSourceID="SqlDataSource1" ForeColor="Black" Height="200px" Width="936px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
               
                <asp:BoundField DataField="emp_id" HeaderText="Employee ID" SortExpression="emp_id">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="emp_fname" HeaderText="Employee Name" SortExpression="emp_fname">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="emp_mobile" HeaderText="Mobile Number" SortExpression="emp_mobile">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="Attendance Status">
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" style="text-align: center" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="Gray" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT  [emp_id], [emp_fname], [emp_mobile] FROM [emp_tb]"></asp:SqlDataSource>
      <br/>
   
      <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save attendance" class="btn btn-gradient-primary mr-2" />
   
    <p>
        &nbsp;</p>
    </asp:Content>

