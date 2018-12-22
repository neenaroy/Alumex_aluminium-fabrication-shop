<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="add_sell.aspx.cs" Inherits="Admin_add_sell" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-12 grid-margin stretch-card">
              <div class="card"><div class="card-body">
                  <h4 class="card-title">
                      <asp:ScriptManager ID="ScriptManager1" runat="server">
                      </asp:ScriptManager>
                      Insert Stock</h4>
                  <form class="forms-sample">
                   <div class="form-group">
                          <label for="cutomername">Customer Name</label>
                       <asp:DropDownList ID="DropDownList1" runat="server" class="form-control form-control-sm"></asp:DropDownList>
                      </div>
                      <div class="form-group">
                          <label for="itemnames">Item Name</label>
                          <asp:DropDownList ID="DropDownList2" runat="server" class="form-control form-control-sm" DataSourceID="SqlDataSource1" DataTextField="item_name" DataValueField="item_name"></asp:DropDownList>
                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT [item_name] FROM [stock_tb]"></asp:SqlDataSource>
                      </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtselldate" runat="server" CausesValidation="True" class="form-control" placeholder="Date of sell"></asp:TextBox>
                        <cc1:CalendarExtender ID="txtselldate_CalendarExtender" runat="server" Enabled="True" TargetControlID="txtselldate">
                        </cc1:CalendarExtender>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtselldate" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                   <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-gradient-primary mr-2" />
                  </form>
                </div>
              </div>
             </div>
</asp:Content>

