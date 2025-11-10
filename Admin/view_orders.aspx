<%@ Page Title="View Orders" Language="C#" MasterPageFile="~/Admin/Admin.Master"
    AutoEventWireup="true" CodeBehind="view_orders.aspx.cs"
    Inherits="Cafe_Managament.Admin.view_orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Full-page café background */
        body {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            background: url('https://images.unsplash.com/photo-1509042239860-f550ce710b93?auto=format&fit=crop&w=1600&q=80') no-repeat center center fixed;
            background-size: cover;
            color: #3b2f2f;
        }

        /* Transparent overlay for the table */
        .overlay {
            max-width: 1200px;
            margin: 40px auto;
            background: rgba(255, 248, 240, 0.85); /* creamy white */
            border-radius: 20px;
            padding: 30px;
            box-shadow: 0 10px 40px rgba(0,0,0,0.3);
        }

        h2 {
            text-align: center;
            margin-bottom: 30px;
            color: #4b2e05;
            font-weight: 700;
            font-family: 'Playfair Display', serif;
            text-shadow: 1px 1px 2px rgba(0,0,0,0.2);
        }

        /* Table styling */
        .grid {
            width: 100%;
            border-collapse: collapse;
            border: none;
            box-shadow: 0 4px 20px rgba(0,0,0,0.1);
            font-size: 0.95rem;
        }

        .grid th, .grid td {
            padding: 12px 15px;
            text-align: center;
        }

        .grid th {
            background-color: #a9746e; /* coffee brown header */
            color: #fff;
            font-weight: 600;
        }

        .grid tr:nth-child(even) {
            background-color: rgba(169, 116, 110, 0.15); /* light coffee tone */
        }

        .grid tr:hover {
            background-color: rgba(169, 116, 110, 0.3); /* hover effect */
        }

        /* Scroll for large tables */
        .table-wrapper {
            overflow-x: auto;
        }

        @media(max-width: 600px) {
            .overlay {
                padding: 20px;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="overlay">
        <h2>All Orders</h2>

        <div class="table-wrapper">
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
        </div>
    </div>
</asp:Content>
