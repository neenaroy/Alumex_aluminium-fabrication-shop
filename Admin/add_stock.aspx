<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="add_stock.aspx.cs" Inherits="Admin_add_stock" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <head>
        </head>
         <div class="col-12 grid-margin stretch-card">
              <div class="card"><div class="card-body">
                  <h4 class="card-title">  Insert Stock</h4>
                  <asp:ScriptManager ID="ScriptManager1" runat="server">
                      </asp:ScriptManager>
                  <form class="forms-sample">
                    <div class="form-group">
                        <asp:DropDownList ID="DropDownList2" runat="server" class="form-control form-control-sm" DataSourceID="SqlDataSource2" DataTextField="item_name" DataValueField="item_code"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT [item_code], [item_name] FROM [item_tb]"></asp:SqlDataSource>
                    </div>
                  <div class="form-group">
                        <asp:TextBox ID="txtitemprice" runat="server" CausesValidation="True" class="form-control" placeholder="Item Price"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtitemprice" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtitemprice" ErrorMessage="Enter a valid price" ForeColor="Red" ValidationExpression="([0-9])[0-9]*[.]?[0-9]*"></asp:RegularExpressionValidator>
                    </div>
                      <div class="form-group">
                        <asp:TextBox ID="txtqnty" runat="server" CausesValidation="True" class="form-control" placeholder="Quantity"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtqnty" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtqnty" ErrorMessage="Enter a valid amount" ForeColor="Red" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                        <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtqnty" ErrorMessage="Value must be a whole number" ForeColor="Red" />
                      </div>
                      <div class="form-group">
                          <label for="shopnames">Shop Name</label>
                          <asp:DropDownList ID="DropDownList1" runat="server" class="form-control form-control-sm" DataSourceID="SqlDataSource1" DataTextField="shop_name" DataValueField="shop_id"></asp:DropDownList>
                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT [shop_id], [shop_name] FROM [shop_tb]"></asp:SqlDataSource>
                      </div>
                     <div class="form-group">
                      <asp:TextBox ID="txtsupply" runat="server" CausesValidation="True" class="form-control" placeholder="Place of Supply"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtsupply" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtsupply" ErrorMessage="Enter a valid Place" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                     </div>
                    <div class="form-group">
                      <asp:TextBox ID="txtinvoice" runat="server" CausesValidation="True" class="form-control" placeholder="Invoice Number"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtinvoice" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtinvoice" ErrorMessage="Enter a valid number" ForeColor="Red" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
                    </div>
                    <div class="form-group">
                        <asp:TextBox ID="txtinvoicedate" runat="server" class="form-control" placeholder="Date of Invoice"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtinvoicedate" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                   <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-gradient-primary mr-2" OnClick="Button1_Click" />
                         <br />
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
                      <p class="mb-1 text-black">Stock</p>
                  </div>
              </a>
            <div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
              <a class="dropdown-item" href="add_stock.aspx">
                Add Stock
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="view_stock.aspx">
               In_stock
              </a>
                
                 <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="search_stock.aspx">
               Search Stock
              </a>
            </div>
          </li>
        </ul>
    </asp:Content>

