<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Scented Candle Categories - Wiff Serenity</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        body {
            background-color: #fdf6f0;
            color: #4a4a4a;
        }
        .category-card {
            background-color: #fff5ee;
            border: 1px solid #f5cac3;
            border-radius: 10px;
            padding: 20px;
            text-align: center;
            margin-bottom: 20px;
            transition: transform 0.3s;
        }
        .category-card:hover {
            transform: scale(1.05);
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        }
        .category-card h3 {
            color: #d6808d;
        }
        .category-card p {
            color: #6f6f6f;
        }
    </style>
</head>
<body>
	<%@ include file="header.jsp" %>
    <div class="container mt-5">
        <h1 class="text-center mb-4">Scented Candle Categories</h1>
        <div class="row">
            <div class="col-md-4">
                <div class="category-card">
                    <h3>Floral Scents</h3>
                    <p>Explore candles with calming floral fragrances like lavender, rose, and jasmine.</p>
                    <a href="products?category=Floral Scents" class="btn btn-outline-primary">Shop Now</a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="category-card">
                    <h3>Woody Scents</h3>
                    <p>Discover earthy and warm fragrances like sandalwood and cedar.</p>
                    <a href="products?category=Woody Scents" class="btn btn-outline-primary">Shop Now</a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="category-card">
                    <h3>Fruity Scents</h3>
                    <p>Freshen up with sweet and zesty fragrances like citrus, apple, and berry.</p>
                    <a href="products?category=Fruity Scents" class="btn btn-outline-primary">Shop Now</a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="category-card">
                    <h3>Seasonal Scents</h3>
                    <p>Celebrate seasons with scents like pumpkin spice, cinnamon, and pine.</p>
                    <a href="products?category=Seasonal Scents" class="btn btn-outline-primary">Shop Now</a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="category-card">
                    <h3>Fresh Scents</h3>
                    <p>Keep it light with refreshing fragrances like linen, ocean breeze, and mint.</p>
                    <a href="products?category=Fresh Scents" class="btn btn-outline-primary">Shop Now</a>
                </div>
            </div>
            <div class="col-md-4">
                <div class="category-card">
                    <h3>Exotic Scents</h3>
                    <p>Immerse yourself in unique blends like amber, vanilla, and patchouli.</p>
                    <a href="products?category=Exotic Scents" class="btn btn-outline-primary">Shop Now</a>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
