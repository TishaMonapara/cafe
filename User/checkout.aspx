<%@ Page Title="Checkout" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="Cafe_Managament.User.checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background: linear-gradient(120deg,#2980b9,#6dd5fa,#ffffff);
            font-family: 'Segoe UI', sans-serif;
        }
        .checkout-container {
            width: 90%;
            max-width: 800px;
            margin: 50px auto;
            background: rgba(255,255,255,0.9);
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0 6px 20px rgba(0,0,0,0.3);
        }
        h2 {
            text-align: center;
            color: #007bff;
            font-weight: 700;
            margin-bottom: 20px;
        }
        label {
            font-weight: 600;
        }
        input, textarea, select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 8px;
            margin-bottom: 15px;
        }
        .btn {
            background: #007bff;
            color: white;
            border: none;
            padding: 12px;
            border-radius: 8px;
            width: 100%;
            font-size: 16px;
            font-weight: 600;
            transition: 0.3s;
        }
        .btn:hover {
            background: #0056b3;
        }
        .total {
            font-weight: bold;
            font-size: 18px;
            text-align: right;
            color: #333;
            margin-top: 15px;
        }
        .summary-title {
            margin-top: 25px;
            font-size: 20px;
            font-weight: 700;
            color: #007bff;
            border-bottom: 2px solid #007bff;
            padding-bottom: 5px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="checkout-container">
        <h2>Checkout</h2>

        <label>Name</label>
        <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>

        <label>Address</label>
        <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control"></asp:TextBox>

        <label>Payment Method</label>
        <asp:DropDownList ID="ddlPayment" runat="server" CssClass="form-control">
            <asp:ListItem Text="Select Payment" Value=""></asp:ListItem>
            <asp:ListItem Text="UPI" Value="UPI"></asp:ListItem>
            <asp:ListItem Text="Card" Value="Card"></asp:ListItem>
            <asp:ListItem Text="Net Banking" Value="Net Banking"></asp:ListItem>
        </asp:DropDownList>

        <div class="summary-title">Order Summary</div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%"
            GridLines="None" BorderStyle="None" CssClass="table table-bordered">
            <Columns>
                <asp:BoundField DataField="Prod_Name" HeaderText="Product" />
                <asp:BoundField DataField="Prod_Price" HeaderText="Price (₹)" />
                <asp:BoundField DataField="Prod_Quantity" HeaderText="Qty" />
                <asp:BoundField DataField="Total" HeaderText="Total (₹)" />
            </Columns>
        </asp:GridView>

        <asp:Label ID="Lblfinaltotal" runat="server" CssClass="total"></asp:Label>

        <asp:Button ID="BtnConfirm" runat="server" Text="Confirm Order" CssClass="btn" OnClick="BtnConfirm_Click" />
    </div>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server"></asp:Content>
