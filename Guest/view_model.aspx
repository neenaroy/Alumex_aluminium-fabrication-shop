<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/guest.master" AutoEventWireup="true" CodeFile="view_model.aspx.cs" Inherits="Guest_view_model" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
            background-color: #9999FF;
        }
        .auto-style6 {
            width: 110px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <section class="contact py-5">
	<div class="container">
		<h2 class="heading text-capitalize mb-sm-5 mb-4">Purchase Now.... </h2>
			<div class="mail_grid_w3l">
               	<div class="row">
						<div class="col-md-6 contact_left_grid" data-aos="fade-right">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br />
    <br />
         <table class="auto-style5">
           <tr>
            <td>
               <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Font-Bold="True">Kitchen remodeling</asp:LinkButton>
           </td>
            <td class="auto-style6">
              <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" Font-Bold="True">Window</asp:LinkButton>
             </td>
              <td>
                 <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click" Font-Bold="True">Roof Top</asp:LinkButton>
              </td>
               <td>
                  <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click" Font-Bold="True">Staircases</asp:LinkButton>
               </td>
               <td>
                   <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click" Font-Bold="True">Doors &amp; Curtains</asp:LinkButton>
                </td>
                <td>
                  <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click" Font-Bold="True">View All</asp:LinkButton>
                </td>
              </tr>
           </table>                        
    <br />
    &nbsp;<asp:DataList ID="DataList1" runat="server" DataKeyField="model_id" DataSourceID="SqlDataSource1" RepeatColumns="4" >
        <ItemTemplate>
            <table class="w-100">
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="200" Width="300" ImageUrl='<%# Eval("model_image") %>' />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Add To Cart" Width="236px"  OnClick="Button1_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <br />
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT * FROM [model_tb]"></asp:SqlDataSource>
    <br />
    <br />
    <br />
    <br />
       <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT * FROM [model_tb] WHERE ([cat_name] = @cat_name)">
           <SelectParameters>
               <asp:QueryStringParameter Name="cat_name" QueryStringField="category" Type="String" />
           </SelectParameters>
    </asp:SqlDataSource>
                </div>
               </div>
			</div>
		</div>
</section>
</asp:Content>

