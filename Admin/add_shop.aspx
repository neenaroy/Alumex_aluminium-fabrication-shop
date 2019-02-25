<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="add_shop.aspx.cs" Inherits="Admin_add_shop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Insert Shop</h4>
                  <form class="forms-sample">
                    <div class="form-group">
                        <asp:TextBox ID="txtshopname" runat="server" CausesValidation="True" class="form-control" placeholder="Shop Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtshopname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtshopname" ErrorMessage="Enter a valid name" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                    </div>
                      <div class="form-group">
                      <asp:TextBox ID="txtloc" runat="server" CausesValidation="True" class="form-control" placeholder="Location"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtloc" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtloc" ErrorMessage="Enter a valid Place" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                    </div>
                      <div class="form-group">
                        <asp:TextBox ID="txtname" runat="server" CausesValidation="True" class="form-control" placeholder="Contact Person"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Enter a valid name" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                    </div>
                       <div class="form-group">
                      <asp:TextBox ID="txtmobile" runat="server" CausesValidation="True" class="form-control" placeholder="Mobile Number"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtmobile" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtmobile" ErrorMessage="Enter a valid number" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                    </div>
                   <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-gradient-primary mr-2" OnClick="Button1_Click"   />
                  </form>
                </div>
              </div>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <ul class="navbar-nav navbar-nav-right">
          <li class="nav-item nav-profile dropdown">
              <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                 <div class="nav-profile-text">
                      <p class="mb-1 text-black">Shop</p>
                  </div>
              </a>
            <div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
              <a class="dropdown-item" href="add_shop.aspx">
                Add shop
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="view_shop.aspx">
               Update Shops
              </a>
                <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="search_shop.aspx">
              Search Shops
              </a>
            </div>
          </li>
        </ul>
    </asp:Content>

