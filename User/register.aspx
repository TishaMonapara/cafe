<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" 
    CodeBehind="register.aspx.cs" Inherits="Cafe_Managament.User.register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet" />

    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: url('../images/userbg.jpeg') no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
        }

        /* 🔸 Overlay for blur consistency */
        .overlay {
            background-color: rgba(0, 0, 0, 0.45);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 30px 15px;
        }

        /* 🔸 Glass effect card */
        .glass-card {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(18px);
            border: 1px solid rgba(255, 255, 255, 0.25);
            border-radius: 20px;
            padding: 30px 40px;
            width: 480px; /* ⬆️ increased width */
            color: #fff;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
            animation: fadeIn 0.8s ease;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(15px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* 🔸 Header */
        .glass-card h2 {
            text-align: center;
            margin-bottom: 8px;
            color: #ffcc80;
            font-weight: 700;
            text-shadow: 0 0 10px rgba(255, 204, 128, 0.4);
        }

        .glass-card p {
            text-align: center;
            margin-bottom: 15px;
            color: #ffe0b2;
        }

        .glass-card a {
            color: #ffb74d;
            text-decoration: none;
            font-weight: bold;
        }

        .glass-card a:hover {
            text-decoration: underline;
        }

        label {
            display: block;
            font-size: 14px;
            margin-top: 8px;
            font-weight: 600;
            color: #fff;
        }

        /* 🔸 Input fields */
        .aspNetTextBox {
            width: 100%;
            padding: 9px 15px;
            margin-top: 4px;
            border-radius: 8px;
            border: none;
            outline: none;
            font-size: 14px;
            background: rgba(255, 255, 255, 0.15);
            color: #fff;
            box-sizing: border-box;
            transition: 0.3s ease;
        }

        .aspNetTextBox::placeholder {
            color: #ffdab9;
        }

        .aspNetTextBox:focus {
            background: rgba(255, 255, 255, 0.3);
            color: #000;
        }

        /* 🔸 Gender radio buttons */
        .gender-group {
            margin-top: 10px;
            margin-bottom: 10px;
        }

        .gender-group label {
            margin-right: 10px;
            color: #ffe0b2;
        }

        /* 🔸 Register button */
        .btn-register {
            margin-top: 10px;
            background: linear-gradient(135deg, #8B4513, #A0522D);
            color: #fff;
            font-size: 16px;
            padding: 10px;
            border: none;
            border-radius: 10px;
            width: 100%;
            font-weight: bold;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .btn-register:hover {
            background: linear-gradient(135deg, #A0522D, #D2691E);
            transform: scale(1.05);
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.4);
        }

        @media (max-width: 500px) {
            .glass-card {
                width: 90%;
                padding: 25px;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="overlay">
        <div class="glass-card">
            <h2>☕ Register</h2>
            <p>Already have an account? <a href="../login.aspx">Login here</a></p>

            <label for="txtFullName">Full Name</label>
            <asp:TextBox ID="txtFullName" runat="server" CssClass="aspNetTextBox" placeholder="Enter your name" />

            <label for="txtUsername">Username</label>
            <asp:TextBox ID="txtUsername" runat="server" CssClass="aspNetTextBox" placeholder="Choose a username" />

            <label for="txtEmail">Email</label>
            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="aspNetTextBox" placeholder="Enter your email" />

            <label for="txtPhone">Phone Number</label>
            <asp:TextBox ID="txtPhone" runat="server" TextMode="Number" CssClass="aspNetTextBox" placeholder="Enter your phone" />

            <label for="txtPassword">Password</label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="aspNetTextBox" placeholder="Enter password" />

            <label for="txtConfirmPassword">Confirm Password</label>
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="aspNetTextBox" placeholder="Re-enter password" />

            <div class="gender-group">
                <label>Gender:</label>
                <asp:RadioButtonList ID="rdgen" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </div>

            <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn-register" OnClick="btnRegister_Click" />
        </div>
    </div>
</asp:Content>
