<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="add_employee.aspx.cs" Inherits="Admin_add_employee" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <!DOCTYPE html>
<html lang="en">

<head runat="server">
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
  <link rel="shortcut icon" href="../../images/favicon.png" />
</head>
        <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Add Your Employees Your Employees<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT * FROM [employee_table]"></asp:SqlDataSource>
                      <asp:ScriptManager ID="ScriptManager1" runat="server">
                      </asp:ScriptManager>
                    </h4>
                  <form class="forms-sample">
                    <div class="form-group">
                      <asp:TextBox ID="txtfname" runat="server" CausesValidation="True" class="form-control" placeholder="First Name"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtfname" ErrorMessage="Enter a valid name" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
					</div>
                      <div class="form-group">
                      <asp:TextBox ID="txtlname" runat="server" CausesValidation="True" class="form-control" placeholder="Last Name" ></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Enter a valid name" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
														
                    </div>
                       <div class="form-group">
                      <asp:TextBox ID="txthousename" runat="server" CausesValidation="True" class="form-control" placeholder="Address Line" ></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <asp:TextBox ID="txtemail" runat="server" CausesValidation="True" class="form-control" placeholder="Email"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <asp:TextBox ID="txtmobile" runat="server" CausesValidation="True" class="form-control" placeholder="Mobile Number"></asp:TextBox>
                    </div>
                   <div class="form-group">
                      <asp:TextBox ID="txtloc" runat="server" CausesValidation="True" class="form-control" placeholder="Location"></asp:TextBox>
                    </div>
                       <div class="form-group">
                      <asp:TextBox ID="txtdoj" runat="server" CausesValidation="True" class="form-control" placeholder="Date of join"></asp:TextBox>
                           <cc1:CalendarExtender ID="txtdoj_CalendarExtender" runat="server" Enabled="True" TargetControlID="txtdoj">
                           </cc1:CalendarExtender>
                    </div>
                   <asp:Button ID="Button4" runat="server" Text="Submit" OnClick="Button4_Click" class="btn btn-gradient-primary mr-2"  />
                  </form>
                </div>
              </div>
            </div>
    </asp:Content>

