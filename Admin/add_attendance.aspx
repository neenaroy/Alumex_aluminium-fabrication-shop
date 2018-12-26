<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="add_attendance.aspx.cs" Inherits="Admin_add_attendance" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-group">
                      <asp:TextBox ID="txtdoa" runat="server" CausesValidation="True" class="form-control" AutoPostBack="True" placeholder="Date"></asp:TextBox>
                      <cc1:CalendarExtender ID="txtdoa_CalendarExtender" runat="server" Enabled="True" TargetControlID="txtdoa">
                      </cc1:CalendarExtender>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtdoa" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="att_id" DataSourceID="SqlDataSource1" ForeColor="Black" Height="205px" Width="542px">
            <Columns>
                <asp:BoundField DataField="att_id" HeaderText="ID NO" ReadOnly="True" SortExpression="att_id">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
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
        &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT [att_id], [emp_id], [emp_fname], [emp_mobile] FROM [attendance_tb]"></asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update attendance" />
    </p>
    <p>
        &nbsp;</p>
    </asp:Content>

