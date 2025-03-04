<%@ Page Title="" Language="C#" MasterPageFile="~/adminMaster.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="CookiesWebsite2.AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 1234px
        }

        .auto-style6 {
            width: 411px;
        }

        .auto-style7 {
            width: 412px;
        }

        .newStyle1 {
            font-family: Chiller;
            font-size: xx-large;
            font-weight: bold;
            color: #E0A800;
        }

        .newStyle2 {
            color: #CC6600;
            font-style: italic;
        }

        .newStyle3 {
            font-family: "Ink Free";
            color: brown; /* Changed color to brown */
            font-weight: 800;
            font-size: xx-large;
        }

        .form-label {
            font-weight: bold;
            color: brown; /* Changed color to brown */
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <p class="text-center">
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Add New Cookie:" CssClass="newStyle3" ForeColor="#CC6600"></asp:Label>
                </p>
                <p>
                    &nbsp;
               
                </p>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" Text="Cookie Id:" CssClass="form-label"></asp:Label>
                            <asp:TextBox ID="addTextboxId" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label4" runat="server" Text="Cookie Description:" CssClass="form-label"></asp:Label>
                            <asp:TextBox ID="addTextboxDesc" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label6" runat="server" Text="Cookie Count:" CssClass="form-label"></asp:Label>
                            <asp:TextBox ID="addtextboxCount" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <asp:Label ID="Label3" runat="server" Text="Cookie Title:" CssClass="form-label"></asp:Label>
                            <asp:TextBox ID="addTextboxTitle" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label5" runat="server" Text="Cookie Price:" CssClass="form-label"></asp:Label>
                            <asp:TextBox ID="addTextboxPrice" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label7" runat="server" Text="Cookie img path:" CssClass="form-label"></asp:Label>
                            <asp:TextBox ID="addtextboxImgPath" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class=" d-flex justify-content-center align-items-center flex-column">
                    <asp:Button ID="Button1" class=" my-4" runat="server" OnClick="addSubmitProduct_Click" Text="Submit Product" CssClass="btn btn-secondary  " />
                    <br />
                    <div>
                        <asp:Label ID="addProductlabelMsg" runat="server"></asp:Label>

                    </div>

                </div>
            </div>
        </div>
        <div class="row justify-content-center mt-4">
            <div class="col-md-10 text-center">
                <!-- Centering the GridView -->
                <asp:GridView ID="gdViewAdd" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="White" />
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
            </div>
        </div>
    </div>

</asp:Content>
