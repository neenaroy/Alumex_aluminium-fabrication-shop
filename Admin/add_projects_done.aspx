﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="add_projects_done.aspx.cs" Inherits="Admin_add_projects_done" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <ul class="navbar-nav navbar-nav-right">
          <li class="nav-item nav-profile dropdown">
              <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                 <div class="nav-profile-text">
                      <p class="mb-1 text-black">Projects Done</p>
                  </div>
              </a>
            <div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
              <a class="dropdown-item" href="add_projects_done.aspx">
                Add Projects
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="view_projects_done.aspx">
                View Projects
              </a>
            </div>
          </li>
        </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Add Projects Done</h4>
                  <form class="forms-sample">
                    <div class="form-group">
                          <label for="shopnames">Select category</label>
                          <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="cat_name" DataValueField="cat_name" class="form-control form-control-sm"></asp:DropDownList>
                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT [cat_name] FROM [category_tb]"></asp:SqlDataSource>
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

