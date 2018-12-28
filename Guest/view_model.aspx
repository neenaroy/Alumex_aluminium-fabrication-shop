<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/guest.master" AutoEventWireup="true" CodeFile="view_model.aspx.cs" Inherits="Guest_view_model" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style7 {
            width: 175%;
            height: 0;
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
                            <table align="center" class="auto-style7">
                                <tr>
                                    <td style="text-align: center">
               <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Font-Bold="True" ForeColor="#000099"  Font-Size="20px">Kitchen remodeling</asp:LinkButton>
                                    </td>
                                    <td style="text-align: center">
                                        &nbsp;</td>
                                    <td style="text-align: center">
              <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" Font-Bold="True" Font-Size="20px" ForeColor="#0000cc">Window</asp:LinkButton>
                                    </td>
                                     <td style="text-align: center">
                                         &nbsp;</td>
                                    <td style="text-align: center">
                 <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click" Font-Bold="True" Font-Size="20px" ForeColor="#000099">Roof Top</asp:LinkButton>
                                    </td>
                                     <td style="text-align: center">
                                         &nbsp;</td>
                                    <td style="text-align: center">
                  <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click" Font-Bold="True" Font-Size="20px" ForeColor="#0000cc">Staircases</asp:LinkButton>
                                    </td>
                                     <td style="text-align: center">
                                         &nbsp;</td>
                                    <td style="text-align: center">
                   <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click" Font-Bold="True" Font-Size="20px" ForeColor="#000099">Doors &amp; Curtains</asp:LinkButton>
                                    </td>
                                     <td style="text-align: center">
                                         &nbsp;</td>
                                    <td style="text-align: center">
                  <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click" Font-Bold="True" ForeColor="#0000cc">View All</asp:LinkButton>
                                    </td>
                                </tr>
                            </table>
    <br />
    <br />
    <br />
    &nbsp;<asp:DataList ID="DataList1" runat="server" DataKeyField="model_id" DataSourceID="SqlDataSource1" RepeatColumns="4" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged"  >
        <ItemTemplate>
            &nbsp;<br />
            <table class="w-100">
                <tr>
                    <td>Model ID: 
                        <asp:Label ID="model_idLabel" runat="server" Font-Bold="false" Font-Size="20px"  ForeColor="#000066" Text='<%# Eval("model_id") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Name&nbsp; :
                        <asp:Label ID="model_nameLabel" runat="server" Font-Bold="false" Font-Size="20px"  ForeColor="#000066" Text='<%# Eval("model_name") %>' />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
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
                        <asp:Button ID="Button1" runat="server" Text="Add To Cart" Height="71px" Width="297px" CommandName="addtocart" CommandArgument='<%# Eval("model_id") %>' />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
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

