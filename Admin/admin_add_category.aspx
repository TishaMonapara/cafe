<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master"
    AutoEventWireup="true" CodeBehind="admin_add_product.aspx.cs"
    Inherits="Cafe_Managament.Admin.admin_add_product" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
       
           
            <div class="page-content active">
                <div class="page-header">
                    <h2>🏷️ Add   Category</h2>
                    <p>Manage delicious food categories for The Flavour House ✨</p>
                </div>
                <div class="content-grid">
                    <div class="form-section">
                        <div class="form-card">
                            <h3>Add New Category</h3>
                            <form id="categoryForm">
                                <div class="form-group">
                                    <label for="categoryName">CategoryName</label>
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </div>
                              
                                <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Submit" OnClick="Button1_Click" style="height: 29px" />
                            </form>
                        </div>
                    </div>
                  
                    </div>
                </div>
            </div>
        </main>
    </div>
</asp:Content>
