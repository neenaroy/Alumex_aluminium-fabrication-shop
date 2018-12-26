<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="edit_delete_feedback.aspx.cs" Inherits="User_edit_delete_feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class="contact py-5">
	<div class="container">
		<h2 class="heading text-capitalize mb-sm-5 mb-4">Update Your Feedback.... </h2>
			<div class="mail_grid_w3l">
               	<div class="row">
						<div class="col-md-6 contact_left_grid" data-aos="fade-right">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="fdbk_id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" >
                                <AlternatingRowStyle BackColor="#CCCCCC" />
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                    <asp:BoundField DataField="feedback" HeaderText="feedback" SortExpression="feedback" />
                                </Columns>
                                <FooterStyle BackColor="#CCCCCC" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#383838" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" DeleteCommand="DELETE FROM [feedback_tb] WHERE [fdbk_id] = @fdbk_id" InsertCommand="INSERT INTO [feedback_tb] ([fdbk_id], [feedback]) VALUES (@fdbk_id, @feedback)" SelectCommand="SELECT [fdbk_id], [feedback] FROM [feedback_tb] WHERE ([mobile] = @mobile)" UpdateCommand="UPDATE [feedback_tb] SET [feedback] = @feedback WHERE [fdbk_id] = @fdbk_id">
                                <DeleteParameters>
                                    <asp:Parameter Name="fdbk_id" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="fdbk_id" Type="Int32" />
                                    <asp:Parameter Name="feedback" Type="String" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:SessionParameter Name="mobile" SessionField="username" Type="Decimal" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="feedback" Type="String" />
                                    <asp:Parameter Name="fdbk_id" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                         </div>
			</div>
		</div>
   </div>
</section>
</asp:Content>

