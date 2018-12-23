<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="add_category.aspx.cs" Inherits="Admin_add_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Add Category</h4>
                  <form class="forms-sample">
                    <div class="form-group">
                        <asp:TextBox ID="txtcatname" runat="server" CausesValidation="True" class="form-control" placeholder="Category Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtcatname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtcatname" ErrorMessage="Enter a valid name" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                    </div>
                      <div class="form-group">
                      <asp:TextBox ID="txtdes" runat="server" CausesValidation="True" class="form-control" placeholder="Description" TextMode="MultiLine" ></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtdes" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                     <!-- <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtdes" ErrorMessage="Enter something meaningful" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>-->
                    </div>
                      <div class="form-group">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        <asp:Button ID="Button2" runat="server" Text="Upload" class="file-upload-browse btn btn-gradient-primary" OnClick="Button2_Click"  />
                        <asp:Image ID="Image1" runat="server" Height="150px" Width="200px" />
                    </div>
                   <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-gradient-primary mr-2" OnClick="Button1_Click1"   />
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
                      <p class="mb-1 text-black">Category</p>
                  </div>
              </a>
            <div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
              <a class="dropdown-item" href="add_category.aspx">
                Add category
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="add_sell.aspx">
                Signout
              </a>
            </div>
          </li>
        </ul>
    </asp:Content>

