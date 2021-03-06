﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="add_employee.aspx.cs" Inherits="Admin_add_employee" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=Purple Admin</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="../../vendors/iconfonts/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="../../vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- inject:css -->
  <link rel="stylesheet" href="../../css/style.css">
  <!-- endinject -->
</head>
        <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">
                      <asp:ScriptManager ID="ScriptManager2" runat="server">
                      </asp:ScriptManager>
                      Add Your Employees</h4>
                  <form class="forms-sample">
                    <div class="form-group">
                        <asp:TextBox ID="txtfname" runat="server" CausesValidation="True" class="form-control" placeholder="First Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtfname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtfname" ErrorMessage="Enter a valid name" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                    </div>
                      <div class="form-group">
                      <asp:TextBox ID="txtlname" runat="server" CausesValidation="True" class="form-control" placeholder="Last Name" ></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtlname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtlname" ErrorMessage="Enter a valid name" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                    </div>
                      <div class="form-group">
                        <asp:TextBox ID="txthousename" runat="server" CausesValidation="True" class="form-control" placeholder="Address Line" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txthousename" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txthousename" ErrorMessage="Enter a valid address" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                    </div>
                    <div class="form-group">
                      <asp:TextBox ID="txtemail" runat="server" CausesValidation="True" class="form-control" placeholder="Email"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter a valid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </div>
                    <div class="form-group">
                      <asp:TextBox ID="txtmobile" runat="server" CausesValidation="True" class="form-control" placeholder="Mobile Number"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtmobile" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtmobile" ErrorMessage="Enter a valid number" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                    </div>
                   <div class="form-group">
                      <asp:TextBox ID="txtdoj" runat="server" CausesValidation="True" class="form-control" AutoPostBack="True" placeholder="Date of join"></asp:TextBox>
                       <cc1:CalendarExtender ID="txtdoj_CalendarExtender" runat="server" Enabled="True" TargetControlID="txtdoj">
                       </cc1:CalendarExtender>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtdoj" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                   <div class="form-group">
                      <asp:TextBox ID="txtloc" runat="server" CausesValidation="True" class="form-control" placeholder="Location"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtloc" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtloc" ErrorMessage="Enter a valid place" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                    </div>
                   <asp:Button ID="Button4" runat="server" Text="Submit" OnClick="Button4_Click" class="btn btn-gradient-primary mr-2"  />
                  </form>
                </div>
              </div>
            </div>
    </html>
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
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

