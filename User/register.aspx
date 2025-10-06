<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Cafe_Managament.User.register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background: url('<%= ResolveUrl("~/images/register-bg.png") %>') no-repeat center center fixed;
            background-size: cover;
            font-family: 'Segoe UI', sans-serif;
            margin: 0;
        }

        .center-wrapper {
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }

        .glass-card {
            background: rgba(255, 255, 255, 0.15); /* transparency */
            border-radius: 20px;
            padding: 40px;
            width: 400px;
            color: #fff;
            box-shadow: 0 8px 32px 0 rgba(0, 0, 0, 0.3);
            backdrop-filter: blur(12px); /* glass effect */
            -webkit-backdrop-filter: blur(12px);
            border: 1px solid rgba(255, 255, 255, 0.18);
            text-align: left;
        }

            .glass-card h2 {
                text-align: center;
                margin-bottom: 10px;
                font-weight: 700;
            }

            .glass-card p {
                text-align: center;
                margin-bottom: 20px;
            }

        label {
            display: block;
            font-size: 14px;
            margin-top: 10px;
            font-weight: 500;
        }

        .aspNetTextBox {
            width: 100%;
            padding: 10px 15px; 
            margin-top: 6px;
            border-radius: 8px;
            border: none;
            outline: none;
            font-size: 14px;
            background: rgba(255, 255, 255, 0.2);
            color: #fff;
            box-sizing: border-box; 
        }


            .aspNetTextBox::placeholder {
                color: #e5e5e5;
            }

        .gender-group {
            margin-top: 15px;
            margin-bottom: 15px;
        }

        .btn-register {
            margin-top: 15px;
            background: linear-gradient(135deg, #ff6a00, #ee0979);
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

            .btn-register:hover {
                background: linear-gradient(135deg, #ee0979, #ff6a00);
                transform: translateY(-2px);
                box-shadow: 0 6px 15px rgba(0, 0, 0, 0.3);
            }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="center-wrapper">
        <div class="glass-card">
            <h2>✨ Register</h2>
            <p>Already have an account? <a href="../login.aspx" style="color: #ffd369;">Login here</a></p>

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

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server"></asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server"></asp:Content>
