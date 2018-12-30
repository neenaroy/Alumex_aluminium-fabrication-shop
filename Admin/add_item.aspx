<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="add_item.aspx.cs" Inherits="Admin_add_item" %>

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
            </div>
          </li>
        </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="col-12 grid-margin stretch-card">
    <div class="card"><div class="card-body">
        <h4 class="card-title">  Insert Item</h4>
        <div class="form-group">
              <asp:TextBox ID="txtitem_name" runat="server" class="form-control" placeholder="Item Name"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtitem_name"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <asp:TextBox ID="txtitem_code" runat="server"  class="form-control" placeholder="Item Code"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtitem_code"></asp:RequiredFieldValidator>
             <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtitem_code" ErrorMessage="Value must be a whole number" ForeColor="Red" />
        </div>
    <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-gradient-primary mr-2" OnClick="Button1_Click1" />
    </div>
</div>
</asp:Content>

