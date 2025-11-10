<%@ Page Title="Coffee Bites | Products" Language="C#" MasterPageFile="~/Site1.Master"
    AutoEventWireup="true" CodeBehind="display.aspx.cs"
    Inherits="Cafe_Managament.User.display" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet" />

    <style>
        /* 🌟 Background same as index/about */
        body {
            font-family: 'Poppins', sans-serif;
            background: url('../images/userbg.jpeg') center center / cover no-repeat fixed;
            color: #fff;
            margin: 0;
            padding: 0;
            position: relative;
        }

        body::before {
            content: "";
            position: fixed;
            inset: 0;
            background: rgba(0, 0, 0, 0.55);
            
            z-index: -1;
        }

        /* 🌟 Heading */
        h1 {
            color: #ffd9a0;
            font-weight: 700;
            margin: 60px 0 25px;
            text-shadow: 2px 3px 8px rgba(0, 0, 0, 0.4);
            letter-spacing: 1px;
        }

        /* ☕ Product Grid Layout */
        .product-grid {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 25px;
            padding: 20px;
        }

        /* 🪶 Product Card */
        .product-item {
            background: rgba(255, 255, 255, 0.12);
            border: 1px solid rgba(255, 255, 255, 0.2);
            border-radius: 16px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
            width: 250px;
            text-align: center;
            padding: 25px;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            backdrop-filter: blur(10px);
        }

        .product-item:hover {
            transform: translateY(-8px);
            box-shadow: 0 12px 35px rgba(0, 0, 0, 0.45);
        }

        /* 🖼️ Image Styling */
        .product-item img {
            width: 180px;
            height: 180px;
            border-radius: 12px;
            object-fit: cover;
            margin-bottom: 12px;
            transition: transform 0.4s ease;
        }

        .product-item:hover img {
            transform: scale(1.08);
        }

        /* 🏷️ Labels */
        .product-item label {
            display: block;
            margin: 8px 0;
            font-weight: 600;
            color: #fff;
            text-shadow: 1px 1px 3px rgba(0,0,0,0.3);
        }

        .product-item label:last-of-type {
            color: #ffcf9f;
            font-weight: 700;
        }

        /* 🧁 Buttons */
        .product-item a,
        .product-item asp\:linkbutton {
            display: inline-block;
            margin: 6px;
            padding: 8px 15px;
            background: linear-gradient(135deg, #a0522d, #8b4513);
            color: #fff;
            border-radius: 10px;
            text-decoration: none;
            font-size: 14px;
            font-weight: 600;
            transition: all 0.3s ease;
            box-shadow: 0 4px 10px rgba(139, 69, 19, 0.4);
        }

        .product-item a:hover,
        .product-item asp\:linkbutton:hover {
            background: linear-gradient(135deg, #8b4513, #5a2d0c);
            transform: translateY(-2px);
        }

        /* 📄 Pagination Buttons */
        .paging-buttons {
            margin: 40px 0 60px;
        }

        .paging-buttons a {
            margin: 0 12px;
            padding: 10px 22px;
            background: linear-gradient(135deg, #a0522d, #8b4513);
            color: #fff;
            border-radius: 10px;
            text-decoration: none;
            font-weight: 600;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
            transition: all 0.3s ease;
        }

        .paging-buttons a:hover {
            background: linear-gradient(135deg, #8b4513, #5a2d0c);
            transform: translateY(-3px);
        }

        .paging-buttons a[disabled] {
            background-color: #ccc;
            box-shadow: none;
            cursor: not-allowed;
        }

        /* 📱 Responsive */
        @media (max-width: 768px) {
            .product-item {
                width: 90%;
            }

            .product-item img {
                width: 160px;
                height: 160px;
            }
        }
    </style>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align: center;">
        <h1>☕ Coffee Bites - Our Menu ☕</h1>

        <div class="product-grid">
            <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" CellPadding="10" OnItemCommand="DataList1_ItemCommand">
                <ItemTemplate>
                    <div class="product-item">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' AlternateText="Coffee Product" />
                        <label><%# Eval("Name") %></label>
                        <label>₹ <%# Eval("Price") %></label>

                        <!-- Add To Cart -->
                        <asp:LinkButton ID="LinkButton3" runat="server"
                            CommandName="cmd_cart"
                            CommandArgument='<%# Eval("Id") %>'
                            CssClass="btn">
                            🛒 Add To Cart
                        </asp:LinkButton>

                        <!-- View Details -->
                        <asp:LinkButton ID="LinkButton4" runat="server"
                            CommandName="cmd_view"
                            CommandArgument='<%# Eval("Id") %>'
                            CssClass="btn">
                            🔍 View Details
                        </asp:LinkButton>
                    </div>
                </ItemTemplate>
            </asp:DataList>
        </div>

        <div class="paging-buttons">
            <asp:LinkButton ID="lnkprev" runat="server" OnClick="LinkButton1_Click">⟵ Previous</asp:LinkButton>
            <asp:LinkButton ID="lnknxt" runat="server" OnClick="LinkButton2_Click">Next ⟶</asp:LinkButton>
        </div>
    </div>
</asp:Content>
