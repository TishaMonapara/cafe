<%@ Page Title="About | Coffee Bites" Language="C#" MasterPageFile="~/Site1.Master"
    AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="Cafe_Managament.about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="/css/style.css" />
    <link rel="stylesheet" type="text/css" href="/css/responsive.css" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;800&display=swap" rel="stylesheet" />

    <style>
       
        .main-about {
            padding: 100px 0;
            min-height: 80vh;
            background: url('../Images/coffee-bg.jpg') no-repeat center center/cover;
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
        }

       
        .main-about::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.55);
            z-index: 0;
        }

        .about-container {
            position: relative;
            z-index: 1;
            background: rgba(255, 255, 255, 0.9);
            border-radius: 15px;
            padding: 40px 30px;
            box-shadow: 0 6px 25px rgba(0, 0, 0, 0.2);
        }

        .about_taital {
            font-size: 40px;
            font-weight: 800;
            color: #3b2f2f;
            margin-bottom: 10px;
            text-transform: uppercase;
            text-align: center;
        }

        .about_taital_1 {
            font-size: 22px;
            font-weight: 600;
            color: #6f4e37;
            margin-bottom: 25px;
            text-align: center;
        }

        .about_text {
            color: #3b2f2f;
            font-size: 17px;
            line-height: 1.8;
            margin-bottom: 12px;
            text-align: justify;
        }

        .about_img {
            width: 100%;
            border-radius: 12px;
            box-shadow: 0 6px 18px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease;
        }

        .about_img:hover {
            transform: scale(1.05);
        }

        @media (max-width: 768px) {
            .main-about {
                padding: 70px 0;
            }
            .about_taital {
                font-size: 30px;
            }
            .about_taital_1 {
                font-size: 18px;
            }
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <section class="main-about">
        <div class="container about-container">
            <div class="row align-items-center">
                <div class="col-md-6 mb-4 mb-md-0">
                    <img src="../Images/about-img.png" alt="Coffee Bites" class="about_img" />
                </div>
                <div class="col-md-6">
                    <h2 class="about_taital">About Our Cafe</h2>
                    <h4 class="about_taital_1">☕ Welcome to Coffee Bites</h4>
                    <p class="about_text">
                        At Coffee Bites, we believe coffee is more than just a drink — it’s a moment of comfort, creativity, and community. 
                        Our café was born out of a love for quality beans, cozy vibes, and friendly smiles.
                    </p>
                    <p class="about_text">
                        Every cup we serve is brewed with passion, using carefully selected beans and perfected roasting techniques. 
                        Whether you need a peaceful spot to unwind or a lively corner to connect, Coffee Bites is your home away from home.
                    </p>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
