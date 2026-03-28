<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Banking Management System</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" 
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"/>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" 
          rel="stylesheet">

    <!-- Custom CSS -->
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: #f4f6f9;
        }

        /* Navbar Styling */
        .navbar {
            box-shadow: 0px 4px 10px rgba(0,0,0,0.1);
        }
        .nav-link {
            font-weight: 500;
            padding-right: 15px;
        }
        .nav-link:hover {
            background: rgba(255,255,255,0.2);
            border-radius: 6px;
        }

        /* Hero Section */
        .hero {
            background: linear-gradient(135deg, #0d6efd, #6610f2);
            color: white;
            padding: 70px 20px;
            text-align: center;
            border-radius: 15px;
            margin-top: 25px;
        }
        .hero h1 {
            font-size: 40px;
            font-weight: 600;
        }
        .hero p {
            font-size: 18px;
            margin-top: 10px;
            opacity: 0.9;
        }

        /* Cards */
        .feature-card {
            transition: 0.3s;
            border-radius: 15px !important;
            border: none;
            box-shadow: 0 4px 14px rgba(0,0,0,0.08);
        }
        .feature-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 8px 18px rgba(0,0,0,0.12);
        }
        .feature-icon {
            font-size: 40px;
            color: #0d6efd;
        }

        footer {
            background: #e9ecef;
            padding: 15px;
            text-align: center;
            margin-top: 30px;
            font-weight: 500;
        }
    </style>

</head>
<body>

<!-- ========== NAVBAR ========== -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand fw-bold" href="/">🏦 Banking System</a>

    <button class="navbar-toggler" type="button" 
            data-bs-toggle="collapse" data-bs-target="#navbarNav">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ms-auto">

        <li class="nav-item"><a class="nav-link" href="add">Add Customer</a></li>
        <li class="nav-item"><a class="nav-link" href="customerDetails">All Customers</a></li>
        <li class="nav-item"><a class="nav-link" href="accounts/add">Open Account</a></li>
        <li class="nav-item"><a class="nav-link" href="accounts/show">All Accounts</a></li>

        <li class="nav-item"><a class="nav-link" href="deposit">Deposit</a></li>
        <li class="nav-item"><a class="nav-link" href="withdraw">Withdraw</a></li>
        <li class="nav-item"><a class="nav-link" href="transfer">Transfer</a></li>
        <li class="nav-item"><a class="nav-link" href="transactions">Transactions</a></li>

      </ul>
    </div>
  </div>
</nav>

<!-- ========== PAGE CONTENT ========== -->
<div class="container">

    <!-- Hero Section -->
    <div class="hero">
        <h1>Welcome to Banking Management System</h1>
        <p>Manage customers, accounts, and transactions with a modern dashboard experience.</p>
    </div>

    <!-- Features Section -->
    <div class="row mt-5">

        <!-- Card 1 -->
        <div class="col-md-3 col-sm-6 mt-4">
            <div class="card feature-card p-3 text-center">
                <div class="feature-icon">👤</div>
                <h5 class="mt-3">Add Customer</h5>
                <a href="add" class="btn btn-primary mt-3">Open</a>
            </div>
        </div>

        <!-- Card 2 -->
        <div class="col-md-3 col-sm-6 mt-4">
            <div class="card feature-card p-3 text-center">
                <div class="feature-icon">📄</div>
                <h5 class="mt-3">View Customers</h5>
                <a href="customerDetails" class="btn btn-primary mt-3">View</a>
            </div>
        </div>

        <!-- Card 3 -->
        <div class="col-md-3 col-sm-6 mt-4">
            <div class="card feature-card p-3 text-center">
                <div class="feature-icon">🏦</div>
                <h5 class="mt-3">Open Account</h5>
                <a href="accounts/add" class="btn btn-primary mt-3">Open</a>
            </div>
        </div>

        <!-- Card 4 -->
        <div class="col-md-3 col-sm-6 mt-4">
            <div class="card feature-card p-3 text-center">
                <div class="feature-icon">📊</div>
                <h5 class="mt-3">All Accounts</h5>
                <a href="accounts/show" class="btn btn-primary mt-3">View</a>
            </div>
        </div>

        <!-- More Cards... -->
        <div class="col-md-3 col-sm-6 mt-4">
            <div class="card feature-card p-3 text-center">
                <div class="feature-icon">💰</div>
                <h5 class="mt-3">Deposit Money</h5>
                <a href="deposit" class="btn btn-primary mt-3">Deposit</a>
            </div>
        </div>

        <div class="col-md-3 col-sm-6 mt-4">
            <div class="card feature-card p-3 text-center">
                <div class="feature-icon">💸</div>
                <h5 class="mt-3">Withdraw Money</h5>
                <a href="withdraw" class="btn btn-primary mt-3">Withdraw</a>
            </div>
        </div>

        <div class="col-md-3 col-sm-6 mt-4">
            <div class="card feature-card p-3 text-center">
                <div class="feature-icon">🔁</div>
                <h5 class="mt-3">Transfer</h5>
                <a href="transfer" class="btn btn-primary mt-3">Transfer</a>
            </div>
        </div>

        <div class="col-md-3 col-sm-6 mt-4">
            <div class="card feature-card p-3 text-center">
                <div class="feature-icon">📜</div>
                <h5 class="mt-3">Transactions</h5>
                <a href="transactions" class="btn btn-primary mt-3">View</a>
            </div>
        </div>

    </div>
</div>

<!-- ========== FOOTER ========== -->
<footer>
    © 2025 Banking Management System | Developed by Ashish
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
