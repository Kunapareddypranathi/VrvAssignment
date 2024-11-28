<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Cart - Wiff Serenity</title>
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
            max-width: 1200px;
            margin: 20px auto;
            padding: 20px;
        }
        .cart-table {
            width: 100%;
            background-color: #fff5ee;
            border-collapse: collapse;
            border: 1px solid #f5cac3;
        }
        .cart-table th, .cart-table td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #f5cac3;
        }
        .cart-table th {
            background-color: #d6808d;
            color: #fff;
        }
        .cart-table img {
            width: 80px;
            height: 80px;
            object-fit: cover;
            border-radius: 5px;
        }
        .cart-summary {
            margin-top: 20px;
            text-align: right;
        }
        .cart-summary .total {
            font-size: 18px;
            font-weight: bold;
            color: #4a4a4a;
        }
        .cart-summary button {
            background-color: #d6808d;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }
        .cart-summary button:hover {
            background-color: #bf5c73;
        }
    </style>
</head>
<body>
    <%@ include file="header.jsp" %>
    <div class="header">
        <h1>Your Cart</h1>
        <p>Review and manage the items in your shopping cart</p>
    </div>

    <div class="container">
        <!-- Cart Table -->
        <table class="cart-table">
            <thead>
                <tr>
                    <th>Image</th>
                    <th>Product Name</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Total</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="item" items="${cartItems}">
                    <tr>
                        <td><img src="${item.imageUrl}" alt="${item.name}"></td>
                        <td>${item.name}</td>
                        <td>$${item.price}</td>
                        <td>${item.quantity}</td>
                        <td>$${item.price * item.quantity}</td>
                        <td>
                            <button onclick="updateQuantity(${item.id})">Update</button>
                            <button onclick="removeFromCart(${item.id})">Remove</button>
                        </td>
                    </tr>
                </c:forEach>

                <!-- Placeholder Items -->
                <tr>
                    <td><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8bJFi-RqwTNZYoo9rgdY1pCTyBnvwMFmf1HDCF_ZP4p3VSEfVpVFtYQ&s" alt="Lavender Candle"></td>
                    <td>Lavender Scented Candle</td>
                    <td>$19.99</td>
                    <td>1</td>
                    <td>$19.99</td>
                    <td>
                        <button onclick="updateQuantity(1)">Update</button>
                        <button onclick="removeFromCart(1)">Remove</button>
                    </td>
                </tr>
                <tr>
                    <td><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXX8irFCEpTKs4xjx9RoaZg3ZMzT_VgzDCWeXhQs_7QgqtMxFBykdsfL1NKDpxKxCOq64&s" alt="Vanilla Candle"></td>
                    <td>Vanilla Bean Candle</td>
                    <td>$15.50</td>
                    <td>2</td>
                    <td>$31.00</td>
                    <td>
                        <button onclick="updateQuantity(2)">Update</button>
                        <button onclick="removeFromCart(2)">Remove</button>
                    </td>
                </tr>
            </tbody>
        </table>

        <!-- Cart Summary -->
        <div class="cart-summary">
            <p class="total">Grand Total: $${cartTotal}</p>
            <button onclick="checkout()">Proceed to Checkout</button>
        </div>
    </div>

    <script>
        function updateQuantity(id) {
            alert("Update quantity for item " + id);
            // Add logic to handle quantity update via AJAX or form submission
        }

        function removeFromCart(id) {
            alert("Item " + id + " removed from cart!");
            // Add logic to handle item removal via AJAX or form submission
        }

        function checkout() {
            alert("Proceeding to checkout!");
            // Add logic to navigate to the checkout page
        }
    </script>
</body>
</html>
