<%@ Page Title="Cart | Coffee Bites" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="cart.aspx.cs" Inherits="Cafe_Managament.User.cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;800&display=swap" rel="stylesheet" />

    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background: url('../images/userbg.jpeg') center center / cover no-repeat fixed;
        }

        /* 🌄 Overlay Layer */
        .main-cart::before {
            content: "";
            position: absolute;
            inset: 0;
            background: rgba(0, 0, 0, 0.55);
        }

        /* 🌟 Main Section */
        .main-cart {
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
        }

        /* 🪟 Transparent Glass Box */
        .cart-container {
            position: relative;
            z-index: 2;
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(12px);
            border: 2px solid rgba(255, 255, 255, 0.25);
            border-radius: 20px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
            padding: 50px 40px;
            max-width: 1000px;
            width: 90%;
            color: #fff;
            text-align: center;
        }

        /* 🛒 Heading */
        .cart-container h1 {
            font-size: 38px;
            color: #ffcf9f;
            font-weight: 800;
            margin-bottom: 25px;
            text-shadow: 2px 3px 8px rgba(0, 0, 0, 0.4);
        }

        .cart-container h1 i {
            color: #ffb74d;
        }

        /* 🧾 GridView Styling */
        #ContentPlaceHolder1_GridView1 {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            background: rgba(255, 255, 255, 0.05);
            border-radius: 15px;
            overflow: hidden;
        }

        #ContentPlaceHolder1_GridView1 th {
            background: rgba(255, 255, 255, 0.15);
            color: #ffe0b2;
            padding: 12px;
            text-transform: uppercase;
            font-size: 15px;
            letter-spacing: 1px;
        }

        #ContentPlaceHolder1_GridView1 td {
            padding: 12px;
            color: #fff;
            border-bottom: 1px solid rgba(255, 255, 255, 0.1);
        }

        #ContentPlaceHolder1_GridView1 tr:hover {
            background: rgba(255, 255, 255, 0.08);
            transition: 0.3s ease;
        }

        #ContentPlaceHolder1_GridView1 img {
            border-radius: 8px;
            width: 60px;
            height: 60px;
            object-fit: cover;
        }

        #ContentPlaceHolder1_GridView1 input[type="text"] {
            width: 60px;
            padding: 6px;
            border-radius: 5px;
            text-align: center;
            border: none;
            background: rgba(255, 255, 255, 0.2);
            color: white;
        }

        #ContentPlaceHolder1_GridView1 a {
            color: #ff7043;
            font-weight: 600;
            text-decoration: none;
        }

        #ContentPlaceHolder1_GridView1 a:hover {
            color: #ff5722;
        }

        /* 🧮 Buttons */
        #ContentPlaceHolder1_Button1,
        #ContentPlaceHolder1_BtnCheckout {
            border: none;
            padding: 14px 28px;
            font-size: 16px;
            font-weight: 600;
            border-radius: 12px;
            cursor: pointer;
            transition: 0.3s;
            margin: 15px 10px;
        }

        #ContentPlaceHolder1_Button1 {
            background: linear-gradient(135deg, #d2691e, #ffb74d);
            color: white;
        }

        #ContentPlaceHolder1_Button1:hover {
            background: linear-gradient(135deg, #ff8c42, #ffb74d);
            transform: scale(1.05);
        }

        #ContentPlaceHolder1_BtnCheckout {
            background: linear-gradient(135deg, #43a047, #81c784);
            color: white;
        }

        #ContentPlaceHolder1_BtnCheckout:hover {
            background: linear-gradient(135deg, #2e7d32, #66bb6a);
            transform: scale(1.05);
        }

        /* 💰 Final Total */
        #ContentPlaceHolder1_Lblfinaltotal {
            display: inline-block;
            background: rgba(255, 255, 255, 0.1);
            border-left: 5px solid #ffcc80;
            border-radius: 10px;
            color: #ffe0b2;
            padding: 12px 20px;
            font-weight: bold;
            font-size: 18px;
            margin-top: 10px;
        }

        /* 📱 Responsive */
        @media (max-width: 768px) {
            .cart-container {
                padding: 30px 20px;
            }

            #ContentPlaceHolder1_GridView1 th,
            #ContentPlaceHolder1_GridView1 td {
                font-size: 14px;
                padding: 8px;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="main-cart">
        <div class="cart-container">
            <h1><i class="fa fa-shopping-cart"></i> Your Cart</h1>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                DataKeyNames="Prod_Cart_Id" OnRowCommand="GridView1_RowCommand">

                <Columns>
                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Prod_Image") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="Prod_Name" HeaderText="Product" />
                    <asp:BoundField DataField="Prod_Price" HeaderText="Price (₹)" />

                    <asp:TemplateField HeaderText="Quantity">
                        <ItemTemplate>
                            <asp:TextBox ID="txtQuantity" runat="server"
                                Text='<%# Eval("Prod_Quantity") %>'></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:BoundField DataField="Total" HeaderText="Total (₹)" />

                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server"
                                CommandArgument='<%# Eval("CartID") %>' CommandName="cmd_dlt">
                                Remove
                            </asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>

            <asp:Button ID="Button1" runat="server" Text="🧾 Update Cart" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="Lblfinaltotal" runat="server" Text="Final Total: ₹0.00"></asp:Label>
            <br />
            <asp:Button ID="BtnCheckout" runat="server" Text="✅ Proceed to Checkout" OnClick="BtnCheckout_Click" />
        </div>
    </section>
</asp:Content>
