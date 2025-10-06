<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="Cafe_Managament.about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- bootstrap css -->
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css" />
    <!-- style css -->
    <link rel="stylesheet" type="text/css" href="/css/style.css" />
    <!-- Responsive-->
    <link rel="stylesheet" href="/css/responsive.css" />
    <!-- fevicon -->
    <link rel="icon" href="/images/fevicon.png" type="image/gif" />
    <!-- font css -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;800&display=swap" rel="stylesheet" />
    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="/css/jquery.mCustomScrollbar.min.css" />
    <!-- Tweaks for older IEs-->
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="header_section header_bg">
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="/User/index.aspx">
                    <img src="/images/logo.png" />
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active"><a class="nav-link" href="/User/index.aspx">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="/User/about.aspx">About</a></li>
                        <li class="nav-item"><a class="nav-link" href="/User/category.aspx">Category</a></li>
                        <li class="nav-item"><a class="nav-link" href="/User/ViewMenu.aspx">ViewMenu</a></li>
                        <li class="nav-item"><a class="nav-link" href="/User/contact.aspx">Contact</a></li>
                        <li class="nav-item"><a class="nav-link" href="/User/register.aspx">Register</a></li>
                        <li class="nav-item"><a class="nav-link" href="../login.aspx">Login</a></li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>

    <!-- about section start -->
    <div class="about_section layout_padding">
        <div class="container">
            <div class="about_section_2">
                <div class="row">
                    <div class="col-md-6">
                        <div class="about_taital_box">
                            <h1 class="about_taital">About Our Cafe</h1>
                            <h1 class="about_taital_1">☕ Welcome to Coffee Bites</h1>
                            <p class="about_text">
                                At Coffee Bites, we believe coffee is more than just a drink – it’s a moment of joy...
                            </p>
                            <p class="about_text">
                                At Coffee Bites, every brew is made with passion. From hand-picked beans...
                            </p>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="image_iman">
                            <img src="/images/about-img.png" class="about_img" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div class="copyright_section">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <p class="copyright_text">
                        2025 All Rights Reserved. Design by Coffee Bites
                    </p>
                </div>
            </div>
        </div>
    </div>
    <!-- Javascript files -->
    <script src="/js/jquery.min.js"></script>
    <script src="/js/popper.min.js"></script>
    <script src="/js/bootstrap.bundle.min.js"></script>
    <script src="/js/jquery-3.0.0.min.js"></script>
    <script src="/js/plugin.js"></script>
    <script src="/js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="/js/custom.js"></script>
</asp:Content>
