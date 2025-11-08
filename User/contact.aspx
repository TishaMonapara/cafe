<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Cafe_Managament.User.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="/css/style.css" />
    <link rel="stylesheet" href="/css/responsive.css" />
    <link rel="icon" href="/images/fevicon.png" type="image/gif" />
    <link rel="stylesheet" href="/css/jquery.mCustomScrollbar.min.css" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;800&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" />

    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f8f9fa;
        }

        .form-container {
            background: #fff;
            max-width: 500px;
            margin: 50px auto;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            text-align: left;
        }

            .form-container h2 {
                text-align: center;
                margin-bottom: 20px;
                font-weight: 700;
                color: #333;
            }

        table {
            width: 100%;
        }

        td {
            padding: 10px 0;
            font-weight: 600;
            color: #444;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            border-radius: 8px;
            border: 1px solid #ccc;
            font-size: 16px;
            transition: 0.3s;
        }

            .form-control:focus {
                border-color: #e3342f;
                box-shadow: 0 0 5px rgba(227, 52, 47, 0.3);
                outline: none;
            }

        .btn-custom {
            background-color: #e3342f !important;
            color: #fff !important; 
            font-weight: 700;
            font-size: 18px;
            padding: 12px 30px;
            border: none;
            border-radius: 12px;
            cursor: pointer;
            transition: all 0.3s ease;
            display: inline-block;
            width: 100%;
            text-align: center;
            letter-spacing: 1px; 
        }

            .btn-custom:hover {
                background-color: #c5302f !important;
                transform: translateY(-2px);
                box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
                color: #fff !important;
            }


        #lblMsg {
            display: block;
            margin-top: 15px;
            text-align: center;
            font-size: 16px;
            font-weight: 600;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
   <div class="form-container">
    <h2>Contact Us</h2>
    <table>
        <tr>
            <td>Name:</td>
            <td>
                <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Email:</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Phone:</td>
            <td>
                <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Message:</td>
            <td>
                <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="4" CssClass="form-control"></asp:TextBox></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="btnSubmit" runat="server" Text="Send" CssClass="btn-custom" OnClick="btnSubmit_Click" />
            </td>
        </tr>
    </table>
    <asp:Label ID="lblMsg" runat="server" ForeColor="Green"></asp:Label>
</div>
</asp:Content>
