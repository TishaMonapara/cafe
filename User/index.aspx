<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Cafe_Managament.User.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <body>
        <div class="header_section">
            <div class="container">
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    
                    <a class="navbar-brand" href="~/User/index.aspx">
                        <img src="../Images/logo.png">
                    </a>

                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ml-auto">
                            
                            <li class="nav-item active"><a class="nav-link" href="/User/index.aspx">Home</a></li>
                            <li class="nav-item"><a class="nav-link" href="/User/about.aspx">About</a></li>
                            <li class="nav-item"><a class="nav-link" href="/User/display.aspx">Display</a></li>
                            <li class="nav-item"><a class="nav-link" href="/User/cart.aspx">cart</a></li>
                            <li class="nav-item"><a class="nav-link" href="/User/contact.aspx">Contact</a></li>
                            <li class="nav-item"><a class="nav-link" href="/User/register.aspx">Register</a></li>
                            <li class="nav-item"><a class="nav-link" href="../login.aspx">Login</a></li>
                            <li class="nav-item"><a class="nav-link" href="/User/logout.aspx">Logout</a></li>

                        </ul>
                    </div>
                </nav>
            </div>

            
            <div class="banner_section layout_padding">
                <div class="container">
                    <div id="banner_slider" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="banner_taital_main">
                                            <h1 class="banner_taital">Coffee<br>
                                                Bites</h1>
                                            <p class="banner_text">
                                                more-or-less normal distribution of letters, as opposed to using
                                            </p>
                                            <div class="btn_main">
                                                <div class="about_bt active">
                                                    <a href="/User/about.aspx">About Us</a>
                                                </div>
                                                <div class="callnow_bt">
                                                    <a href="tel:+011234567890">Call Now</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
          
          
        </div>

        
        </div>
    </body>
</asp:Content>
