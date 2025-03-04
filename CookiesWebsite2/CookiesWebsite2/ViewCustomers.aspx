<%@ Page Title="" Language="C#" MasterPageFile="~/adminMaster.Master" AutoEventWireup="true" CodeBehind="ViewCustomers.aspx.cs" Inherits="CookiesWebsite2.ViewCustomers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class=" d-flex justify-content-center align-items-center mt-5">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Username" DataSourceID="SqlDataSource1" HeaderStyle-BackColor="#B67352" HeaderStyle-Font-Size="20px" HeaderStyle-HorizontalAlign="center" HeaderStyle-CssClass=" text-white">
            <Columns>
                <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" SortExpression="Username" />
                <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" />
                <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:CommandField ButtonType="Button" ControlStyle-CssClass=" my-2 btn btn-outline-secondary px-3 ml-4" HeaderText="Delete Customer" ShowDeleteButton="True" ShowHeader="True" />
                <asp:CommandField HeaderText="Edit Customer" ControlStyle-CssClass=" btn btn-outline-secondary px-3 ml-4" ShowEditButton="True" ShowHeader="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT [Username], [Lastname], [Firstname], [Email], [Phone], [Country] FROM [Customers]"
            UpdateCommand="UPDATE [Customers] SET [Lastname] = @Lastname, [Firstname] = @Firstname, [Email] = @Email, [Phone] = @Phone, [Country] = @Country WHERE [Username] = @Username"
            DeleteCommand="DELETE FROM [Customers] WHERE [Username] = @Username">
            <UpdateParameters>
                <asp:Parameter Name="Lastname" Type="String" />
                <asp:Parameter Name="Firstname" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="Username" Type="String" />
            </UpdateParameters>
            <DeleteParameters>
                <asp:Parameter Name="Username" Type="String" />
            </DeleteParameters>
        </asp:SqlDataSource>
    </div>


</asp:Content>
