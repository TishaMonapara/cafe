<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewMenu.aspx.cs" Inherits="Cafe_Managament.User.ViewMenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        body {
            background: url('<%= ResolveUrl("~/images/viewmenu.jpg") %>') no-repeat center center fixed;
            background-size: cover;
            font-family: 'Segoe UI', sans-serif;
            margin: 0;
        }

        .grid-container {
            margin-top: 40px;
            max-width: 95%;
            background: #fffdf9;
            border-radius: 18px;
            box-shadow: 0 8px 28px rgba(75, 46, 46, 0.35);
            padding: 25px;
            transition: 0.3s ease-in-out;
        }

            .grid-container h2 {
                font-family: 'Poppins', sans-serif;
                letter-spacing: 1px;
                margin-bottom: 20px;
            }

            .grid-container table {
                width: 100%;
                border-collapse: separate;
                border-spacing: 0;
                border-radius: 12px;
                overflow: hidden;
            }

            .grid-container th {
                background: linear-gradient(135deg, #4b2e2e, #6d4c41);
                color: #fffaf0;
                font-weight: 600;
                text-align: center;
                padding: 14px;
                font-size: 15px;
                text-transform: uppercase;
                letter-spacing: 0.5px;
            }

            .grid-container td {
                padding: 14px;
                text-align: center;
                color: #3d2b1f;
                font-size: 15px;
                font-weight: 500;
                border-bottom: 1px solid #f0e6e1;
            }

            .grid-container tr:nth-child(even) td {
                background: #faf3ef;
            }

            .grid-container tr:nth-child(odd) td {
                background: #ffffff;
            }

            .grid-container tr:hover td {
                background: #f1e0d6;
                transform: scale(1.01);
                transition: 0.2s ease-in-out;
            }

            .grid-container .aspNetDisabled {
                opacity: 0.6;
                cursor: not-allowed;
            }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <center>
        <div class="grid-container">
            <h2 class="text-2xl font-bold mb-4 text-[#4b2e2e]">Available Menu</h2>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                AllowPaging="true" PageSize="15"
                CssClass="min-w-full"
                OnPageIndexChanging="GridView1_PageIndexChanging">

                <Columns>
                    <asp:TemplateField HeaderText="Item ID">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("ItemID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Item Name">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("ItemName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Category">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Category") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Price">
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ItemType">
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("ItemType") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </center>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
