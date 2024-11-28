<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Profile - Wiff Serenity</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        body {
            background: url('https://cdn.pixabay.com/photo/2016/10/27/22/40/background-1779728_1280.jpg') no-repeat center center fixed;
            background-size: cover;
            color: #333;
        }
        .profile-container {
            background-color: #e6e6fa;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            margin-top: 50px;
        }
        .profile-header {
            font-size: 2rem;
            font-weight: bold;
            text-align: center;
            margin-bottom: 20px;
            color: #4b0082;
        }
        .profile-info {
            font-size: 1.2rem;
        }
        .profile-info p {
            margin-bottom: 10px;
        }
        .btn-custom {
            background-color: #4b0082;
            color: #fff;
        }
        .btn-custom:hover {
            background-color: #6a0dad;
            color: #fff;
        }
    </style>
</head>
<body>
    <!-- Include header -->
    <jsp:include page="header.jsp" />

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="profile-container">
                    <div class="profile-header">
                        Your Profile
                    </div>
                    <div class="profile-info">
                        <p><strong>Full Name:</strong> <c:out value="${profile['name']}" /></p>
                        <p><strong>Email:</strong> <c:out value="${profile['email']}" /></p>
                        <p><strong>User ID:</strong> <c:out value="${sessionScope.user_id}" /></p>
                        <p><strong>Issuer:</strong> <c:out value="${profile['iss']}" /></p>
                        <p><strong>Roles:</strong> 
                            <c:forEach var="role" items="${profile['roles']}">
                                <span class="badge bg-primary"><c:out value="${role}" /></span>
                            </c:forEach>
                        </p>
                    </div>
                    <div class="text-center mt-4">
                        <a href="home" class="btn btn-custom">Back to Home</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
