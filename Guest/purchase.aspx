<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/guest.master" AutoEventWireup="true" CodeFile="purchase.aspx.cs" Inherits="Guest_purchase" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Doors And Curtains</asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Windows</asp:LinkButton>
    <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Staircases</asp:LinkButton>
    <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">Kitchen Cabinet</asp:LinkButton>
    <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">Roof Top</asp:LinkButton>
        <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">View All</asp:LinkButton>


    <asp:DataList ID="DataList1" runat="server" DataKeyField="model_id" DataSourceID="SqlDataSource1" RepeatColumns="4" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
            model_id:
            <asp:Label ID="model_idLabel" runat="server" Text='<%# Eval("model_id") %>' />
            <br />
            model_name:
            <asp:Label ID="model_nameLabel" runat="server" Text='<%# Eval("model_name") %>' />
            <br />
            cat_id:
            <asp:Label ID="cat_idLabel" runat="server" Text='<%# Eval("cat_id") %>' />
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" Height="200" Width="300" ImageUrl='<%# Eval("model_image") %>' />
<br />
            <asp:Button ID="Button1" runat="server" CommandName="addtocart" OnClick="Button1_Click" Text="Add To Cart" />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT * FROM [model_tb]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT * FROM [model_tb] WHERE ([cat_id] = @cat_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="cat_id" QueryStringField="category" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT * FROM [register_tb] WHERE ([mobile] = @mobile)">
        <SelectParameters>
            <asp:QueryStringParameter Name="mobile" QueryStringField="username" Type="Decimal" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:alumexConnectionString %>" SelectCommand="SELECT * FROM [model_tb] WHERE ([model_id] = @model_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="model_id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

