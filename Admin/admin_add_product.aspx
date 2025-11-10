<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master"
    AutoEventWireup="true" CodeBehind="admin_add_product.aspx.cs"
    Inherits="Cafe_Managament.Admin.admin_add_product" %>

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

        /* Overlay for form and list */
        .overlay {
            max-width: 1200px;
            margin: 40px auto;
            background: rgba(255, 248, 240, 0.85); /* creamy white */
            border-radius: 20px;
            padding: 40px;
            box-shadow: 0 10px 40px rgba(0,0,0,0.3);
        }

        h2, h3 {
            color: #4b2e05;
            font-family: 'Playfair Display', serif;
            font-weight: 700;
            text-align: center;
            margin-bottom: 25px;
            text-shadow: 1px 1px 2px rgba(0,0,0,0.1);
        }

        /* Form styling */
        .form-card {
            background: rgba(255, 255, 255, 0.75);
            backdrop-filter: blur(10px);
            padding: 35px 40px;
            border-radius: 18px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
            max-width: 550px;
            margin: 0 auto 40px auto;
            border: 1px solid rgba(255, 255, 255, 0.3);
            transition: transform 0.3s ease;
        }

        .form-card:hover {
            transform: translateY(-5px);
        }

        .form-card input[type="text"],
        .form-card input[type="number"],
        .form-card textarea,
        .form-card select,
        .form-card input[type="file"] {
            width: 100%;
            padding: 12px 15px;
            margin-bottom: 20px;
            border: 1px solid #d4b692;
            border-radius: 12px;
            font-size: 15px;
            background: #fffdf8;
            transition: all 0.3s ease;
        }

        .form-card input[type="text"]:focus,
        .form-card input[type="number"]:focus,
        .form-card textarea:focus,
        .form-card select:focus {
            border-color: #a0522d;
            box-shadow: 0 0 8px rgba(160, 82, 45, 0.3);
            outline: none;
            background: #fffaf3;
        }

        /* Submit button */
        .btn-primary {
            width: 100%;
            padding: 14px;
            font-size: 17px;
            font-weight: 600;
            color: white;
            background: linear-gradient(90deg, #a9746e, #8b4513);
            border: none;
            border-radius: 14px;
            cursor: pointer;
            box-shadow: 0 4px 10px rgba(139, 69, 19, 0.3);
            transition: all 0.3s ease;
        }

        .btn-primary:hover {
            background: linear-gradient(90deg, #8b4513, #6f3b10);
            transform: translateY(-2px);
            box-shadow: 0 6px 14px rgba(139, 69, 19, 0.4);
        }

        /* Grid / Table styling */
        .gridview-style {
            width: 100%;
            border-collapse: collapse;
            font-size: 0.95rem;
        }

        .gridview-style th, .gridview-style td {
            border: 1px solid #d1bfa7;
            padding: 10px;
            text-align: center;
        }

        .gridview-style th {
            background-color: #a9746e; /* coffee brown */
            color: #fff;
            font-weight: 600;
        }

        .gridview-style tr:nth-child(even) {
            background-color: rgba(169, 116, 110, 0.15);
        }

        .gridview-style tr:hover {
            background-color: rgba(169, 116, 110, 0.3);
        }

        .table-container {
            overflow-x: auto;
        }

        asp\\:Image {
            border-radius: 6px;
            border: 1px solid #d1bfa7;
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
        <div class="page-header">
            <h2>🍕 Add Product - Coffee Bites</h2>
        </div>

        <div class="form-card">
            <h3>Add New Product</h3>
            <asp:TextBox ID="txtnm" runat="server" placeholder="Product Name"></asp:TextBox><br />
            <asp:DropDownList ID="drpct" runat="server"></asp:DropDownList><br />
            <asp:TextBox ID="txtprice" runat="server" placeholder="Price"></asp:TextBox><br />
            <asp:TextBox ID="Txtds" runat="server" TextMode="MultiLine" Rows="3" placeholder="Description"></asp:TextBox><br />
            <asp:FileUpload ID="flpimg" runat="server" /><br />
            <asp:DropDownList ID="drpct2" runat="server">
                <asp:ListItem>Available</asp:ListItem>
                <asp:ListItem>Unavailable</asp:ListItem>
            </asp:DropDownList><br />
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" CssClass="btn-primary" />
        </div>

        <div class="table-container">
            <h3 style="margin-top:30px;">Existing Products</h3>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                DataKeyNames="Id" AllowPaging="True" PageSize="8" CssClass="gridview-style"
                OnPageIndexChanging="GridView1_PageIndexChanging" Width="100%">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="ID" ReadOnly="True" ItemStyle-Width="50px" />
                    <asp:BoundField DataField="Name" HeaderText="Name" ItemStyle-Width="150px" />
                    <asp:BoundField DataField="Category" HeaderText="Category" ItemStyle-Width="100px" />
                    <asp:BoundField DataField="Price" HeaderText="Price" ItemStyle-Width="80px" />
                    <asp:BoundField DataField="Description" HeaderText="Description" ItemStyle-Width="200px" />
                    <asp:TemplateField HeaderText="Image" ItemStyle-Width="80px">
                        <ItemTemplate>
                            <asp:Image ID="flpimg" runat="server" ImageUrl='<%# Eval("Image") %>' Width="40" Height="40" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Availability" HeaderText="Availability" ItemStyle-Width="100px" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>
