<%@ Page Title="" Language="C#" MasterPageFile="~/adminMaster.Master" AutoEventWireup="true" CodeBehind="HomeAdmin.aspx.cs" Inherits="CookiesWebsite2.HomeAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://fonts.googleapis.com/css2?family=Cookie&family=Indie+Flower&display=swap" rel="stylesheet">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="text-center">
        <br />
        <div class=" container text-center my-5 py-5">
            <asp:Label class=" text-center  " ID="Label1" Style="font-size:100px !important;  font-family: 'Cookie', cursive; font-size: 35px; color: #B67352;" runat="server" Text="Hello Admin to Home Page , please click from above which page to view to you"></asp:Label>

        </div>
    </p>
</asp:Content>
