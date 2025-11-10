<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="contact.aspx.cs" Inherits="Cafe_Managament.User.contact" %>

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

        /* 🔸 Dark overlay for consistency like master */
        .overlay {
            background-color: rgba(0, 0, 0, 0.45);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 40px 15px;
        }

        /* 🔸 Glassy card container */
        .contact-container {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(18px);
            border: 1px solid rgba(255, 255, 255, 0.2);
            border-radius: 20px;
            padding: 40px;
            width: 100%;
            max-width: 600px;
            color: #fff;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
            transition: 0.3s ease;
            animation: fadeIn 0.8s ease;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(15px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .contact-container:hover {
            transform: translateY(-5px);
        }

        /* 🔸 Title Styling */
        .contact-container h2 {
            text-align: center;
            color: #ffcc80;
            font-weight: 700;
            font-size: 30px;
            margin-bottom: 25px;
            text-shadow: 0 0 10px rgba(255, 204, 128, 0.4);
        }

        .contact-container h2 i {
            color: #ffb74d;
            margin-right: 8px;
        }

        table {
            width: 100%;
        }

        td {
            padding: 10px 0;
            color: #fff;
            font-weight: 500;
            font-size: 16px;
        }

        .form-control {
            width: 100%;
            padding: 10px 12px;
            border-radius: 8px;
            border: none;
            outline: none;
            background: rgba(255, 255, 255, 0.15);
            color: #fff;
            font-size: 15px;
            transition: 0.3s ease;
        }

        .form-control:focus {
            background: rgba(255, 255, 255, 0.3);
            color: #000;
        }

        /* 🔸 Button Styling */
        .btn-custom {
            width: 100%;
            background: linear-gradient(135deg, #8B4513, #A0522D);
            color: #fff;
            font-weight: 700;
            font-size: 18px;
            border: none;
            border-radius: 12px;
            padding: 12px;
            margin-top: 15px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .btn-custom:hover {
            background: linear-gradient(135deg, #A0522D, #D2691E);
            transform: scale(1.05);
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
        }

        /* 🔸 Success Message */
        #lblMsg {
            display: block;
            margin-top: 15px;
            text-align: center;
            font-size: 16px;
            font-weight: 600;
            color: #80ffb3;
            text-shadow: 0 0 10px rgba(128, 255, 179, 0.3);
        }

        @media (max-width: 600px) {
            .contact-container {
                padding: 25px;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="overlay">
        <div class="contact-container">
            <h2><i class="fa fa-envelope"></i> Contact Us</h2>

            <table>
                <tr>
                    <td>Name:</td>
                    <td><asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Phone:</td>
                    <td><asp:TextBox ID="txtPhone" runat="server" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Message:</td>
                    <td><asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="4" CssClass="form-control"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="btnSubmit" runat="server" Text="Send Message ☕" CssClass="btn-custom" OnClick="btnSubmit_Click" />
                    </td>
                </tr>
            </table>

            <asp:Label ID="lblMsg" runat="server"></asp:Label>
        </div>
    </div>
</asp:Content>
