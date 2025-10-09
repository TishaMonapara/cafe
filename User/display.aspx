<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master"
    AutoEventWireup="true" CodeBehind="display.aspx.cs"
    Inherits="Cafe_Managament.User.display" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, sans-serif;
            background-color: #fffaf0;
            color: #4d2600;
        }

        h1 {
            color: #a0522d;
            margin-bottom: 30px;
        }

        .product-item {
            display: inline-block;
            width: 250px;
            background-color: #fff5e6;
            padding: 15px;
            margin: 15px;
            border-radius: 12px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            text-align: center;
            vertical-align: top;
            transition: transform 0.3s;
        }

        .product-item:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 20px rgba(0,0,0,0.2);
        }

        .product-item img {
            width: 150px;
            height: 150px;
            border-radius: 10px;
            margin-bottom: 10px;
        }

        .product-item label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }

        .product-item a {
            display: inline-block;
            margin: 5px;
            padding: 8px 12px;
            background-color: #a0522d;
            color: #fff;
            border-radius: 8px;
            text-decoration: none;
            font-size: 13px;
        }

        .product-item a:hover {
            background-color: #8b4513;
        }

        .paging-buttons {
            margin-top: 20px;
        }

        .paging-buttons a {
            margin: 0 10px;
            padding: 8px 12px;
            background-color: #a0522d;
            color: #fff;
            border-radius: 8px;
            text-decoration: none;
        }

        .paging-buttons a:disabled,
        .paging-buttons a[disabled] {
            background-color: #ccc;
            cursor: not-allowed;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align:center;">
        <h1>Coffee Bites - Products</h1>
        <center>
        <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" CellPadding="10" OnItemCommand="DataList1_ItemCommand">
    <ItemTemplate>
        <div class="product-item">
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' />
            <label><%# Eval("Name") %></label>
            <label>Price: ₹ <%# Eval("Price") %></label>
            <asp:LinkButton ID="LinkButton3" runat="server">Add To Cart</asp:LinkButton>
            <asp:LinkButton ID="LinkButton4" runat="server" CommandName="cmd_view" CommandArgument='<%# Eval("Id") %>'>View Details</asp:LinkButton>
        </div>
    </ItemTemplate>
</asp:DataList>
            </center>


        <div class="paging-buttons">
            <asp:LinkButton ID="lnkprev" runat="server" OnClick="LinkButton1_Click">Previous</asp:LinkButton>
            <asp:LinkButton ID="lnknxt" runat="server" OnClick="LinkButton2_Click">Next</asp:LinkButton>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
