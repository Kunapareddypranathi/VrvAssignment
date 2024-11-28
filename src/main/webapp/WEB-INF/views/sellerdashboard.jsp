<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Seller Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #fdf6f0;
            color: #4a4a4a;
        }
        .header {
            background-color: #fff5ee;
            color: #d6808d;
            padding: 20px;
            text-align: center;
            border-bottom: 1px solid #f5cac3;
        }
        .header h1 {
            font-size: 2rem;
        }
        .container {
            padding: 20px;
        }
        .section {
            margin-bottom: 30px;
        }
        .section h2 {
            color: #d6808d;
            margin-bottom: 20px;
        }
        .table {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }
        .btn-primary {
            background-color: #d6808d;
            border: none;
        }
        .btn-primary:hover {
            background-color: #b45b6d;
        }
    </style>
</head>
<body>
    <%@ include file="header2.jsp" %> <!-- Including header for consistency -->

    <div class="header">
        <h1>Welcome to Your Seller Dashboard</h1>
        <p>Manage your inventory, orders, and track sales performance.</p>
    </div>

    <div class="container">
        <!-- Inventory Section -->
        <div class="section">
            <h2>Inventory Management</h2>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Product Name</th>
                        <th>Stock Quantity</th>
                        <th>Price</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Dynamic content using JSTL -->
                    <c:forEach var="product" items="${products}">
                        <tr>
                            <td>${product.name}</td>
                            <td>${product.stockQuantity}</td>
                            <td>$${product.price}</td>
                            <td>
                                <a href="updateProduct.jsp?productId=${product.id}" class="btn btn-primary btn-sm">Update</a>
                                <a href="deleteProduct.jsp?productId=${product.id}" class="btn btn-danger btn-sm">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <a href="addProduct.jsp" class="btn btn-primary">Add New Product</a>
        </div>

        <!-- Orders Section -->
        <div class="section">
            <h2>Recent Orders</h2>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Order ID</th>
                        <th>Buyer Name</th>
                        <th>Total Amount</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Dynamic content using JSTL -->
                    <c:forEach var="order" items="${orders}">
                        <tr>
                            <td>${order.id}</td>
                            <td>${order.buyerName}</td>
                            <td>$${order.totalAmount}</td>
                            <td>${order.status}</td>
                            <td>
                                <a href="viewOrder.jsp?orderId=${order.id}" class="btn btn-primary btn-sm">View</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

        <!-- Sales Performance Section -->
        <div class="section">
            <h2>Sales Performance</h2>
            <p>Total Revenue: <strong>$${totalRevenue}</strong></p>
            <p>Total Products Sold: <strong>${totalProductsSold}</strong></p>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
