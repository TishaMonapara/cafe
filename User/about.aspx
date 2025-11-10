<%@ Page Title="About | Coffee Bites" Language="C#" MasterPageFile="~/Site1.Master"
    AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="Cafe_Managament.about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;800&display=swap" rel="stylesheet" />

    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #fffaf5;
            margin: 0;
            padding: 0;
        }

        /* 🌄 Background Section */
        .main-about {
            background: url('../images/userbg.jpeg') center center / cover no-repeat fixed;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
            color: #fff;
        }

        .main-about::before {
            content: "";
            position: absolute;
            inset: 0;
            background: rgba(0, 0, 0, 0.55);
        }

        /* 📦 Transparent Glass Box */
        .about-container {
            position: relative;
            z-index: 2;
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border: 2px solid rgba(255, 255, 255, 0.25);
            border-radius: 15px;
            padding: 50px 40px;
            max-width: 1100px;
            width: 90%;
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            gap: 40px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
        }

        /* 🖼️ Image Left */
        .about_img {
            flex: 1 1 40%;
            max-width: 400px;
            border-radius: 15px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.25);
            transition: transform 0.4s ease, box-shadow 0.4s ease;
        }

        .about_img:hover {
            transform: scale(1.05);
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.35);
        }

        /* ✨ Text Right */
        .about-content {
            flex: 1 1 55%;
            text-align: left;
        }

        .about_taital {
            font-size: 48px;
            font-weight: 800;
            color: #ffcf9f;
            text-transform: uppercase;
            margin-bottom: 10px;
            text-shadow: 2px 3px 8px rgba(0, 0, 0, 0.4);
        }

        .about_taital_1 {
            font-size: 22px;
            font-weight: 600;
            color: #ffd9a0;
            margin-bottom: 25px;
        }

        .about_text {
            color: #f1f1f1;
            font-size: 17px;
            line-height: 1.8;
            margin-bottom: 15px;
            text-align: justify;
        }

        /* 📱 Responsive Design */
        @media (max-width: 992px) {
            .about-container {
                flex-direction: column;
                text-align: center;
                padding: 30px 20px;
            }

            .about_img {
                max-width: 300px;
            }

            .about_taital {
                font-size: 36px;
            }

            .about_taital_1 {
                font-size: 18px;
            }

            .about_text {
                font-size: 16px;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="main-about">
        <div class="about-container">
            <img src="../images/about-img.png" alt="Coffee Bites" class="about_img" />

            <div class="about-content">
                <h2 class="about_taital">About Our Cafe</h2>
                <h4 class="about_taital_1">☕ Welcome to Coffee Bites</h4>
                <p class="about_text">
                    At <strong>Coffee Bites</strong>, we believe coffee is more than just a drink — it’s a moment of comfort, creativity, and connection. 
                    Our café was born out of a love for premium beans, cozy vibes, and friendly smiles that make every visit special.
                </p>
                <p class="about_text">
                    Each cup we serve is brewed with passion and care, using handpicked beans and artisanal roasting. 
                    Whether you’re looking for a quiet corner to read or a warm place to catch up with friends, 
                    Coffee Bites is your second home filled with aroma and joy.
                </p>
            </div>
        </div>
    </section>
</asp:Content>
