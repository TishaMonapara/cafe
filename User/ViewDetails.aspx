<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewDetails.aspx.cs" Inherits="Cafe_Managament.User.ViewDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
        .details-container {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 30px;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .details-card {
            background: #ffffff;
            padding: 25px;
            width: 450px;
            border-radius: 12px;
            box-shadow: 0 5px 25px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

            .details-card img {
                border-radius: 10px;
                margin-bottom: 15px;
            }

            .details-card h3 {
                color: #333;
                margin: 10px 0;
                font-size: 24px;
            }

            .details-card p {
                margin: 5px 0;
                color: #555;
                font-size: 15px;
            }

            .details-card strong {
                color: #222;
            }

        .btn-add-cart {
            margin-top: 15px;
            padding: 10px 20px;
            background: #28a745;
            border: none;
            border-radius: 6px;
            color: white;
            cursor: pointer;
            transition: 0.3s;
        }

            .btn-add-cart:hover {
                background: #218838;
            }

        .btn-back {
            margin: 15px auto 0 auto; 
            padding: 8px 18px;
            background: #ff5e62;
            border: none;
            border-radius: 6px;
            color: white;
            cursor: pointer;
            transition: 0.3s;
            display: block; 
            width: max-content; 
        }


            .btn-back:hover {
                background: #ff3035;
            }

        .details-wrapper {
            display: flex;
            justify-content: center;
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <div class="details-wrapper">
        <center>
            <h2>Product Details</h2>

            <div class="details-container">
                <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                    <ItemTemplate>
                        <div class="details-card">
                            <asp:Image ID="Image1" runat="server" Height="250px" Width="350px" ImageUrl='<%# Eval("Image") %>' />
                            <h3><%# Eval("Name") %></h3>
                            <p><strong>Category:</strong> <%# Eval("Category") %></p>
                            <p><strong>Price:</strong> ₹<%# Eval("Price") %></p>
                            <p><strong>Description:</strong> <%# Eval("Description") %></p>

                           
                            <br />
                            <asp:Button ID="btnBack" runat="server" Text="Back to Menu" CssClass="btn-back" PostBackUrl="display.aspx" />
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </div>
        </center>

    </div><br /><br /><br />
</asp:Content>
