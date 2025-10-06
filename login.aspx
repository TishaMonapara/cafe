<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Cafe_Managament.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <!-- Tailwind CSS CDN -->
  <script src="https://cdn.tailwindcss.com"></script>

  <style>
    body {
      background: url('<%= ResolveUrl("~/Images/login.jpg") %>') no-repeat center center fixed;
      background-size: cover;
      font-family: 'Segoe UI', sans-serif;
    }

    .login-box {
      background: rgba(255, 255, 255, 0.12);
      border-radius: 20px;
      border: 2px solid rgba(255, 255, 255, 0.25);
      backdrop-filter: blur(18px);
      -webkit-backdrop-filter: blur(18px);
      box-shadow: 0 10px 35px rgba(0, 0, 0, 0.55);
      transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .login-box:hover {
      transform: translateY(-6px);
      box-shadow: 0 16px 45px rgba(0, 0, 0, 0.65);
    }

    /* Input */
    .login-input {
      background: rgba(255, 255, 255, 0.15);
      border: 1px solid rgba(255, 255, 255, 0.35);
      color: white;
      transition: all 0.3s ease;
    }

    .login-input:focus {
      border-color: #14b8a6;
      box-shadow: 0 0 12px rgba(20, 184, 166, 0.9);
      outline: none;
    }

    /* Button */
    .login-btn {
      background: linear-gradient(90deg, #14b8a6, #0f766e);
      color: white;
      font-weight: 600;
      transition: all 0.3s ease;
    }

    .login-btn:hover {
      background: linear-gradient(90deg, #0f766e, #115e59);
      box-shadow: 0 0 18px rgba(20, 184, 166, 0.9);
    }

    /* Fade animation */
    .fade-in {
      animation: fadeInUp 1s ease forwards;
      opacity: 0;
    }

    @keyframes fadeInUp {
      0% { transform: translateY(40px); opacity: 0; }
      100% { transform: translateY(0); opacity: 1; }
    }
  </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
  <body class="flex items-center justify-center min-h-screen bg-black bg-opacity-40">
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
  </body>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
