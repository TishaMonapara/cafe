<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="category.aspx.cs" Inherits="Cafe_Managament.User.category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <head>
        <!-- basic -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- site metas -->
        <title>Coffees</title>
        <!-- bootstrap css -->
        <link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
        <!-- style css -->
        <link rel="stylesheet" type="text/css" href="../css/style.css">
        <!-- Responsive-->
        <link rel="stylesheet" href="../css/responsive.css">
        <!-- fevicon -->
        <link rel="icon" href="../images/fevicon.png" type="image/gif" />
        <!-- font css -->
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;800&display=swap" rel="stylesheet">
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="../css/jquery.mCustomScrollbar.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    </head>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <body>
        <!-- ✅ Navbar with updated paths -->
        <div class="header_section header_bg">
            <div class="container">
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <a runat="server" class="navbar-brand" href="~/User/index.aspx">
                        <img src="../images/logo.png">
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item"><a runat="server" class="nav-link" href="~/User/index.aspx">Home</a></li>
                            <li class="nav-item"><a runat="server" class="nav-link" href="~/User/about.aspx">About</a></li>
                            <li class="nav-item active"><a runat="server" class="nav-link" href="~/User/category.aspx">Category</a></li>
                            <li class="nav-item"><a runat="server" class="nav-link" href="~/User/ViewMenu.aspx">ViewMenu</a></li>
                            <li class="nav-item"><a runat="server" class="nav-link" href="~/User/contact.aspx">Contact</a></li>
                            <li class="nav-item"><a runat="server" class="nav-link" href="~/User/register.aspx">Register</a></li>
                            <li class="nav-item"><a runat="server" class="nav-link" href="../login.aspx">Login</a></li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>

        <!-- coffee section start -->
        <div class="coffee_section layout_padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="coffee_taital">OUR CAFE OFFER</h1>
                    </div>
                </div>
            </div>
            <div class="coffee_section_2">
                <div id="main_slider" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-lg-3 col-md-6">
                                        <div class="coffee_img"><img src="../images/img-1.png"></div>
                                        <div class="coffee_box">
                                            <h3 class="types_text">SNACKS</h3>
                                            <p class="looking_text">looking at its layout. The point of</p>
                                            <div class="read_bt"><a href="#">Read More</a></div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6">
                                        <div class="coffee_img"><img src="../images/img-2.jpg"></div>
                                        <div class="coffee_box">
                                            <h3 class="types_text">DRINKS</h3>
                                            <p class="looking_text">looking at its layout. The point of</p>
                                            <div class="read_bt"><a href="#">Read More</a></div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6">
                                        <div class="coffee_img"><img src="../images/img-3.png"></div>
                                        <div class="coffee_box">
                                            <h3 class="types_text">CAKE & PASTRY</h3>
                                            <p class="looking_text">looking at its layout. The point of</p>
                                            <div class="read_bt"><a href="#">Read More</a></div>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-md-6">
                                        <div class="coffee_img"><img src="../images/img-4.png"></div>
                                        <div class="coffee_box">
                                            <h3 class="types_text">MAIN COURSE</h3>
                                            <p class="looking_text">looking at its layout. The point of</p>
                                            <div class="read_bt"><a href="#">Read More</a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>  
                    </div>
                    
                </div>
            </div>
        </div>
        <!-- coffee section end -->

        <!-- footer section start -->
        <div class="footer_section layout_padding margin_top90">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="footer_social_icon">
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                        <div class="location_text">
                            <ul>
                                <li><a href="tel:+011234567890"><i class="fa fa-phone" aria-hidden="true"></i><span class="padding_left_10">+01 1234567890</span></a></li>
                                <li><a href="mailto:demo@gmail.com"><i class="fa fa-envelope" aria-hidden="true"></i><span class="padding_left_10">demo@gmail.com</span></a></li>
                            </ul>
                        </div>
                        <div class="form-group">
                            <textarea class="update_mail" placeholder="Your Email" rows="5" id="comment" name="Your Email"></textarea>
                            <div class="subscribe_bt"><a href="#"><i class="fa fa-arrow-right" aria-hidden="true"></i></a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div class="copyright_section">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <p class="copyright_text">2025 All Rights Reserved. Design by Coffee Bites</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Javascript files -->
    <script src="../js/jquery.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.bundle.min.js"></script>
    <script src="../js/jquery-3.0.0.min.js"></script>
    <script src="../js/plugin.js"></script>
    <script src="../js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="../js/custom.js"></script>
</asp:Content>
