<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Wiff Serenity - Thank You</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #fdf6f0; /* Light cream background */
            color: #4a4a4a; /* Neutral text color */
        }
        .navbar {
            background-color: #fff5ee; /* Soft pink-peach shade */
            border-bottom: 1px solid #f5cac3;
        }
        .hero-section {
            background: linear-gradient(135deg, #fff5ee, #fdf6f0); /* Subtle gradient */
            padding: 80px 20px;
            text-align: center;
        }
        .hero-section h1 {
            font-size: 2.8rem;
            color: #d6808d; /* Primary heading color */
            margin-bottom: 20px;
        }
        .hero-section p {
            font-size: 1.2rem;
            color: #6f6f6f; /* Supporting text color */
            margin-bottom: 30px;
        }
        .hero-section .btn {
            background-color: #d6808d;
            color: #fff;
            font-size: 1rem;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            text-decoration: none;
        }
        .hero-section .btn:hover {
            background-color: #bf5c6e;
        }
        .footer {
            background-color: #f5cac3;
            color: #fff;
            text-align: center;
            padding: 10px 20px;
            margin-top: 20px;
        }
        .footer a {
            color: #fff;
            text-decoration: none;
        }
        .footer a:hover {
            color: #ddd;
        }
    </style>
</head>
<body>
    <%@ include file="header.jsp" %> <!-- Including header for consistency -->

    <div class="hero-section">
        <h1>Thank You for Shopping with Us!</h1>
        <p>Your trust in Wiff Serenity means the world to us.</p>
        <a href="login" class="btn">Login Again</a>
    </div>

    <div class="footer">
        <p>&copy; 2024 Wiff Serenity. All rights reserved. | <a href="contact.jsp">Contact Us</a></p>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
