<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true"
    CodeBehind="AdminContact.aspx.cs"
    Inherits="Cafe_Managament.Admin.AdminContact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .grid-container {
            max-width: 1000px;
            margin: 30px auto;
            background: #fff;
            padding: 20px;
            border-radius: 12px;
            box-shadow: 0px 0px 15px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            font-size: 28px;
            font-weight: bold;
            color: #4b2e2e;
            margin-bottom: 20px;
        }
        .gridview-style {
            width: 100%;
            border-collapse: collapse;
        }
        .gridview-style th {
            background-color: #4b2e2e;
            color: white;
            padding: 10px;
            text-align: left;
        }
        .gridview-style td {
            padding: 8px;
            border-bottom: 1px solid #ddd;
        }
        .gridview-style tr:hover {
            background-color: #f5f5f5;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="grid-container">
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
