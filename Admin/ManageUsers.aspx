<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="ManageUsers.aspx.cs" Inherits="Cafe_Managament.Admin.ManageUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com"></script>

    <style>
        
        .grid-container {
            margin-top: 40px;
            max-width: 90%;
            background: rgba(255, 250, 243, 0.9); 
            border-radius: 16px;
            box-shadow: 0 8px 25px rgba(75, 46, 46, 0.5); 
            padding: 20px;
        }

        
        .grid-container th {
            background: #4b2e2e; 
            color: #f5e6d3 !important;
            font-weight: bold;
            text-align: center;
            padding: 12px;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

       
        .grid-container td {
            padding: 12px;
            text-align: center;
            color: #3d2b1f;
            font-weight: 500;
        }

        
        .grid-container tr:nth-child(even) td {
            background: #f5e6d3;
        }

        .grid-container tr:nth-child(odd) td {
            background: #fffaf3; 
        }

       
        .grid-container tr:hover td {
            background: #e6d2c3; 
            transition: 0.3s ease-in-out;
        }

        
        .grid-container table {
            border-collapse: collapse;
            overflow: hidden;
            border-radius: 12px;
            width: 100%;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <div class="grid-container">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"
                AllowPaging="true" PageSize="10"
                CssClass="min-w-full"
                OnPageIndexChanging="GridView1_PageIndexChanging"
                OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:TemplateField HeaderText="UserID">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("UserID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="FullName">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("FullName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Username">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Username") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Email">
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Phone">
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Phone") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Gender">
                        <ItemTemplate>
                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("Gender") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </center>
</asp:Content>
