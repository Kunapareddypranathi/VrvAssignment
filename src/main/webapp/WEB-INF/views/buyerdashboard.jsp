<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buyer Dashboard</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #fdf6f0; /* Light cream background */
            color: #4a4a4a; /* Neutral text color */
        }
        .header {
            background-color: #fff5ee; /* Soft pink-peach shade */
            color: #d6808d; /* Accent heading color */
            padding: 20px;
            text-align: center;
            border-bottom: 1px solid #f5cac3;
        }
        .header h1 {
            font-size: 2rem;
        }
        .header p {
            font-size: 1.1rem;
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
            height: 450px;
            border: 1px solid #f5cac3; /* Soft border */
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            padding: 10px;
            background-color: #fff5ee; /* Matches theme */
            display: flex;
            flex-direction: column;
            justify-content: space-between;
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
        .card .actions {
            display: flex;
            justify-content: space-around;
            margin-top: 10px;
        }
        .card button {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 14px;
            cursor: pointer;
            color: white;
            background-color: #d6808d; /* Button background color */
            transition: background-color 0.3s;
        }
        .card button:hover {
            background-color: #b35964; /* Darker shade on hover */
        }
    </style>
</head>
<body>
    <%@ include file="header.jsp" %> <!-- Including header for consistency -->

    <div class="header">
        <h1>Welcome to Your Buyer Dashboard</h1>
        <p>Explore the latest candles available for purchase</p>
    </div>

    <div class="container">
        <!-- Candle Cards -->
        <div class="card">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8bJFi-RqwTNZYoo9rgdY1pCTyBnvwMFmf1HDCF_ZP4p3VSEfVpVFtYQ&s" alt="Candle 1">
            <h4>Lavender Scented Candle</h4>
            <p class="price">$19.99</p>
            <div class="actions">
                <button>Add to Cart</button>
                <button>Add to Wishlist</button>
            </div>
        </div>
        
        <div class="card">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXX8irFCEpTKs4xjx9RoaZg3ZMzT_VgzDCWeXhQs_7QgqtMxFBykdsfL1NKDpxKxCOq64&s" alt="Candle 2">
            <h4>Vanilla Bean Candle</h4>
            <p class="price">$15.50</p>
            <div class="actions">
                <button>Add to Cart</button>
                <button>Add to Wishlist</button>
            </div>
        </div>

        <div class="card">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFOH40wLjYdALx4X1JVRgqiOpRkQoS345T4dvdVRpYIs7gsK6jIKoDyV43Bw&s" alt="Candle 3">
            <h4>Rose Scented Candle</h4>
            <p class="price">$18.00</p>
            <div class="actions">
                <button>Add to Cart</button>
                <button>Add to Wishlist</button>
            </div>
        </div>

        <div class="card">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJqfeTnWnnDWhrTED0g3gde6JwE9s4pFU6AEtBjPCofIOyHDl5Y4D2RtSM&s" alt="Candle 4">
            <h4>Citrus Zest Candle</h4>
            <p class="price">$12.99</p>
            <div class="actions">
                <button>Add to Cart</button>
                <button>Add to Wishlist</button>
            </div>
        </div>

        <!-- Additional Placeholder Candle Cards -->
        <div class="card">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7eH1CnmoYLpGZXe7KMeRAaISb-97a-fyG2_xIx506sies2AtSLBtJ4Q&s" alt="Placeholder Candle 1">
            <h4>Fresh Citrus Candle</h4>
            <p class="price">$22.00</p>
            <div class="actions">
                <button>Add to Cart</button>
                <button>Add to Wishlist</button>
            </div>
        </div>

        <div class="card">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShA8iDLCn0ZvOpJH7eHt7wM4zfVxmOQw6LznNqcad0KLuwf4Np0l4kbG1LDTLIU0iuipY&s" alt="Placeholder Candle 2">
            <h4>Wooden Essence Candle</h4>
            <p class="price">$25.00</p>
            <div class="actions">
                <button>Add to Cart</button>
                <button>Add to Wishlist</button>
            </div>
        </div>

        <div class="card">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5iQ1tOg3XuDYxYPSjn6X4BtkQKlW_4ZYiagoMpueVBLj_tCHs6RiwEw&s" alt="Placeholder Candle 3">
            <h4>Ocean Breeze Candle</h4>
            <p class="price">$20.99</p>
            <div class="actions">
                <button>Add to Cart</button>
                <button>Add to Wishlist</button>
            </div>
        </div>
    </div>

</body>
</html>
