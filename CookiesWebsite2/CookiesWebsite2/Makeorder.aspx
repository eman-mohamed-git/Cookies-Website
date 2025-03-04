<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="Makeorder.aspx.cs" Inherits="CookiesWebsite2.Makeorder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://fonts.googleapis.com/css2?family=Cookie&family=Indie+Flower&display=swap" rel="stylesheet">

    <style type="text/css">
        .auto-style1 {
            margin-right: 283px;
        }

        .page-title {
            font-family: 'Cookie', cursive; /* Cookie font */
            font-size: 90px; /* Adjust as needed */
            color: #B67352;
            padding-bottom: 10px;
            margin-bottom: 0px;
        }

        .user-profile-sub-heading {
            font-family: 'Cookie', cursive;
            font-size: 35px;
            color: #B67352;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class=" text-center">
        <asp:Label ID="Label1" runat="server" Text="Make Order" class="page-title  my-5"></asp:Label>

    </div>

    <br />
    <br />
    <div class=" d-flex justify-content-center align-items-center flex-column">
        <asp:GridView ID="gdvProducts" runat="server" Width="800px" HeaderStyle-BackColor="#B67352" HeaderStyle-CssClass=" text-white">
            <Columns>

                <asp:CommandField ButtonType="Button" ControlStyle-CssClass=" ml-5 pl-4 pr-4" HeaderText="Select Product" ShowHeader="True" ShowSelectButton="True" />

            </Columns>
        </asp:GridView>
        <br />
        <asp:Label ID="Label2" class=" user-profile-sub-heading" runat="server" Text="Client Name:"></asp:Label>
        <asp:TextBox ID="txtClientName" CssClass=" w-25 rounded-pill form-control" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" class="user-profile-sub-heading" runat="server" Text="Select Cookie , and enter Client name then click order"></asp:Label>
        <br />
        <asp:Button CssClass=" btn btn-outline-secondary px-5" ID="orderBtn" runat="server" OnClick="orderBtn_Click" Text="Order" />
        <br />
        <br />
        <asp:Label ID="noSelectBtn" class="user-profile-sub-heading" runat="server" Visible="False"></asp:Label>
        <br />
        <asp:GridView ID="gvOrder" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSource5" Visible="False" Width="800px" HeaderStyle-BackColor="#B67352" HeaderStyle-CssClass=" text-white">
            <Columns>
                <asp:BoundField DataField="OrderID" HeaderText="OrderID" ReadOnly="True" SortExpression="OrderID" />
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                <asp:BoundField DataField="ClientName" HeaderText="ClientName" SortExpression="ClientName" />
                <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" SortExpression="ProductPrice" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [OrderID], [ProductName], [ClientName], [ProductPrice] FROM [Orders] WHERE ([ClientName] = @ClientName)">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtClientName" Name="ClientName" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:Label ID="msgEmail" runat="server" Style=" font-size: 25px; color: #B67352; text-align:center"></asp:Label>
        <br />

    </div>



</asp:Content>
