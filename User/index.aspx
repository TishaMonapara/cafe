<%@ Page Title="Home | Coffee Bites" Language="C#" MasterPageFile="~/Site1.Master"
    AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Cafe_Managament.User.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="banner_section">
        <div class="overlay_box">
            <h1 class="banner_taital">☕ Coffee Bites</h1>
            <p class="banner_text">
                Enjoy the perfect blend of taste and aroma with every sip.<br />
                Start your day right with our freshly brewed coffee.
            </p>
            <div class="btn_main">
                <a class="about_bt" href="/User/about.aspx">About Us</a>
                <a class="callnow_bt" href="/User/contact.aspx">Call Now</a>
            </div>
        </div>
    </section>

    <style>
        /* ✅ Full-page static background image */
        .banner_section {
            background: url('../images/userbg.jpeg') center center / cover no-repeat fixed;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
        }

        /* ✅ Dark transparent overlay to make text readable */
        .banner_section::before {
            content: "";
            position: absolute;
            inset: 0;
            background: rgba(0, 0, 0, 0.55);
        }

        /* ✅ Center text content inside translucent box */
        .overlay_box {
            position: relative;
            z-index: 2;
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border: 2px solid rgba(255, 255, 255, 0.25);
            border-radius: 15px;
            padding: 60px 40px;
            text-align: center;
            color: #fff;
            width: 80%;
            max-width: 700px;
        }

        .banner_taital {
            font-size: 70px;
            font-weight: 700;
            letter-spacing: 2px;
            color: #ffcf9f;
            text-shadow: 2px 3px 10px rgba(0, 0, 0, 0.4);
            margin-bottom: 20px;
        }

        .banner_text {
            font-size: 18px;
            line-height: 1.8;
            margin-bottom: 30px;
            color: #f1f1f1;
        }

        .btn_main {
            display: flex;
            justify-content: center;
            gap: 20px;
        }

        .about_bt, .callnow_bt {
            background-color: #ff9f43;
            color: #fff;
            padding: 12px 30px;
            border-radius: 30px;
            font-weight: bold;
            text-transform: uppercase;
            text-decoration: none;
            transition: 0.3s;
        }

        .about_bt:hover, .callnow_bt:hover {
            background-color: #ffb86b;
            box-shadow: 0px 5px 15px rgba(255, 165, 81, 0.4);
        }
    </style>
</asp:Content>
