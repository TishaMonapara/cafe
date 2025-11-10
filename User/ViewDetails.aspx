<%@ Page Title="Product Details" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewDetails.aspx.cs" Inherits="Cafe_Managament.User.ViewDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* 🌅 Background Styling */
        body {
            font-family: 'Poppins', sans-serif;
            background: url('../images/userbg.jpeg') center center / cover no-repeat fixed;
            background-size: cover;
            position: relative;
            margin: 0;
            padding: 0;
        }

        /* 🌫️ Soft Blur Overlay */
        .overlay {
            backdrop-filter: blur(6px);
            background-color: rgba(255, 245, 230, 0.75);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            padding: 40px 0;
        }

        /* 🌟 Title */
        h2.page-title {
            color: #4d2600;
            text-shadow: 0 2px 10px rgba(255, 255, 255, 0.8);
            margin-bottom: 25px;
            font-size: 34px;
            font-weight: bold;
            background: rgba(255, 255, 255, 0.6);
            padding: 10px 25px;
            border-radius: 10px;
        }

        /* 🟫 Product Card */
        .details-card {
            background: rgba(255, 255, 255, 0.93);
            padding: 25px;
            width: 420px;
            border-radius: 15px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

            .details-card:hover {
                transform: translateY(-5px);
                box-shadow: 0 10px 30px rgba(0, 0, 0, 0.25);
            }

            .details-card img {
                border-radius: 10px;
                margin-bottom: 15px;
                width: 360px;
                height: 240px;
                object-fit: cover;
                box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
            }

            .details-card h3 {
                color: #a0522d;
                margin: 10px 0;
                font-size: 24px;
                font-weight: 700;
            }

            .details-card p {
                margin: 6px 0;
                color: #4d2600;
                font-size: 15px;
                line-height: 1.6;
            }

            .details-card strong {
                color: #222;
            }

        /* 🟤 Button Style */
        .btn-back {
            margin-top: 18px;
            padding: 10px 22px;
            background: linear-gradient(90deg, #a0522d, #8b4513);
            border: none;
            border-radius: 8px;
            color: white;
            cursor: pointer;
            transition: all 0.3s ease;
            font-weight: 600;
            letter-spacing: 0.4px;
            text-transform: uppercase;
        }

            .btn-back:hover {
                background: linear-gradient(90deg, #8b4513, #5c2e0c);
                transform: scale(1.05);
            }

        /* 📱 Responsive */
        @media (max-width: 500px) {
            .details-card {
                width: 90%;
            }

                .details-card img {
                    width: 100%;
                    height: 220px;
                }

            h2.page-title {
                font-size: 26px;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="overlay">
        <h2 class="page-title">Product Details</h2>

        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <div class="details-card">
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' />
                    <h3><%# Eval("Name") %></h3>
                    <p><strong>Category:</strong> <%# Eval("Category") %></p>
                    <p><strong>Price:</strong> ₹ <%# Eval("Price") %></p>
                    <p><strong>Description:</strong> <%# Eval("Description") %></p>

                    <asp:Button ID="btnBack" runat="server"
                        Text="Back to Menu"
                        CssClass="btn-back"
                        PostBackUrl="display.aspx" />
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
