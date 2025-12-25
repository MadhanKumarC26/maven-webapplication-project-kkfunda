<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.InetAddress" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Madhan | DevOps Training Portal</title>

<link rel="icon" href="images/kkfunda.jpg">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
    body {
        background: linear-gradient(to right, #f8f9fa, #e9ecef);
        font-family: "Segoe UI", Arial, sans-serif;
    }
    header {
        background: linear-gradient(90deg, #0d6efd, #00c6ff);
        color: white;
        padding: 30px 10px;
        text-align: center;
    }
    header h1 {
        font-weight: bold;
    }
    .card-custom {
        border-radius: 12px;
        box-shadow: 0 4px 10px rgba(0,0,0,0.1);
        margin-bottom: 25px;
    }
    footer {
        background: #212529;
        color: #ccc;
        padding: 15px;
        text-align: center;
        margin-top: 40px;
    }
    footer a {
        color: #0dcaf0;
        text-decoration: none;
    }
</style>
</head>

<body>

<header>
    <h1>🚀 Welcome to MADHAN DevOps Training Portal</h1>
    <p class="lead mb-0">Training | DevOps Concepts | Real-Time Consulting</p>
</header>

<div class="container mt-4">

    <!-- Server Info -->
    <div class="card card-custom p-4">
        <h4>🌐 Server Information</h4>
        <hr>
        <%
            InetAddress inet = InetAddress.getLocalHost();
        %>
        <p><b>Server Host Name:</b> <%= inet.getHostName() %></p>
        <p><b>Server IP Address:</b> <%= inet.getHostAddress() %></p>
    </div>

    <!-- Client Info -->
    <div class="card card-custom p-4">
        <h4>💻 Client Information</h4>
        <hr>
        <p><b>Client IP Address:</b> <%= request.getRemoteAddr() %></p>
        <p><b>Client Host Name:</b> <%= request.getRemoteHost() %></p>
    </div>

    <!-- Contact Info -->
    <div class="card card-custom p-4 text-center">
        <img src="images/kkfunda.jpg" width="120" class="rounded-circle shadow mb-3" alt="Madhan Logo">
        <h4>MADHAN <small class="text-muted">(KK FUNDA)</small></h4>
        <p class="mb-1"><b>Address:</b> Bangalore – 533404</p>
        <p class="mb-1"><b>Phone:</b> +91 9676831734</p>
        <p><b>Email:</b> <a href="mailto:raj@gmail.com">raj@gmail.com</a></p>
        <a href="mailto:raj@gmail.com" class="btn btn-primary mt-2">📧 Contact MADHAN</a>
    </div>

    <!-- Services -->
    <div class="card card-custom p-4 text-center">
        <h4>⚙️ Our Services</h4>
        <p class="mt-3">
            <a href="services/employee/getEmployeeDetails" class="btn btn-success">
                🔍 Get Employee Details
            </a>
        </p>
    </div>

</div>

<footer>
    <p class="mb-1">© 2024 MADHAN – DevOps Training & Consulting</p>
    <small>Powered by <a href="https://google.com/" target="_blank">KK FUNDA</a></small>
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
