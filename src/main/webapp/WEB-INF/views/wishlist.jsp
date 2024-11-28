<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wishlist - Wiff Serenity</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #fdf6f0; /* Light cream background */
            color: #4a4a4a; /* Neutral text color */
        }
        .header {
            background-color: #fff5ee; /* Soft pink-peach shade */
            color: #d6808d;
            text-align: center;
            padding: 15px 0;
            border-bottom: 1px solid #f5cac3;
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
            border: 1px solid #f5cac3;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            padding: 10px;
            background-color: #fff5ee;
        }
        .card img {
            width: 100%;
            height: 150px;
            object-fit: cover;
            border-bottom: 1px solid #f5cac3;
        }
        .card h4 {
            margin: 10px 0;
            font-size: 18px;
            color: #d6808d;
        }
        .card .price {
            font-size: 16px;
            color: #4a4a4a;
            font-weight: bold;
        }
        .card .actions {
            margin-top: 10px;
        }
        .card button {
            background-color: #d6808d;
            color: #fff;
            border: none;
            padding: 8px 15px;
            border-radius: 5px;
            font-size: 14px;
            cursor: pointer;
        }
        .card button:hover {
            background-color: #bf5c73;
        }
    </style>
</head>
<body>
    <%@ include file="header.jsp" %>
    <div class="header">
        <h1>Your Wishlist</h1>
        <p>Save your favorite candles for future purchases</p>
    </div>

    <div class="container">
        <!-- Wishlist Items -->
        <c:forEach var="item" items="${wishlistItems}">
            <div class="card">
                <img src="${item.imageUrl}" alt="${item.name}">
                <h4>${item.name}</h4>
                <p class="price">$${item.price}</p>
                <div class="actions">
                    <button onclick="addToCart(${item.id})">Add to Cart</button>
                    <button onclick="removeFromWishlist(${item.id})">Remove</button>
                </div>
            </div>
        </c:forEach>

        <!-- Placeholder Cards -->
        <div class="card">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8bJFi-RqwTNZYoo9rgdY1pCTyBnvwMFmf1HDCF_ZP4p3VSEfVpVFtYQ&s" alt="Lavender Candle">
            <h4>Lavender Scented Candle</h4>
            <p class="price">$19.99</p>
            <div class="actions">
                <button>Add to Cart</button>
                <button>Remove</button>
            </div>
        </div>
        <div class="card">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXX8irFCEpTKs4xjx9RoaZg3ZMzT_VgzDCWeXhQs_7QgqtMxFBykdsfL1NKDpxKxCOq64&s" alt="Vanilla Candle">
            <h4>Vanilla Bean Candle</h4>
            <p class="price">$15.50</p>
            <div class="actions">
                <button>Add to Cart</button>
                <button>Remove</button>
            </div>
        </div>
    </div>

    <script>
        function addToCart(id) {
            alert("Item " + id + " added to cart!");
            // Add logic to handle cart addition via AJAX or form submission
        }

        function removeFromWishlist(id) {
            alert("Item " + id + " removed from wishlist!");
            // Add logic to handle removal from wishlist via AJAX or form submission
        }
    </script>
</body>
</html>
