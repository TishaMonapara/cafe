<%@ Page Title="Cart" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="cart.aspx.cs" Inherits="Cafe_Managament.User.cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* --- Cart GridView Styling --- */
        #ContentPlaceHolder2_GridView1 {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            overflow: hidden;
        }

        #ContentPlaceHolder2_GridView1 th {
            background-color: #2f4f4f;
            color: white;
            padding: 15px;
            text-align: left;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 1px;
            font-size: 14px;
        }

        #ContentPlaceHolder2_GridView1 td {
            padding: 15px;
            border-bottom: 1px solid #e0e0e0;
            vertical-align: middle;
        }

        #ContentPlaceHolder2_GridView1 tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        #ContentPlaceHolder2_GridView1 tr:hover {
            background-color: #f1f1f1;
            transition: background-color 0.3s ease;
        }

        /* Image Styling */
        #ContentPlaceHolder2_GridView1 img {
            border-radius: 4px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        /* Text Input Styling */
        #ContentPlaceHolder2_GridView1 input[type="text"] {
            width: 60px;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
            text-align: center;
            font-size: 14px;
        }

        #ContentPlaceHolder2_GridView1 input[type="text"]:focus {
            outline: none;
            border-color: #2f4f4f;
            box-shadow: 0 0 0 2px rgba(47, 79, 79, 0.2);
        }

        /* Remove Button */
        #ContentPlaceHolder2_GridView1 a {
            color: #d9534f;
            text-decoration: none;
            font-weight: 500;
            padding: 6px 12px;
            border-radius: 4px;
            transition: all 0.3s ease;
        }

        #ContentPlaceHolder2_GridView1 a:hover {
            background-color: #d9534f;
            color: white;
        }

        /* Update Button */
        #ContentPlaceHolder2_Button1 {
            background-color: #2f4f4f;
            color: white;
            border: none;
            padding: 12px 24px;
            font-size: 16px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            margin: 10px 0;
        }

        #ContentPlaceHolder2_Button1:hover {
            background-color: #3a5f5f;
        }

        /* Total Label */
        #ContentPlaceHolder2_Lblfinaltotal {
            display: block;
            font-size: 18px;
            font-weight: bold;
            margin: 15px 0;
            padding: 10px;
            background-color: #f8f9fa;
            border-radius: 4px;
            border-left: 4px solid #2f4f4f;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"></asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="hero">
        <div class="container">
            <div class="row justify-content-between">
                <div class="col-lg-5">
                    <div class="intro-excerpt">
                        <h1>🛒 Your Cart</h1>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Cart GridView -->
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
        DataKeyNames="Prod_Cart_Id"
        OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
        OnRowCommand="GridView1_RowCommand">

        <Columns>
            <asp:TemplateField HeaderText="Image">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="70px" Width="70px"
                        ImageUrl='<%# Eval("Prod_Image") %>' />
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

    <asp:Button ID="Button1" runat="server" Text="Update Cart" OnClick="Button1_Click" />
    <br />
    <asp:Label ID="Lblfinaltotal" runat="server" Text="Final Total: ₹0.00"></asp:Label>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server"></asp:Content>
