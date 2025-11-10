<%@ Page Title="Checkout" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="Cafe_Managament.User.checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;800&display=swap" rel="stylesheet" />

    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: url('../images/userbg.jpeg') center center / cover no-repeat fixed;
            margin: 0;
            padding: 0;
        }

        /* ☕ Overlay */
        .overlay {
            background: rgba(0, 0, 0, 0.55);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 50px 15px;
        }

        /* 📦 Glassmorphic Box */
        .checkout-container {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(15px);
            border: 1px solid rgba(255, 255, 255, 0.25);
            border-radius: 20px;
            padding: 40px;
            color: #fff;
            max-width: 900px;
            width: 100%;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.35);
            transition: 0.4s ease;
        }

        .checkout-container:hover {
            transform: translateY(-5px);
        }

        /* 🌟 Heading */
        h2 {
            text-align: center;
            color: #ffcf9f;
            font-weight: 800;
            font-size: 38px;
            margin-bottom: 25px;
            text-shadow: 2px 3px 8px rgba(0, 0, 0, 0.4);
        }

        /* Labels & Inputs */
        label {
            font-weight: 600;
            color: #ffe6c4;
            display: block;
            margin-top: 10px;
        }

        input, textarea, select {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 10px;
            background: rgba(255, 255, 255, 0.15);
            color: #fff;
            font-size: 15px;
            margin-bottom: 15px;
            transition: 0.3s;
        }

        input:focus, textarea:focus, select:focus {
            outline: none;
            background: rgba(255, 255, 255, 0.25);
        }

        textarea {
            resize: none;
        }

        /* 🛍️ Order Summary Table */
        .summary-title {
            margin-top: 25px;
            font-size: 22px;
            font-weight: 700;
            color: #ffcf9f;
            border-bottom: 2px solid #ffcf9f;
            padding-bottom: 5px;
            margin-bottom: 15px;
        }

        .table {
            width: 100%;
            border-collapse: collapse;
            background: rgba(255, 255, 255, 0.05);
            border-radius: 10px;
            overflow: hidden;
        }

        .table th {
            background: rgba(255, 255, 255, 0.15);
            color: #ffd9a0;
            text-align: left;
            padding: 12px;
        }

        .table td {
            padding: 10px;
            border-bottom: 1px solid rgba(255, 255, 255, 0.1);
            color: #fff;
        }

        .table tr:hover {
            background: rgba(255, 255, 255, 0.08);
        }

        /* 💰 Final Total */
        .total {
            display: block;
            text-align: right;
            font-weight: 700;
            font-size: 18px;
            color: #ffe0b2;
            margin-top: 15px;
            background: rgba(255, 255, 255, 0.1);
            border-left: 5px solid #ffcf9f;
            border-radius: 10px;
            padding: 10px 20px;
        }

        /* ✅ Confirm Button */
        .btn {
            background: linear-gradient(135deg, #ff4b2b, #ff416c);
            color: #fff;
            border: none;
            padding: 14px;
            border-radius: 12px;
            width: 100%;
            font-size: 18px;
            font-weight: 700;
            cursor: pointer;
            transition: 0.3s;
            margin-top: 20px;
        }

        .btn:hover {
            transform: scale(1.05);
            box-shadow: 0 4px 15px rgba(255, 65, 108, 0.4);
        }

        /* 📱 Responsive */
        @media (max-width: 768px) {
            .checkout-container {
                padding: 25px 20px;
            }

            h2 {
                font-size: 28px;
            }

            .summary-title {
                font-size: 18px;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="overlay">
        <div class="checkout-container">
            <h2>Checkout</h2>

            <label>Name</label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>

            <label>Address</label>
            <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="3"></asp:TextBox>

            <label>Payment Method</label>
            <asp:DropDownList ID="ddlPayment" runat="server">
                <asp:ListItem Text="Select Payment" Value=""></asp:ListItem>
                <asp:ListItem Text="UPI" Value="UPI"></asp:ListItem>
                <asp:ListItem Text="Card" Value="Card"></asp:ListItem>
                <asp:ListItem Text="Net Banking" Value="Net Banking"></asp:ListItem>
            </asp:DropDownList>

            <div class="summary-title">Order Summary</div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table" GridLines="None" BorderStyle="None">
                <Columns>
                    <asp:BoundField DataField="Prod_Name" HeaderText="Product" />
                    <asp:BoundField DataField="Prod_Price" HeaderText="Price (₹)" />
                    <asp:BoundField DataField="Prod_Quantity" HeaderText="Qty" />
                    <asp:BoundField DataField="Total" HeaderText="Total (₹)" />
                </Columns>
            </asp:GridView>

            <asp:Label ID="Lblfinaltotal" runat="server" CssClass="total" Text="Final Total: ₹0.00"></asp:Label>

            <asp:Button ID="BtnConfirm" runat="server" Text="Confirm Order" CssClass="btn" OnClick="BtnConfirm_Click" />
        </div>
    </div>
</asp:Content>
