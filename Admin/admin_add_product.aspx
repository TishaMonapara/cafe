<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master"
    AutoEventWireup="true" CodeBehind="admin_add_product.aspx.cs"
    Inherits="Cafe_Managament.Admin.admin_add_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
       
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #fff5eb, #fce6ca);
            color: #4b3c2a;
        }

        h2, h3 {
            color: #6f4e37;
        }

        .page-header h2 {
            font-size: 28px;
            margin-bottom: 5px;
        }

        .page-header p {
            font-size: 16px;
            color: #8b6f55;
        }



        .form-card {
            background: rgba(255, 255, 255, 0.7);
            backdrop-filter: blur(8px);
            padding: 35px 40px;
            border-radius: 18px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
            max-width: 550px;
            margin: 40px auto;
            border: 1px solid rgba(255, 255, 255, 0.3);
        }

            .form-card h3 {
                text-align: center;
                margin-bottom: 25px;
                font-size: 26px;
                color: #6f4e37;
            }

            .form-card input[type="text"],
            .form-card input[type="number"],
            .form-card textarea,
            .form-card select {
                width: 100%;
                padding: 12px 15px;
                margin-bottom: 20px;
                border: 1px solid #d4b692;
                border-radius: 12px;
                font-size: 15px;
                background: #fffdf8;
                box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.05);
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

            .form-card input[type="file"] {
                width: 100%;
                background: #fffdf8;
                border: 1px solid #d4b692;
                border-radius: 12px;
                padding: 10px;
                margin-bottom: 20px;
            }

        .btn-primary {
            width: 100%;
            padding: 14px;
            font-size: 17px;
            font-weight: 600;
            color: white;
            background: linear-gradient(90deg, #a0522d, #8b4513);
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

        .form-card input::placeholder,
        .form-card textarea::placeholder {
            color: #a07655;
            font-weight: 500;
        }

        
        .form-card:hover {
            transform: translateY(-4px);
            transition: transform 0.3s ease;
        }

       
        .form-card input::placeholder,
        .form-card textarea::placeholder {
            color: #a07655;
            font-weight: 500;
        }


        
        .list-section {
            max-width: 1000px;
            margin: 40px auto;
        }

            .list-section h3 {
                margin-bottom: 15px;
            }

        .gridview-style {
            width: 100%;
            border-collapse: collapse;
        }

            .gridview-style th, .gridview-style td {
                border: 1px solid #d1bfa7;
                padding: 10px;
                text-align: center;
            }

            .gridview-style th {
                background-color: #deb887;
                color: #fff;
            }

            .gridview-style tr:nth-child(even) {
                background-color: #fff2e6;
            }

            .gridview-style tr:hover {
                background-color: #f3d1b0;
            }

        .table-container {
            overflow-x: auto;
        }

        asp\\:Image {
            border-radius: 6px;
            border: 1px solid #d1bfa7;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="page-content active">
        <div class="page-header">
            <center><h2>🍕 Add Product - Coffee Bites</h2></center>
            
        </div>

        <div class="content-grid">
            <div class="form-section">
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
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" CssClass="btn btn-primary" />
                </div>
            </div>
        </div>

        <div class="list-section" style="margin-top: 30px;">
            <h3>Existing Products</h3>
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
