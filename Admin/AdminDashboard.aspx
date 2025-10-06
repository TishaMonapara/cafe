<%@ Page Title="Admin Dashboard" Language="C#" MasterPageFile="Admin.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="Cafe_Managament.Admin.AdminDashboard" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .dashboard-cards {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
        }

        .card {
            border-radius: 12px;
            box-shadow: 0px 4px 10px rgba(0,0,0,0.1);
            transition: 0.3s;
        }

        .card:hover {
            transform: translateY(-5px);
        }

        .card-body h5 {
            font-weight: bold;
        }

        .card-body p {
            font-size: 0.95rem;
        }

        .card .btn {
            font-weight: bold;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="mb-4">Welcome to Admin Dashboard 👋</h2>

    <div class="dashboard-cards">
        <!-- Manage Menu -->
        <div class="card text-white bg-primary">
            <div class="card-body">
                <h5 class="card-title"><i class="bi bi-card-list"></i> Menu Items</h5>
                <p class="card-text">Add, update, or remove food & drink items.</p>
                <a href="ViewMenu.aspx" class="btn btn-light">Manage Menu</a>
            </div>
        </div>

        <!-- Orders -->
        <div class="card text-white bg-success">
            <div class="card-body">
                <h5 class="card-title"><i class="bi bi-basket-fill"></i> Orders</h5>
                <p class="card-text">View and track all customer orders.</p>
                <a href="Orders.aspx" class="btn btn-light">View Orders</a>
            </div>
        </div>

        <!-- Reports -->
        <div class="card text-white bg-warning">
            <div class="card-body">
                <h5 class="card-title"><i class="bi bi-bar-chart-fill"></i> Reports</h5>
                <p class="card-text">Generate sales and performance reports.</p>
                <a href="Reports.aspx" class="btn btn-dark">View Reports</a>
            </div>
        </div>

        <!-- Users -->
        <div class="card text-white bg-danger">
            <div class="card-body">
                <h5 class="card-title"><i class="bi bi-people-fill"></i> Users</h5>
                <p class="card-text">Manage staff and customer accounts.</p>
                <a href="ManageUsers.aspx" class="btn btn-light">Manage Users</a>
            </div>
        </div>
    </div>
</asp:Content>
