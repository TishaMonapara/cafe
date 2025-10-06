<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Cafe_Managament.User.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <body>
        <div class="header_section">
            <div class="container">
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <!-- ✅ Update link to root-relative path -->
                    <a class="navbar-brand" href="~/User/index.aspx">
                        <img src="../Images/logo.png">
                    </a>

                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ml-auto">
                            <!-- ✅ All navigation links updated -->
                            <li class="nav-item active"><a class="nav-link" href="/User/index.aspx">Home</a></li>
<li class="nav-item"><a class="nav-link" href="/User/about.aspx">About</a></li>
<li class="nav-item"><a class="nav-link" href="/User/category.aspx">Category</a></li>
<li class="nav-item"><a class="nav-link" href="/User/ViewMenu.aspx">ViewMenu</a></li>
<li class="nav-item"><a class="nav-link" href="/User/contact.aspx">Contact</a></li>
<li class="nav-item"><a class="nav-link" href="/User/register.aspx">Register</a></li>
<li class="nav-item"><a class="nav-link" href="../login.aspx">Login</a></li>
                            <li class="nav-item"><a class="nav-link" href="/User/PlaceOrder.aspx">Place Order</a></li>

                        </ul>
                    </div>
                </nav>
            </div>

            <!-- banner section start --> 
            <div class="banner_section layout_padding">
                <div class="container">
                    <div id="banner_slider" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="banner_taital_main">
                                            <h1 class="banner_taital">Coffee<br>Bites</h1>
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
            <!-- banner section end -->
        </div>

        <!-- footer section start -->
        <div class="footer_section layout_padding">
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
                            <div class="subscribe_bt">
                                <a href="#"><i class="fa fa-arrow-right" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</asp:Content>
