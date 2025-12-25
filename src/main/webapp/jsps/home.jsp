<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.InetAddress" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Madhan | DevOpsecops Excellence Portal v2.00</title>

<link rel="icon" href="images/kkfunda.jpg">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">

<style>
    body {
        font-family: 'Poppins', sans-serif;
        background: linear-gradient(120deg, #eef2f3, #d9e2ec);
        min-height: 100vh;
    }

    /* HERO */
    .hero {
        background: linear-gradient(135deg, #0d6efd, #00c6ff);
        color: #fff;
        padding: 60px 15px;
        text-align: center;
    }
    .hero h1 {
        font-weight: 700;
        letter-spacing: 1px;
    }
    .hero p {
        opacity: 0.95;
        font-size: 1.1rem;
    }

    /* CARDS */
    .glass-card {
        background: rgba(255,255,255,0.9);
        backdrop-filter: blur(10px);
        border-radius: 15px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.12);
        transition: transform 0.3s ease, box-shadow 0.3s ease;
        margin-bottom: 30px;
    }
    .glass-card:hover {
        transform: translateY(-6px);
        box-shadow: 0 15px 30px rgba(0,0,0,0.18);
    }

    .section-title {
        font-weight: 600;
        color: #0d6efd;
        margin-bottom: 10px;
    }

    /* FOOTER */
    footer {
        background: #1f2933;
        color: #cbd5e1;
        padding: 20px;
        text-align: center;
        margin-top: 50px;
    }
    footer a {
        color: #38bdf8;
        text-decoration: none;
        font-weight: 500;
    }
</style>
</head>

<body>

<!-- HERO -->
<section class="hero">
    <h1>🚀 MADHAN DevOps Excellence Portal v1 </h1>
    <p> .Training 
        .Advanced DevOps Concepts including CI/CD 
        . Real-Time project include 20 microservices</p>
</section>

<div class="container my-5">

    <!-- Server Info -->
    <div class="glass-card p-4">
        <h4 class="section-title">🌐 Server Information</h4>
        <hr>
        <%
            InetAddress inet = InetAddress.getLocalHost();
        %>
        <p><strong>Host Name:</strong> <span class="text-muted"><%= inet.getHostName() %></span></p>
        <p><strong>IP Address:</strong> <span class="text-muted"><%= inet.getHostAddress() %></span></p>
    </div>

    <!-- Client Info -->
    <div class="glass-card p-4">
        <h4 class="section-title">💻 Client Information</h4>
        <hr>
        <p><strong>Client IP:</strong> <span class="text-muted"><%= request.getRemoteAddr() %></span></p>
        <p><strong>Client Host:</strong> <span class="text-muted"><%= request.getRemoteHost() %></span></p>
    </div>

    <!-- Contact -->
    <div class="glass-card p-4 text-center">
        <img src="images/kkfunda.jpg" width="120" class="rounded-circle shadow mb-3" alt="Madhan Logo">
        <h4 class="fw-bold">MADHAN <small class="text-muted">(MKC FUNDA)</small></h4>
        <p class="mb-1"><strong>📍 Location:</strong> Bangalore – 533404</p>
        <p class="mb-1"><strong>📞 Phone:</strong> +91 8880042206 </p>
        <p><strong>📧 Email:</strong> <a href="mailto:raj@gmail.com">raj@gmail.com</a></p>
        <a href="mailto:raj@gmail.com" class="btn btn-primary px-4 mt-2">Contact Now</a>
    </div>

    <!-- Services -->
    <div class="glass-card p-4 text-center">
        <h4 class="section-title">⚙️ Our Services</h4>
        <p class="mt-3">
            <a href="services/employee/getEmployeeDetails" class="btn btn-success btn-lg">
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
