<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddItem.aspx.cs" Inherits="Cafe_Managament.Admin.AddItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: url('../Images/createorder.jpg') no-repeat center center fixed;
            background-size: cover;
        }

        .form-container {
            max-width: 500px;
            margin: 50px auto;
            background: rgba(255, 255, 255, 0.95);
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
        }

        .form-container h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #6f4e37; /* Coffee brown */
        }

        table {
            width: 100%;
        }

        td {
            padding: 10px;
            font-size: 15px;
            color: #333;
        }

        input[type="text"], select, .aspNet-RadioButtonList {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        .btn-custom {
            width: 100%;
            background: #6f4e37;
            color: #fff;
            border: none;
            padding: 12px;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
        }

        .btn-custom:hover {
            background: #543d2f;
        }

        #lblmsg {
            display: block;
            text-align: center;
            margin-top: 15px;
            font-weight: bold;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="form-container">
        <h2>Add New Menu Item</h2>
        <table>
            <tr>
                <td>Category:</td>
                <td>
                    <asp:DropDownList ID="dlct" runat="server" CssClass="form-control">
                        <asp:ListItem>--Select Category--</asp:ListItem>
                        <asp:ListItem>Beverages</asp:ListItem>
                        <asp:ListItem>Snacks</asp:ListItem>
                        <asp:ListItem>Main Course</asp:ListItem>
                        <asp:ListItem>Dessert</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Item Name:</td>
                <td><asp:TextBox ID="txtnm" runat="server" CssClass="form-control"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Item Price:</td>
                <td><asp:TextBox ID="txtps" runat="server" CssClass="form-control"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Item Type:</td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" CssClass="form-control">
                        <asp:ListItem>Veg</asp:ListItem>
                        <asp:ListItem>Non-veg</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="Button1" runat="server" Text="Add Item" CssClass="btn-custom" OnClick="Button1_Click" />
                </td>
            </tr>
        </table>
        <asp:Label ID="lblmsg" runat="server" ForeColor="Green"></asp:Label>
    </div>
</asp:Content>
