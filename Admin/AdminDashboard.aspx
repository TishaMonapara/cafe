<%@ Page Title="Admin Dashboard" Language="C#" MasterPageFile="Admin.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="Cafe_Managament.Admin.AdminDashboard" %>

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

        /* Transparent frosted overlay for content */
        .overlay {
            max-width: 1200px;
            margin: 40px auto;
            background: rgba(255, 248, 240, 0.85); /* creamy white */
            border-radius: 20px;
            padding: 40px;
            box-shadow: 0 10px 40px rgba(0,0,0,0.3);
        }

        h2 {
            color: #4b2e05;
            text-align: center;
            font-weight: 700;
            margin-bottom: 40px;
            font-family: 'Playfair Display', serif;
            text-shadow: 1px 1px 2px rgba(0,0,0,0.2);
        }

        .dashboard-cards {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(270px, 1fr));
            gap: 25px;
        }

        /* Coffee-tone cards */
        .card {
            background: #a9746e; /* warm coffee brown */
            border-radius: 15px;
            color: #fff;
            padding: 25px 20px;
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            min-height: 180px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            box-shadow: 0 6px 20px rgba(0,0,0,0.2);
        }

        /* Hover effect */
        .card:hover {
            transform: translateY(-8px);
            box-shadow: 0 10px 25px rgba(0,0,0,0.35);
            background: #b98c80; /* slightly lighter on hover */
        }

        .card-title {
            font-size: 1.5rem;
            font-weight: 700;
            margin-bottom: 10px;
            font-family: 'Playfair Display', serif;
        }

        .card-text {
            font-size: 1rem;
            margin-bottom: 20px;
        }

        .btn-light {
            font-weight: 600;
            background-color: #fff;
            color: #4b2e05;
            border: none;
            border-radius: 8px;
            padding: 10px 18px;
            transition: 0.3s;
        }

        .btn-light:hover {
            background-color: #d1b38a;
            color: #3b2f2f;
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
        <h2>☕ Welcome to Café Admin Dashboard 👋</h2>

        <div class="dashboard-cards">

            <div class="card">
                <h5 class="card-title"><i class="bi bi-card-list"></i> Menu Items</h5>
                <p class="card-text">Add, update, or remove food & drink items.</p>
                <a href="admin_add_product.aspx" class="btn btn-light">Manage Menu</a>
            </div>

            <div class="card">
                <h5 class="card-title"><i class="bi bi-basket-fill"></i> Orders</h5>
                <p class="card-text">View and track all customer orders.</p>
                <a href="view_orders.aspx" class="btn btn-light">View Orders</a>
            </div>

            <div class="card">
                <h5 class="card-title"><i class="bi bi-people-fill"></i> Users</h5>
                <p class="card-text">Manage staff and customer accounts.</p>
                <a href="ManageUsers.aspx" class="btn btn-light">Manage Users</a>
            </div>

        </div>
    </div>
</asp:Content>
