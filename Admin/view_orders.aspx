<%@ Page Title="View Orders" Language="C#" MasterPageFile="~/Admin/Admin.Master"
    AutoEventWireup="true" CodeBehind="view_orders.aspx.cs"
    Inherits="Cafe_Managament.Admin.view_orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, sans-serif;
            background-color: #fffaf0;
            color: #333;
        }

        h2 {
            text-align: center;
            margin-top: 30px;
            color: #444;
            font-weight: 600;
        }

        .grid {
            width: 90%;
            margin: 30px auto;
            border-collapse: collapse;
            border: 1px solid #ccc;
            background-color: #fff;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }

        .grid th {
            background-color: #ffcc66;
            color: #333;
            padding: 10px;
            text-align: center;
        }

        .grid td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: center;
        }

        .grid tr:nth-child(even) {
            background-color: #fff8e1;
        }

        .grid tr:hover {
            background-color: #ffe0b2;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>All Orders</h2>

    <asp:GridView ID="GridView1" runat="server" CssClass="grid" AutoGenerateColumns="False"
        AllowPaging="True" PageSize="10" OnPageIndexChanging="GridView1_PageIndexChanging">

        <Columns>
            <asp:TemplateField HeaderText="Order ID">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("OrderID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:BoundField DataField="UserID" HeaderText="User ID" />
            <asp:BoundField DataField="Name" HeaderText="Customer Name" />
            <asp:BoundField DataField="Address" HeaderText="Address" />
            <asp:BoundField DataField="Payment_Method" HeaderText="Payment Method" />
            <asp:BoundField DataField="Total_Amount" HeaderText="Total (₹)" DataFormatString="₹{0:N2}" />
            <asp:BoundField DataField="Order_Date" HeaderText="Order Date" DataFormatString="{0:dd-MM-yyyy HH:mm}" />
        </Columns>
    </asp:GridView>
</asp:Content>
