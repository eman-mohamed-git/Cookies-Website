<%@ Page Title="" Language="C#" MasterPageFile="~/adminMaster.Master" AutoEventWireup="true" CodeBehind="ViewProducts.aspx.cs" Inherits="CookiesWebsite2.ViewProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class=" d-flex justify-content-center align-items-center mt-5 flex-column">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" HeaderStyle-BackColor="#B67352" HeaderStyle-Font-Size="20px" HeaderStyle-HorizontalAlign="center" HeaderStyle-CssClass=" text-white">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Count" HeaderText="Count" SortExpression="Count" />
                <asp:CommandField ButtonType="Button" HeaderText="Edit Product" ControlStyle-CssClass=" my-2 btn btn-outline-secondary px-3 ml-4" ShowEditButton="True" ShowHeader="True" />
                <asp:CommandField ButtonType="Button" HeaderText="Delete Product" ControlStyle-CssClass=" my-2 btn btn-outline-secondary px-3 ml-4" ShowDeleteButton="True" ShowHeader="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Id], [Title], [Description], [Price], [Count] FROM [Products]" DeleteCommand="DELETE FROM [Products] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Products] ([Id], [Title], [Description], [Price], [Count]) VALUES (@Id, @Title, @Description, @Price, @Count)" UpdateCommand="UPDATE [Products] SET [Title] = @Title, [Description] = @Description, [Price] = @Price, [Count] = @Count WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="String" />
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Price" Type="Int32" />
                <asp:Parameter Name="Count" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Price" Type="Int32" />
                <asp:Parameter Name="Count" Type="Int32" />
                <asp:Parameter Name="Id" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
            <asp:LinkButton CssClass=" py-2 btn btn-outline-secondary" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Add new Product</asp:LinkButton>

    </div>
</asp:Content>
