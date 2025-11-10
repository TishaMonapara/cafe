<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true"
    CodeBehind="AdminContact.aspx.cs"
    Inherits="Cafe_Managament.Admin.AdminContact" %>

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

        /* Overlay for grid */
        .overlay {
            max-width: 1100px;
            margin: 40px auto;
            background: rgba(255, 248, 240, 0.85);
            border-radius: 20px;
            padding: 30px 25px;
            box-shadow: 0 10px 40px rgba(0,0,0,0.3);
        }

        h2 {
            text-align: center;
            font-size: 28px;
            font-weight: 700;
            color: #4b2e05;
            margin-bottom: 25px;
            font-family: 'Playfair Display', serif;
            text-shadow: 1px 1px 2px rgba(0,0,0,0.1);
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

        /* Responsive */
        @media(max-width: 600px) {
            .overlay {
                padding: 15px;
            }
            .gridview-style th, .gridview-style td {
                font-size: 0.85rem;
                padding: 8px;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="overlay">
        <h2>📩 Contact Messages</h2>

        <asp:GridView ID="gvContacts" runat="server" AutoGenerateColumns="False" CssClass="gridview-style"
            AllowPaging="true" PageSize="10" OnPageIndexChanging="gvContacts_PageIndexChanging">
            
            <Columns>
                <asp:TemplateField HeaderText="Name">
                    <ItemTemplate>
                        <asp:Label ID="lblName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Email">
                    <ItemTemplate>
                        <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Phone">
                    <ItemTemplate>
                        <asp:Label ID="lblPhone" runat="server" Text='<%# Eval("Phone") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Message">
                    <ItemTemplate>
                        <asp:Label ID="lblMessage" runat="server" Text='<%# Eval("Message") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Date">
                    <ItemTemplate>
                        <asp:Label ID="lblDate" runat="server" Text='<%# Eval("CreatedDate","{0:dd-MMM-yyyy HH:mm}") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

        <asp:Label ID="lblNoData" runat="server" ForeColor="Red" Visible="False"></asp:Label>
    </div>
</asp:Content>
