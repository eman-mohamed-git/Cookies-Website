<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="CookiesWebsite2.home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Cookie&family=Indie+Flower&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./menu.css" />

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container text-center mt-5">
        <div>
            <h1 class="page-title">Our Menu</h1>
        </div>

        <div class="row mb-4">
            <%--            This is the Repeater control, which is used to display a repeated list of items that are bound to it from a data source. The Repeater control does not render any visual elements itself but uses templates to define the structure of the repeated items.--%>
            <asp:Repeater ID="ProductsRepeater" runat="server" OnItemCommand="ProductsRepeater_ItemCommand">
                <%--                The ItemTemplate defines the HTML and data-binding expressions for each item in the data source. Each item in the data source will be rendered using this template.--%>
                <ItemTemplate>

                    <div class="col-md-4 mt-5 ">
                        <div class=" px-3 py-3 shadow rounded">
                            <div>
                                <%-- These expressions are used to bind data from the data source to the template. --%>
                                <%-- <%# Eval("...") %>: Binds data from the data source to the template. --%>
                                <img src="<%# Eval("imagePath") %>" alt="Image 1" class="img-fluid" style="width: 270px; height: 300px;" />
                            </div>
                            <h4><%# Eval("Title") %></h4>
                            <p class=" sub-title">Price: <%# Eval("Price") %> $</p>
                           <%-- <p class=" sub-title">Count: <%# Eval("Count") %></p>--%>
<%--                            <asp:Button ID="btnAddToCart" runat="server" Text="Add to cart" CssClass="btn btn-outline-danger py-3" CommandName="AddToCart" CommandArgument='<%# Eval("Title") %>' />--%>
                        </div>



                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>



        <%--  <div class="row mb-4">
            <div class="col-md-4  ">
                <div>
                    <img src="./images/Small-Batch Rainbow Cookies.jpeg" alt="Image 1" class="img-fluid w-75">
                </div>
                <h4>Rainbow Cookies</h4>
                <p>Price :40$</p>
                <button type="button" class="btn btn-outline-danger">See More</button>
            </div>
            <div class="col-md-4">
                <div>
                    <img src="./images/icecream cookie.jpeg" alt="Image 2" class="img-fluid w-75 ">
                </div>

                <h4>Icecream Cookies</h4>
                <p>price :50$</p>
                <button type="button" class="btn btn-outline-danger">See More</button>
            </div>
            <div class="col-md-4">
                <div>
                    <img src="./images/Pink White Chocolate Chip Cookies.jpeg" alt="Image 3" class="img-fluid w-75 ">
                </div>

                <h4>Pink Cookies</h4>
                <p>price:45$</p>
                <button type="button" class="btn btn-outline-danger">See More</button>
            </div>
        </div>
        <div class="row mb-4">
            <div class="col-md-4  ">
                <div>
                    <img src="./images/White Chocolate Red Velvet Cookies .jpeg" alt="Image 1" class="img-fluid w-75" style=" height:250px;"/>
                </div>
                <h4>Sugar Cookies</h4>
                <p>Price :10$</p>
                <button type="button" class="btn btn-outline-danger">See More</button>
            </div>
            <div class="col-md-4">
                <div>
                    <img src="./images/m6.jpg" alt="Image 2" class="img-fluid w-75 "  style=" height:250px;"/>
                </div>

                <h4>Mini Vanilia Cookies</h4>
                <p>Price :20$</p>
                <button type="button" class="btn btn-outline-danger">See More</button>
            </div>
            <div class="col-md-4">
                <div>
                    <img src="./images/Cookie with oat.jpeg" alt="Image 3" class="img-fluid w-75" style=" height:250px;">
                </div>

                <h4>Vegan Cookies</h4>
                <p>Price :50$</p>
                <button type="button" class="btn btn-outline-danger">See More</button>
            </div>
        </div>
        <div class="row mb-4">
            <div class="col-md-4  ">
                <div>
                    <img src="./images/Pink Velvet Sugar Cookies.jpeg" alt="Image 1" class="img-fluid w-75"/style=" height:270px;"/>
                </div>

                <h4>Almond Cookies</h4>
                <p>Price :40$</p>
                <button type="button" class="btn btn-outline-danger">See More</button>
            </div>
            <div class="col-md-4">
                <div>
                    <img src="./images/m5.jpg" alt="Image 2" class="img-fluid  w-75">
                </div>

                <h4>Heart Cookies</h4>
                <p>price :50$</p>
                <button type="button" class="btn btn-outline-danger">See More</button>
            </div>
            <div class="col-md-4">
                <div>
                    <img src="./images/classic cookie.jpg" alt="Image 3"  style=" height:250px;" class="img-fluid w-75">
                </div>
                <h4>Classic Cookies</h4>
                <p>price:45$</p>
                <button type="button" class="btn btn-outline-danger">See More</button>
            </div>
        </div>--%>
    </div>
</asp:Content>
