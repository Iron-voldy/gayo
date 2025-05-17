<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Restaurants - Food Delivery System</title>--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">--%>
<%--    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">--%>
<%--    <link href="${pageContext.request.contextPath}/css/restaurants.css" rel="stylesheet">--%>
<%--</head>--%>
<%--<body>--%>
<%--<jsp:include page="../partials/navbar.jsp" />--%>

<%--<div class="container py-5">--%>
<%--    <div class="d-flex justify-content-between align-items-center mb-4">--%>
<%--        <h1>Restaurants</h1>--%>
<%--        <a href="${pageContext.request.contextPath}/restaurants/add" class="btn btn-primary">--%>
<%--            <i class="fas fa-plus me-2"></i>Add Restaurant--%>
<%--        </a>--%>
<%--    </div>--%>

<%--    <div class="row">--%>
<%--        <c:forEach items="${restaurants}" var="restaurant">--%>
<%--            <div class="col-md-4 mb-4">--%>
<%--                <div class="card restaurant-card h-100">--%>
<%--                    <img src="${restaurant.imageUrl}" class="card-img-top" alt="${restaurant.name}">--%>
<%--                    <div class="card-body">--%>
<%--                        <h5 class="card-title">${restaurant.name}</h5>--%>
<%--                        <p class="card-text text-muted">--%>
<%--                            <i class="fas fa-utensils me-2"></i>${restaurant.cuisineType}--%>
<%--                        </p>--%>
<%--                        <p class="card-text">--%>
<%--                            <i class="fas fa-map-marker-alt me-2"></i>${restaurant.address}--%>
<%--                        </p>--%>
<%--                    </div>--%>
<%--                    <div class="card-footer bg-white">--%>
<%--                        <div class="d-flex justify-content-between">--%>
<%--                            <a href="${pageContext.request.contextPath}/restaurants/view?id=${restaurant.id}"--%>
<%--                               class="btn btn-sm btn-outline-primary">--%>
<%--                                View--%>
<%--                            </a>--%>
<%--                            <a href="${pageContext.request.contextPath}/restaurants/edit?id=${restaurant.id}"--%>
<%--                               class="btn btn-sm btn-outline-secondary">--%>
<%--                                Edit--%>
<%--                            </a>--%>
<%--                            <form method="post" action="${pageContext.request.contextPath}/restaurants/delete"--%>
<%--                                  onsubmit="return confirm('Are you sure you want to delete this restaurant?');">--%>
<%--                                <input type="hidden" name="id" value="${restaurant.id}">--%>
<%--                                <button type="submit" class="btn btn-sm btn-outline-danger">--%>
<%--                                    Delete--%>
<%--                                </button>--%>
<%--                            </form>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </c:forEach>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<jsp:include page="../partials/footer.jsp" />--%>

<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>--%>
<%--<script src="${pageContext.request.contextPath}/js/restaurants.js"></script>--%>
<%--</body>--%>
<%--</html>--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<!DOCTYPE html>
<html>
<head>
    <title>Restaurants - FoodExpress</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/restaurants.css" rel="stylesheet">
</head>
<body>
<jsp:include page="../navbar.jsp" />

<main class="container my-5">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h1>Our Restaurants</h1>
        <a href="${pageContext.request.contextPath}/c2/add.jsp" class="btn btn-primary">
            <i class="fas fa-plus me-2"></i>Add Restaurant
        </a>
    </div>

    <div class="row">
<%--        @elvariable id="restaurants" type="java.util.List"--%>
        <c:forEach items="${restaurants}" var="restaurant">
            <div class="col-md-4 mb-4">
                <jsp:include page="/c2/restaurant-card.jsp">
                    <jsp:param name="id" value="${restaurant.id}" />
                    <jsp:param name="name" value="${restaurant.name}" />
                    <jsp:param name="cuisineType" value="${restaurant.cuisineType}" />
                    <jsp:param name="imageUrl" value="${restaurant.imageUrl}" />
                    <jsp:param name="rating" value="${restaurant.rating}" />
                </jsp:include>
            </div>
        </c:forEach>
    </div>
</main>

<jsp:include page="../footer.jsp" />

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/js/restaurants.js"></script>
</body>
</html>