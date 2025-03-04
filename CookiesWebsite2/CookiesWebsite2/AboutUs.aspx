<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="CookiesWebsite2.AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://fonts.googleapis.com/css2?family=Cookie&family=Indie+Flower&display=swap" rel="stylesheet">
    <style>

        .page-title {
            font-family: 'Cookie', cursive; 
            font-size: 90px; 
            color: #a58377;
            padding-bottom: 10px;
            margin-top: 30px;
            margin-bottom: 30px;
            text-align: center;
        }

    

        .text-container {
            font-family: 'Indie Flower', cursive; 
            width: 100%; 
        }

        p {
            font-size: 22px;
            font-weight: bold; 
            width: 100%; 
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body >
        <h1 class="page-title">About&nbsp;Us</h1>
        <div class=" d-flex justify-content-center align-items-center mb-5 pb-5 ">
            <div class=" row  container  p-5 shadow" style="background-color: #F0C6D6;">

                <div class=" col-sm-6">
                    <div class=" row">
                  
                        <div class=" col-sm-12 ">
                            <div>
                                <img src="images/aboutImage.jpg" class=" w-100" alt="Descriptive Image Text" />
                            </div>
                        </div>
                    </div>
                </div>

                <div class=" col-sm-6 d-flex justify-content-center align-items-center px-3">
                    <div class="text-container">
                        <h1 style="text-align: center; color: #a58377; margin: 10px; font-family: 'Cookie', cursive; padding-bottom: 5px; font-size: 50px; font-weight: bold;">Hello There!</h1>
                        <p style="color: #a58377;">
                            Our Cookie Business was inspired by our endless love for the color pink, can you believe that?! All we wanted was to have a business that could grant us our wish to have something pink and cute of our own.
                        What makes our place even more special is that we have all types of cookies for everybodys' different types of diets: vegan, gluten free, sugar free and even more!!!
                        The next time your in the city don't forget to give us a visit; we'd love to see you at our place.
                        </p>
                    </div>
                </div>


            </div>
        </div>



    </body>

</asp:Content>
