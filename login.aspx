<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Cafe_Managament.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Tailwind CSS CDN -->
    <script src="https://cdn.tailwindcss.com"></script>

    <style>
        body {
            background: url('<%= ResolveUrl("~/Images/login.jpg") %>') no-repeat center center fixed;
            background-size: cover;
            font-family: 'Segoe UI', sans-serif;
        }

        
        .overlay {
            background-color: rgba(0, 0, 0, 0.5);
            position: fixed;
            top: 0;
            left: 0;
            height: 100vh;
            width: 100vw;
            display: flex;
            align-items: center;
            justify-content: center;
        }

      
        .login-box {
            background: rgba(255, 255, 255, 0.08);
            border-radius: 25px;
            border: 2px solid rgba(255, 255, 255, 0.2);
            backdrop-filter: blur(20px);
            -webkit-backdrop-filter: blur(20px);
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.6);
            padding: 3rem 2.5rem;
            width: 100%;
            max-width: 400px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .login-box:hover {
            transform: translateY(-8px);
            box-shadow: 0 20px 50px rgba(0, 0, 0, 0.7);
        }

        h2 {
            font-size: 2.5rem;
            font-weight: 800;
            color: #ffb347; 
            text-align: center;
            margin-bottom: 0.5rem;
            text-shadow: 0 2px 6px rgba(0,0,0,0.6);
        }

        p {
            font-size: 0.9rem;
            color: #f0e6d2;
            text-align: center;
            margin-bottom: 1.5rem;
        }

        
        .login-input {
            background: rgba(255, 255, 255, 0.12);
            border: 1px solid rgba(255, 255, 255, 0.3);
            color: #fff;
            padding: 0.65rem 0.75rem;
            border-radius: 12px;
            transition: all 0.3s ease;
        }

        .login-input:focus {
            border-color: #ffb347;
            box-shadow: 0 0 15px rgba(255,179,71,0.8);
            outline: none;
        }

        
        .flex label {
            color: #f5f5f5;
            font-size: 0.9rem;
        }

        
        .login-btn {
            background: linear-gradient(90deg, #ffb347, #ffcc33);
            color: #4b2e00;
            font-weight: 700;
            text-shadow: 0 1px 2px rgba(0,0,0,0.4);
            transition: all 0.3s ease;
        }

        .login-btn:hover {
            background: linear-gradient(90deg, #ffcc33, #ffb347);
            box-shadow: 0 0 20px rgba(255,179,71,0.9);
            transform: translateY(-2px);
        }

        
        .fade-in {
            animation: fadeInUp 1s ease forwards;
            opacity: 0;
        }

        @keyframes fadeInUp {
            0% {
                transform: translateY(40px);
                opacity: 0;
            }
            100% {
                transform: translateY(0);
                opacity: 1;
            }
        }

        
        @media (max-width: 500px) {
            .login-box {
                padding: 2rem 1.5rem;
                border-radius: 20px;
            }

            h2 {
                font-size: 2rem;
            }
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="overlay">
        <div class="login-box p-8 fade-in w-full max-w-md">
            <h2 class="text-3xl font-extrabold mb-3 text-white drop-shadow-lg text-center">☕ Login</h2>
            <p class="text-sm text-gray-200 mb-6 text-center">
                New here? <a href="/User/register.aspx" class="text-teal-300 hover:underline">Create an account</a>
            </p>

            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"
                CssClass="block mb-3 text-sm font-medium text-red-400 text-center"></asp:Label>

            <div class="mb-4">
                <label for="txtUsername" class="block mb-1 text-sm font-medium text-gray-200">Email</label>
                <asp:TextBox ID="txtUsername" runat="server"
                    CssClass="login-input w-full px-3 py-2 rounded-lg placeholder-gray-300"
                    placeholder="Enter your email"></asp:TextBox>
            </div>

            <div class="mb-4">
                <label for="txtPassword" class="block mb-1 text-sm font-medium text-gray-200">Password</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"
                    CssClass="login-input w-full px-3 py-2 rounded-lg placeholder-gray-300"
                    placeholder="Enter your password"></asp:TextBox>
            </div>

            <div class="flex items-center mb-5">
                <asp:CheckBox ID="chkRemember" runat="server" CssClass="mr-2 accent-teal-500" />
                <label for="chkRemember" class="text-sm text-gray-200">Keep me logged in</label>
            </div>

            <asp:Button ID="btnLogin" runat="server" Text="Log in" OnClick="btnLogin_Click"
                CssClass="login-btn w-full py-2 px-4 rounded-full" />
        </div>
    </div>

</asp:Content>
