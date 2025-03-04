<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CookiesWebsite2.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&family=Pacifico&family=Poetsen+One&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&family=Pacifico&family=Poetsen+One&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Cookie&family=Indie+Flower&display=swap" rel="stylesheet">


    <link rel="stylesheet" href="./HomeUser.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div>
        <div  class=" image-top " >
                    <h1 class=" text-white pt-5 home-heading text-center ">Welcome to Cookie Haven</h1>

        </div>


    </div>
    <div class=" mx-4 row mt-4">

       <div class=" col-lg-6 d-flex justify-content-center align-items-center ">
            <div class=" container text-center pt-5">
                <h3 class=" home-heading text-3xl font-bold lg:text-5xl"">Special Cookie</h3>
                <p class="parag-home mt-5 ">A warm vanilla bean sugar cookie topped with an elegant swirl of vanilla and raspberry cream cheese<br /> frosting and a light crunch of white chocolate pearls.</p>
            </div>
        </div>
        <div class=" col-lg-6 d-flex justify-content-center align-items-center">
            <img src="./images/Three_cookies-removebg-preview.png" alt="pink cookie"   />
        </div>
        

    </div>
     <div class="mx-4 row my-5 ">

 
        <div class=" col-lg-6 d-flex justify-content-center align-items-center">
            <img src="./images/Cookie_Dough_Stuffed_Oreos-removebg-preview.png" alt="pink cookie"   />
        </div>

         <div class=" col-lg-6 d-flex justify-content-center align-items-center ">
            <div class=" container text-center pt-5">
                <h3 class="home-heading text-3xl font-bold lg:text-5xl"">Magical Cookie</h3>
                <p class="parag-home mt-5  ">Indulge your senses with our irresistible chocolate cookies. Whether you prefer them soft and chewy or crisp and crunchy, our chocolate cookies are the perfect treat for any chocolate lover.</p>
            </div>
        </div>


    </div>
     <div class="mx-4 row my-5">

        <div class=" col-lg-6 d-flex justify-content-center align-items-center ">
            <div class=" container text-center pt-5">
                <h3 class="home-heading text-3xl font-bold lg:text-5xl"">Rainbow Cookie</h3>
                <p class="parag-home mt-5 ">Experience the perfect marriage of cookies and ice cream with our delectable ice cream sandwich cookies. Sandwiched between two homemade cookies of your choice, our creamy, handcrafted ice cream creates a heavenly combination that will leave you craving more. </p>
            </div>
        </div>
        <div class=" col-lg-6 d-flex justify-content-center align-items-center">
            <img src="./images/Funfetti_Ice_Cream_Sandwiches-removebg-preview.png" alt="pink cookie"   />
        </div>


    </div>
</asp:Content>
