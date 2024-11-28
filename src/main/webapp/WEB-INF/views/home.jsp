<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Wiff Serenity - Home</title>
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
        .features-section {
            padding: 40px 20px;
            background-color: #fff5ee; /* Matches navbar */
            text-align: center;
        }
        .features-section h2 {
            font-size: 2rem;
            color: #d6808d; /* Accent heading */
            margin-bottom: 20px;
        }
        .features-section .feature {
            margin-bottom: 20px;
            font-size: 1.1rem;
            color: #4a4a4a;
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
		.container {
		            display: flex;
		            flex-wrap: wrap;
		            gap: 20px;
		            justify-content: center;
		            padding: 20px;
		        }
		        .card {
		            width: 300px;
		            height: 400px;
		            border: 1px solid #f5cac3; /* Soft border */
		            border-radius: 10px;
		            overflow: hidden;
		            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
		            text-align: center;
		            padding: 10px;
		            background-color: #fff5ee; /* Matches theme */
		        }
		        .card img {
		            width: 100%;
		            height: 150px;
		            object-fit: cover;
		        }
		        .card h4 {
		            margin: 10px 0;
		            font-size: 18px;
		            color: #d6808d; /* Accent heading color */
		        }
		        .card .price {
		            font-size: 16px;
		            color: #6f6f6f; /* Supporting text color */
		            font-weight: bold;
		        }
    </style>
</head>
<body>
    <%@ include file="header.jsp" %> <!-- Including header for consistency -->
	<div class="hero-section">
	       <h1>Welcome to Wiff Serenity</h1>
	       <p>Your haven for delightful and serene shopping.</p>
	   </div>
	<div class="container">
	       <!-- Candle Cards -->
	       <div class="card">
	           <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8bJFi-RqwTNZYoo9rgdY1pCTyBnvwMFmf1HDCF_ZP4p3VSEfVpVFtYQ&s" alt="Candle 1">
	           <h4>Lavender Scented Candle</h4>
	           <p class="price">$19.99</p>
	       </div>
	       
	       <div class="card">
	           <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXX8irFCEpTKs4xjx9RoaZg3ZMzT_VgzDCWeXhQs_7QgqtMxFBykdsfL1NKDpxKxCOq64&s" alt="Candle 2">
	           <h4>Vanilla Bean Candle</h4>
	           <p class="price">$15.50</p>
	       </div>

	       <div class="card">
	           <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFOH40wLjYdALx4X1JVRgqiOpRkQoS345T4dvdVRpYIs7gsK6jIKoDyV43Bw&s" alt="Candle 3">
	           <h4>Rose Scented Candle</h4>
	           <p class="price">$18.00</p>
	       </div>

	       <div class="card">
	           <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJqfeTnWnnDWhrTED0g3gde6JwE9s4pFU6AEtBjPCofIOyHDl5Y4D2RtSM&s" alt="Candle 4">
	           <h4>Citrus Zest Candle</h4>
	           <p class="price">$12.99</p>
	       </div>

	       <!-- Additional Placeholder Candle Cards -->
	       <div class="card">
	           <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7eH1CnmoYLpGZXe7KMeRAaISb-97a-fyG2_xIx506sies2AtSLBtJ4Q&s" alt="Placeholder Candle 1">
	           <h4>Fresh Citrus Candle</h4>
	           <p class="price">$22.00</p>
	       </div>

	       <div class="card">
	           <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShA8iDLCn0ZvOpJH7eHt7wM4zfVxmOQw6LznNqcad0KLuwf4Np0l4kbG1LDTLIU0iuipY&s" alt="Placeholder Candle 2">
	           <h4>Wooden Essence Candle</h4>
	           <p class="price">$25.00</p>
	       </div>

	       <div class="card">
	           <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5iQ1tOg3XuDYxYPSjn6X4BtkQKlW_4ZYiagoMpueVBLj_tCHs6RiwEw&s" alt="Placeholder Candle 3">
	           <h4>Ocean Breeze Candle</h4>
	           <p class="price">$20.99</p>
	       </div>
	   </div>
	
    
    <div class="features-section">
        <h2>Why Choose Wiff Serenity?</h2>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="feature">
                        <i class="bi bi-bag-check" style="font-size: 2rem; color: #d6808d;"></i>
                        <p>Handpicked Products for Quality Assurance</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="feature">
                        <i class="bi bi-stars" style="font-size: 2rem; color: #d6808d;"></i>
                        <p>Exceptional Customer Satisfaction Ratings</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="feature">
                        <i class="bi bi-truck" style="font-size: 2rem; color: #d6808d;"></i>
                        <p>Fast and Reliable Shipping Services</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="footer">
        <p>&copy; 2024 Wiff Serenity. All rights reserved. | <a href="contact.jsp">Contact Us</a></p>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
