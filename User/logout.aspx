<%@ Page Title="Logout" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="logout.aspx.cs" Inherits="Cafe_Managament.User.logout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #e0c3fc, #8ec5fc);
            text-align: center;
            padding: 100px 20px;
        }
        .logout-box {
            background: rgba(255, 255, 255, 0.85);
            display: inline-block;
            padding: 40px 60px;
            border-radius: 20px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
            backdrop-filter: blur(8px);
        }
        .logout-box h2 {
            color: #3a3a3a;
            margin-bottom: 15px;
        }
        .logout-box p {
            color: #555;
            margin-bottom: 25px;
        }
        .btn {
            background: linear-gradient(135deg, #007bff, #00c6ff);
            color: white;
            font-weight: bold;
            border: none;
            border-radius: 8px;
            padding: 10px 25px;
            cursor: pointer;
            transition: 0.3s;
            text-decoration: none;
        }
        .btn:hover {
            background: linear-gradient(135deg, #00c6ff, #007bff);
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="logout-box">
        <h2>You have been logged out successfully.</h2>
        <p>Thank you for visiting Cafe Management ☕</p>
        <a href="~/login.aspx" class="btn">Go to Login Page</a>
    </div>
</asp:Content>
