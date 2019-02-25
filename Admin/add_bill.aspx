<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="add_bill.aspx.cs" Inherits="Admin_add_bill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <ul class="navbar-nav navbar-nav-right">
          <li class="nav-item nav-profile dropdown">
              <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                 <div class="nav-profile-text">
                      <p class="mb-1 text-black">Bill</p>
                  </div>
              </a>
            <div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
              <a class="dropdown-item" href="add_bill.aspx">
                Generate Bill
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="view_bill.aspx">
               Update
              </a>
            </div>
          </li>
        </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="form-group">
            <asp:TextBox ID="txtbill_no" runat="server"  class="form-control" placeholder="Bill Number"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtbill_no"></asp:RequiredFieldValidator>
             <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtbill_no" ErrorMessage="Value must be a whole number" ForeColor="Red" />
        </div>
     <div class="form-group">
           <label for="customer">Customer</label>
           <asp:DropDownList ID="DropDownList1" runat="server" class="form-control form-control-sm" DataSourceID="SqlDataSource4" DataTextField="mobile" DataValueField="mobile" OnSelectedIndexChanged="ddlitem_SelectedIndexChanged"></asp:DropDownList>
           <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT DISTINCT [mobile] FROM [booking_tb] WHERE ([delivery] = @delivery)">
               <SelectParameters>
                   <asp:Parameter DefaultValue="approved" Name="delivery" Type="String" />
               </SelectParameters>
           </asp:SqlDataSource>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT [mobile] FROM [booking_tb] WHERE ([delivery] = @delivery)">
           </asp:SqlDataSource>
       </div>
        <div class="form-group">
            <asp:TextBox ID="txtsquare" runat="server"  class="form-control" placeholder="Square feet"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtsquare"></asp:RequiredFieldValidator>
             <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtbill_no" ErrorMessage="Value must be a whole number" ForeColor="Red" />
        </div> 
        <div class="form-group">
            <asp:TextBox ID="txtamount" runat="server"  class="form-control" placeholder="Amount"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="txtamount"></asp:RequiredFieldValidator>
             <asp:CompareValidator runat="server" Operator="DataTypeCheck" Type="Integer" ControlToValidate="txtamount" ErrorMessage="Value must be a whole number" ForeColor="Red" />
        </div>
        <div class="form-group">
            <label for="category">Category</label>
            <asp:DropDownList ID="DropDownList2" runat="server" class="form-control form-control-sm" DataSourceID="SqlDataSource2" DataTextField="cat_name" DataValueField="cat_name"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT [cat_name] FROM [category_tb]"></asp:SqlDataSource>
         </div> 
        <div class="form-group">
            <label for="itemcode">Item Code</label>
            <asp:DropDownList ID="ddlitem" runat="server" class="form-control form-control-sm" DataSourceID="SqlDataSource5" DataTextField="item_code" DataValueField="item_code" OnSelectedIndexChanged="ddlitem_SelectedIndexChanged"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT [item_code] FROM [item_tb]"></asp:SqlDataSource>
         </div> 
        
    <asp:Button ID="Button1" runat="server" Text="Submit" class="btn btn-gradient-primary mr-2" OnClick="Button1_Click"   />
    <div>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource3" AutoGenerateColumns="False" DataKeyNames="stock_id" Visible="False">
        <Columns>
            <asp:BoundField DataField="stock_id" HeaderText="stock_id" SortExpression="stock_id" ReadOnly="True" />
            <asp:BoundField DataField="item_code" HeaderText="item_code" SortExpression="item_code" />
            <asp:BoundField DataField="item_price" HeaderText="item_price" SortExpression="item_price" />
            <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
        </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT [stock_id], [item_code], [item_price], [quantity] FROM [stock_tb] WHERE ([item_code] = @item_code)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlitem" Name="item_code" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        </div>
</asp:Content>

