﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="add_category.aspx.cs" Inherits="Admin_add_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Enter Category</h4>
                  <form class="forms-sample">
                    <div class="form-group">
                        <asp:TextBox ID="txtcatname" runat="server" CausesValidation="True" class="form-control" placeholder="First Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtcatname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtcatname" ErrorMessage="Enter a valid name" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                    </div>
                      <div class="form-group">
                      <asp:TextBox ID="txtdes" runat="server" CausesValidation="True" class="form-control" placeholder="Last Name" ></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtdes" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtdes" ErrorMessage="Enter a valid name" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]+$"></asp:RegularExpressionValidator>
                    </div>
                   <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-gradient-primary mr-2"  />
                  </form>
                </div>
              </div>
            </div>
</asp:Content>

