<%@ Page Title="Login" Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Cafe_Managament.login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>☕ Login - Cafe Management</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet" />

    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: url('images/login.jpg') no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
        }

        /* 🔸 Overlay Blur */
        .overlay {
            background-color: rgba(0, 0, 0, 0.45);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 40px 15px;
        }

        /* 🔸 Glass Effect Card */
        .glass-card {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(18px);
            border: 1px solid rgba(255, 255, 255, 0.25);
            border-radius: 20px;
            padding: 40px;
            width: 400px;
            color: #fff;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
            animation: fadeIn 0.8s ease;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(15px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* 🔸 Headings */
        .glass-card h2 {
            text-align: center;
            margin-bottom: 10px;
            color: #ffcc80;
            font-weight: 700;
            text-shadow: 0 0 10px rgba(255, 204, 128, 0.4);
        }

        .glass-card p {
            text-align: center;
            margin-bottom: 20px;
            color: #ffe0b2;
        }

        /* 🔸 Links */
        .glass-card a {
            color: #ffb74d;
            text-decoration: none;
            font-weight: bold;
        }

        .glass-card a:hover {
            text-decoration: underline;
        }

        /* 🔸 Labels */
        label {
            display: block;
            font-size: 14px;
            margin-top: 10px;
            font-weight: 600;
            color: #fff;
        }

        /* 🔸 Input Boxes */
        .aspNetTextBox {
            width: 100%;
            padding: 10px 15px;
            margin-top: 6px;
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

        /* 🔸 Login Button */
        .btn-login {
            margin-top: 20px;
            background: linear-gradient(135deg, #8B4513, #A0522D);
            color: #fff;
            font-size: 16px;
            padding: 12px;
            border: none;
            border-radius: 10px;
            width: 100%;
            font-weight: bold;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .btn-login:hover {
            background: linear-gradient(135deg, #A0522D, #D2691E);
            transform: scale(1.05);
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.4);
        }

        /* 🔸 Error Message */
        .error {
            text-align: center;
            color: #ff9999;
            font-weight: 600;
            margin-bottom: 10px;
        }

        /* 🔸 Responsive */
        @media (max-width: 500px) {
            .glass-card {
                width: 90%;
                padding: 30px;
            }
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div class="overlay">
            <div class="glass-card">
                <h2>☕ Login</h2>
                <p>Welcome back! Please sign in to continue.</p>

                <asp:Label ID="lblMessage" runat="server" CssClass="error"></asp:Label>

                <label for="txtUsername">Email</label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="aspNetTextBox" Placeholder="Enter your email"></asp:TextBox>

                <label for="txtPassword">Password</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="aspNetTextBox" Placeholder="Enter your password"></asp:TextBox>

                <div style="margin-top:10px; display:flex; align-items:center;">
                    <asp:CheckBox ID="chkRemember" runat="server" />
                    <span style="margin-left:8px; color:#ffe0b2;">Remember me</span>
                </div>

                <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn-login" OnClick="btnLogin_Click" />

                <p style="margin-top: 15px;">
                    Don’t have an account? <a href="User/register.aspx">Register here</a>
                </p>
            </div>
        </div>
    </form>
</body>
</html>
