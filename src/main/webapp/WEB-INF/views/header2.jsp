<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Wiff Serenity</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #fdf6f0; /* Light cream background for Wiff Serenity */
            color: #4a4a4a; /* Neutral text color */
        }
        .navbar {
            background-color: #fff5ee; /* Soft pink-peach shade */
            border-bottom: 1px solid #f5cac3;
        }
        .navbar-brand {
            font-size: 1.8rem;
            font-weight: bold;
            color: #d6808d; /* Wiff Serenity logo color */
        }
        .navbar-brand:hover {
            color: #b36274; /* Darker logo hover */
        }
        .navbar-nav .nav-link {
            font-size: 1rem;
            color: #6f6f6f; /* Neutral navigation link color */
            margin: 0 10px;
        }
        .navbar-nav .nav-link:hover {
            color: #d6808d; /* Accent hover color */
        }
        .btn-outline-primary {
            color: #d6808d;
            border-color: #d6808d;
        }
        .btn-outline-primary:hover {
            background-color: #d6808d;
            color: #fff;
        }
        .hero-section {
            background: linear-gradient(135deg, #fff5ee, #fdf6f0); /* Subtle gradient */
            padding: 60px 20px;
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
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
            <a class="navbar-brand" href="home">Wiff Serenity</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    
                    <li class="nav-item">
                        <a class="nav-link" href="buyerdashboard">Products</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="categories">Categories</a>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link" href="profile">Profile</a>
                    </li>
                </ul>
                <form class="d-flex">
                    
					<% 
					                    String loggedInUser = (String) session.getAttribute("userEmail");
					                    if (loggedInUser != null) {
					                %>
					                    <a class="btn btn-outline-primary ms-2" href="logout">Logout</a>
					                <% 
					                    } else { 
					                %>
					                    <a class="btn btn-outline-primary ms-2" href="login">Login</a>
					                <% 
					                    } 
					                %>                </form>
            </div>
        </div>
    </nav>

   

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
