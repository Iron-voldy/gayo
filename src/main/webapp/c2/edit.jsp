<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Restaurant - FoodExpress</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/restaurants.css" rel="stylesheet">
</head>
<body>
<jsp:include page="../navbar.jsp" />

<main class="container my-5">
    <div class="row justify-content-center">
        <div class="col-lg-8">
            <div class="card">
                <div class="card-header bg-primary text-white">
                    <h2 class="mb-0">Edit Restaurant</h2>
                </div>
                <div class="card-body">
                    <form action="${pageContext.request.contextPath}/c2/edit.jsp" method="post">
                        <input type="hidden" name="id" value="${restaurant.id}">

                        <div class="mb-3">
                            <label for="name" class="form-label">Restaurant Name</label>
                            <input type="text" class="form-control" id="name" name="name"
                                   value="${restaurant.name}" required>
                        </div>

                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="cuisineType" class="form-label">Cuisine Type</label>
                                <select class="form-select" id="cuisineType" name="cuisineType" required>
                                    <option value="Italian" ${restaurant.cuisineType == 'Italian' ? 'selected' : ''}>Italian</option>
                                    <option value="Chinese" ${restaurant.cuisineType == 'Chinese' ? 'selected' : ''}>Chinese</option>
                                    <option value="Indian" ${restaurant.cuisineType == 'Indian' ? 'selected' : ''}>Indian</option>
                                    <option value="Japanese" ${restaurant.cuisineType == 'Japanese' ? 'selected' : ''}>Japanese</option>
                                    <option value="American" ${restaurant.cuisineType == 'American' ? 'selected' : ''}>American</option>
                                    <option value="Mexican" ${restaurant.cuisineType == 'Mexican' ? 'selected' : ''}>Mexican</option>
                                    <option value="Thai" ${restaurant.cuisineType == 'Thai' ? 'selected' : ''}>Thai</option>
                                    <option value="Other" ${restaurant.cuisineType == 'Other' ? 'selected' : ''}>Other</option>
                                </select>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="rating" class="form-label">Rating (1-5)</label>
                                <input type="number" class="form-control" id="rating" name="rating"
                                       min="1" max="5" step="0.1" value="${restaurant.rating}" required>
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="description" class="form-label">Description</label>
                            <textarea class="form-control" id="description" name="description"
                                      rows="3" required>${restaurant.description}</textarea>
                        </div>

                        <div class="mb-3">
                            <label for="imageUrl" class="form-label">Image URL</label>
                            <input type="url" class="form-control" id="imageUrl" name="imageUrl"
                                   value="${restaurant.imageUrl}" required>
                            <div class="mt-2">
                                <img src="${restaurant.imageUrl}" id="imagePreview"
                                     class="img-fluid rounded" style="max-height: 200px;">
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="address" class="form-label">Address</label>
                                <input type="text" class="form-control" id="address" name="address"
                                       value="${restaurant.address}" required>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="phone" class="form-label">Phone Number</label>
                                <input type="tel" class="form-control" id="phone" name="phone"
                                       value="${restaurant.phone}" required>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="email" class="form-label">Email</label>
                                <input type="email" class="form-control" id="email" name="email"
                                       value="${restaurant.email}" required>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="openingHours" class="form-label">Opening Hours</label>
                                <input type="text" class="form-control" id="openingHours" name="openingHours"
                                       value="${restaurant.openingHours}" required>
                            </div>
                        </div>

                        <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                            <a href="${pageContext.request.contextPath}/c2/list.jsp" class="btn btn-secondary me-md-2">
                                Cancel
                            </a>
                            <button type="submit" class="btn btn-primary">
                                <i class="fas fa-save me-1"></i> Update Restaurant
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</main>

<jsp:include page="../footer.jsp" />

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/js/restaurant-form.js"></script>
</body>
</html>