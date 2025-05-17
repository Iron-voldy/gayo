<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>${restaurant.name} - Food Delivery System</title>--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">--%>
<%--    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">--%>
<%--    <link href="${pageContext.request.contextPath}/css/restaurants.css" rel="stylesheet">--%>
<%--</head>--%>
<%--<body>--%>
<%--<jsp:include page="../partials/navbar.jsp" />--%>

<%--<div class="container py-5">--%>
<%--    <div class="row">--%>
<%--        <div class="col-lg-8 mx-auto">--%>
<%--            <div class="card shadow">--%>
<%--                <div class="card-header bg-white">--%>
<%--                    <div class="d-flex justify-content-between align-items-center">--%>
<%--                        <h4 class="mb-0">${restaurant.name}</h4>--%>
<%--                        <a href="${pageContext.request.contextPath}/restaurants/" class="btn btn-sm btn-outline-secondary">--%>
<%--                            Back to List--%>
<%--                        </a>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="card-body">--%>
<%--                    <div class="text-center mb-4">--%>
<%--                        <img src="${restaurant.imageUrl}" alt="${restaurant.name}" class="img-fluid rounded" style="max-height: 300px;">--%>
<%--                    </div>--%>

<%--                    <div class="row mb-4">--%>
<%--                        <div class="col-md-6">--%>
<%--                            <h5><i class="fas fa-info-circle me-2"></i>Details</h5>--%>
<%--                            <ul class="list-group list-group-flush">--%>
<%--                                <li class="list-group-item">--%>
<%--                                    <strong>Cuisine:</strong> ${restaurant.cuisineType}--%>
<%--                                </li>--%>
<%--                                <li class="list-group-item">--%>
<%--                                    <strong>Address:</strong> ${restaurant.address}--%>
<%--                                </li>--%>
<%--                                <li class="list-group-item">--%>
<%--                                    <strong>Opening Hours:</strong> ${restaurant.openingHours}--%>
<%--                                </li>--%>
<%--                            </ul>--%>
<%--                        </div>--%>
<%--                        <div class="col-md-6">--%>
<%--                            <h5><i class="fas fa-phone-alt me-2"></i>Contact</h5>--%>
<%--                            <ul class="list-group list-group-flush">--%>
<%--                                <li class="list-group-item">--%>
<%--                                    <strong>Phone:</strong> ${restaurant.phone}--%>
<%--                                </li>--%>
<%--                                <li class="list-group-item">--%>
<%--                                    <strong>Email:</strong> ${restaurant.email}--%>
<%--                                </li>--%>
<%--                            </ul>--%>
<%--                        </div>--%>
<%--                    </div>--%>

<%--                    <h5><i class="fas fa-align-left me-2"></i>Description</h5>--%>
<%--                    <p class="card-text">${restaurant.description}</p>--%>
<%--                </div>--%>
<%--                <div class="card-footer bg-white">--%>
<%--                    <div class="d-flex justify-content-end">--%>
<%--                        <a href="${pageContext.request.contextPath}/restaurants/edit?id=${restaurant.id}"--%>
<%--                           class="btn btn-primary me-2">--%>
<%--                            Edit Restaurant--%>
<%--                        </a>--%>
<%--                        <form method="post" action="${pageContext.request.contextPath}/restaurants/delete"--%>
<%--                              onsubmit="return confirm('Are you sure you want to delete this restaurant?');">--%>
<%--                            <input type="hidden" name="id" value="${restaurant.id}">--%>
<%--                            <button type="submit" class="btn btn-danger">--%>
<%--                                Delete Restaurant--%>
<%--                            </button>--%>
<%--                        </form>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<jsp:include page="../partials/footer.jsp" />--%>

<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>--%>
<%--</body>--%>
<%--</html>--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<!DOCTYPE html>
<html>
<head>
    <title>${restaurant.name} - FoodExpress</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/restaurants.css" rel="stylesheet">
</head>
<body>
<jsp:include page="../navbar.jsp" />

<main class="container my-5">
    <div class="row">
        <div class="col-md-8">
            <div class="card mb-4">
<%--                <img src="${restaurant.imageUrl}" class="card-img-top" alt="${restaurant.name}">--%>
                    <img src="${pageContext.request.contextPath}/images/restaurant.png" height="100" class="card-img-top" alt="${restaurant.name}">
<%--                <img src="${pageContext.request.contextPath}/images/restaurant.png" class="card-img-top" alt="${restaurant.name}">--%>
                <div class="card-body">
                    <div class="d-flex justify-content-between align-items-start mb-3">
                        <h1 class="card-title mb-0">${restaurant.name}</h1>
                        <div class="rating-stars">
                            <c:forEach begin="1" end="5" var="i">
                                <i class="fas fa-star${i <= restaurant.rating ? '' : '-half-alt'}"></i>
                            </c:forEach>
                            <span class="ms-2">${restaurant.rating}</span>
                        </div>
                    </div>

                    <div class="d-flex align-items-center mb-3">
                            <span class="badge bg-primary me-2">
                                <i class="fas fa-utensils me-1"></i> ${restaurant.cuisineType}
                            </span>
                        <span class="text-muted">
                                <i class="fas fa-clock me-1"></i> ${restaurant.openingHours}
                            </span>
                    </div>

                    <p class="card-text">${restaurant.description}</p>

                    <div class="restaurant-info mt-4">
                        <h4><i class="fas fa-info-circle me-2"></i>Restaurant Information</h4>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">
                                <i class="fas fa-map-marker-alt me-2"></i> ${restaurant.address}
                            </li>
                            <li class="list-group-item">
                                <i class="fas fa-phone me-2"></i> ${restaurant.phone}
                            </li>
                            <li class="list-group-item">
                                <i class="fas fa-envelope me-2"></i> ${restaurant.email}
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card mb-4">
                <div class="card-header bg-primary text-white">
                    <h5 class="mb-0">Quick Actions</h5>
                </div>
                <div class="card-body">
                    <div class="d-grid gap-2">
                        <a href="${pageContext.request.contextPath}/restaurants/edit ,id=${restaurant.id}"
                           class="btn btn-outline-primary">
                            <i class="fas fa-edit me-2"></i> Edit Restaurant
                        </a>
                        <form action="${pageContext.request.contextPath}/restaurants/delete" method="post" class="d-grid">
                            <input type="hidden" name="id" value="${restaurant.id}">
                            <button type="submit" class="btn btn-outline-danger">
                                <i class="fas fa-trash me-2"></i> Delete Restaurant
                            </button>
                        </form>
                        <a href="${pageContext.request.contextPath}/c2/list.jsp"
                           class="btn btn-outline-secondary">
                            <i class="fas fa-arrow-left me-2"></i> Back to List
                        </a>
                    </div>
                </div>
            </div>

            <div class="card">
                <div class="card-header bg-primary text-white">
                    <h5 class="mb-0">Restaurant Stats</h5>
                </div>
                <div class="card-body">
                    <div class="restaurant-stats">
                        <div class="stat-item mb-3">
                            <h6><i class="fas fa-star me-2"></i>Rating</h6>
                            <div class="progress">
                                <div class="progress-bar bg-warning"
                                     style="width: ${restaurant.rating * 20}%">
                                    ${restaurant.rating}/5
                                </div>
                            </div>
                        </div>
                        <div class="stat-item">
                            <h6><i class="fas fa-clock me-2"></i>Open Now</h6>
                            <p class="text-success">
                                <i class="fas fa-check-circle me-2"></i>
                                Yes (${restaurant.openingHours})
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

<jsp:include page="../footer.jsp" />

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>