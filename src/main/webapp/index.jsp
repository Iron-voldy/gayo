<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>FoodExpress - Delicious Food Delivered</title>--%>
<%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">--%>
<%--    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">--%>
<%--    <link href="${pageContext.request.contextPath}/css/home.css" rel="stylesheet">--%>
<%--</head>--%>
<%--<body>--%>
<%--<jsp:include page="/navbar.jsp" />--%>

<%--<!-- Hero Section -->--%>
<%--<section class="hero-section">--%>
<%--    <div class="container">--%>
<%--        <div class="row align-items-center">--%>
<%--            <div class="col-lg-6">--%>
<%--                <h1 class="display-4 fw-bold mb-4">Delicious food delivered to your doorstep</h1>--%>
<%--                <p class="lead mb-4">Order from your favorite restaurants with just a few clicks</p>--%>
<%--                <div class="search-box">--%>
<%--                    <form action="${pageContext.request.contextPath}/restaurants" method="get">--%>
<%--                        <div class="input-group">--%>
<%--                            <label>--%>
<%--                                <input type="text" class="form-control" placeholder="Enter your address..." name="location">--%>
<%--                            </label>--%>
<%--                            <button class="btn btn-primary" type="submit">--%>
<%--                                <i class="fas fa-search me-2"></i> Find Food--%>
<%--                            </button>--%>
<%--                        </div>--%>
<%--                    </form>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-lg-6">--%>
<%--                <img src="${pageContext.request.contextPath}/images/hero-delivery.jpg" alt="Food Delivery" class="img-fluid">--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</section>--%>

<%--<!-- How It Works -->--%>
<%--<section class="how-it-works py-5 bg-light">--%>
<%--    <div class="container">--%>
<%--        <h2 class="text-center mb-5">How It Works</h2>--%>
<%--        <div class="row text-center">--%>
<%--            <div class="col-md-4 mb-4">--%>
<%--                <div class="step-card p-4">--%>
<%--                    <div class="step-icon mb-3">--%>
<%--                        <i class="fas fa-map-marker-alt fa-3x text-primary"></i>--%>
<%--                    </div>--%>
<%--                    <h4>1. Choose Location</h4>--%>
<%--                    <p>Enter your address to find restaurants near you</p>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-md-4 mb-4">--%>
<%--                <div class="step-card p-4">--%>
<%--                    <div class="step-icon mb-3">--%>
<%--                        <i class="fas fa-utensils fa-3x text-primary"></i>--%>
<%--                    </div>--%>
<%--                    <h4>2. Order Food</h4>--%>
<%--                    <p>Browse menus and add items to your cart</p>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-md-4 mb-4">--%>
<%--                <div class="step-card p-4">--%>
<%--                    <div class="step-icon mb-3">--%>
<%--                        <i class="fas fa-truck fa-3x text-primary"></i>--%>
<%--                    </div>--%>
<%--                    <h4>3. Delivery</h4>--%>
<%--                    <p>Get your food delivered fast and fresh</p>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</section>--%>

<%--<!-- Featured Restaurants -->--%>
<%--<section class="featured-restaurants py-5">--%>
<%--    <div class="container">--%>
<%--        <div class="d-flex justify-content-between align-items-center mb-4">--%>
<%--            <h2>Featured Restaurants</h2>--%>
<%--            <a href="${pageContext.request.contextPath}/restaurants" class="btn btn-outline-primary">View All</a>--%>
<%--        </div>--%>
<%--        <div class="row">--%>
<%--            <c:forEach items="${featuredRestaurants}" var="restaurant">--%>
<%--                <div class="col-md-3 mb-4">--%>
<%--                    <div class="card restaurant-card h-100">--%>
<%--                        <img src="${restaurant.imageUrl}" class="card-img-top" alt="${restaurant.name}">--%>
<%--                        <div class="card-body">--%>
<%--                            <h5 class="card-title">${restaurant.name}</h5>--%>
<%--                            <p class="card-text text-muted">${restaurant.cuisine}</p>--%>
<%--                            <div class="d-flex justify-content-between align-items-center">--%>
<%--                                    <span class="badge bg-warning text-dark">--%>
<%--                                        <i class="fas fa-star"></i> ${restaurant.rating}--%>
<%--                                    </span>--%>
<%--                                <span class="text-muted">${restaurant.deliveryTime}</span>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="card-footer bg-white">--%>
<%--                            <a href="${pageContext.request.contextPath}/restaurants/${restaurant.id}" class="btn btn-sm btn-primary w-100">View Menu</a>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </c:forEach>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</section>--%>

<%--<!-- Popular Categories -->--%>
<%--<section class="popular-categories py-5 bg-light">--%>
<%--    <div class="container">--%>
<%--        <h2 class="text-center mb-5">Popular Categories</h2>--%>
<%--        <div class="row">--%>
<%--            <c:forEach items="${popularCategories}" var="category">--%>
<%--                <div class="col-6 col-md-3 mb-4">--%>
<%--                    <a href="${pageContext.request.contextPath}/restaurants?category=${category}" class="category-card">--%>
<%--                        <div class="card text-center h-100">--%>
<%--                            <div class="card-body">--%>
<%--                                <div class="category-icon mb-3">--%>
<%--                                    <i class="fas fa-${category == 'Pizza' ? 'pizza-slice' :--%>
<%--                                                          category == 'Burger' ? 'hamburger' :--%>
<%--                                                          category == 'Sushi' ? 'fish' :--%>
<%--                                                          category == 'Pasta' ? 'utensils' : 'leaf'} fa-3x"></i>--%>
<%--                                </div>--%>
<%--                                <h5 class="card-title">${category}</h5>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </a>--%>
<%--                </div>--%>
<%--            </c:forEach>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</section>--%>

<%--<!-- App Download CTA -->--%>
<%--<section class="app-download py-5" style="background-color: #f8f9fa;">--%>
<%--    <div class="container">--%>
<%--        <div class="row align-items-center">--%>
<%--            <div class="col-lg-6 mb-4 mb-lg-0">--%>
<%--                <h2 class="mb-4">Get the FoodExpress App</h2>--%>
<%--                <p class="lead mb-4">Download our app for faster ordering and exclusive offers</p>--%>
<%--                <div class="d-flex flex-wrap">--%>
<%--                    <a href="#" class="btn btn-dark me-3 mb-2">--%>
<%--                        <i class="fab fa-apple me-2"></i> App Store--%>
<%--                    </a>--%>
<%--                    <a href="#" class="btn btn-dark mb-2">--%>
<%--                        <i class="fab fa-google-play me-2"></i> Google Play--%>
<%--                    </a>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-lg-6 text-center">--%>
<%--                <img src="${pageContext.request.contextPath}/images/app-screenshot.jpg" alt="App Screenshot" class="img-fluid" style="max-height: 400px;">--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</section>--%>

<%--<jsp:include page="/footer.jsp" />--%>

<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>--%>
<%--<script src="${pageContext.request.contextPath}/js/home.js"></script>--%>
<%--</body>--%>
<%--</html>--%>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FoodExpress - Quick & Delicious Food Delivery</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/home.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</head>
<body>
<!-- Navbar -->
<jsp:include page="/navbar.jsp" />
<%--<nav class="navbar navbar-expand-lg navbar-light bg-white sticky-top shadow-sm">--%>
<%--    <div class="container">--%>
<%--        <a class="navbar-brand d-flex align-items-center" href="${pageContext.request.contextPath}/">--%>
<%--            <i class="fas fa-utensils text-primary me-2"></i>--%>
<%--            <span class="fw-bold">FoodExpress</span>--%>
<%--        </a>--%>
<%--        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">--%>
<%--            <span class="navbar-toggler-icon"></span>--%>
<%--        </button>--%>
<%--        <div class="collapse navbar-collapse" id="navbarNav">--%>
<%--            <ul class="navbar-nav me-auto">--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link active" href="${pageContext.request.contextPath}/"><i class="fas fa-home me-1"></i> Home</a>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link" href="${pageContext.request.contextPath}/restaurants"><i class="fas fa-store me-1"></i> Restaurants</a>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link" href="#"><i class="fas fa-percentage me-1"></i> Deals</a>--%>
<%--                </li>--%>
<%--                <li class="nav-item">--%>
<%--                    <a class="nav-link" href="#"><i class="fas fa-headset me-1"></i> Contact</a>--%>
<%--                </li>--%>
<%--            </ul>--%>
<%--            <ul class="navbar-nav ms-auto">--%>
<%--                <c:choose>--%>
<%--                    <c:when test="${not empty user}">--%>
<%--                        <li class="nav-item me-2">--%>
<%--                            <a class="nav-link position-relative" href="${pageContext.request.contextPath}/cart">--%>
<%--                                <i class="fas fa-shopping-cart"></i>--%>
<%--                                <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">--%>
<%--                                    0--%>
<%--                                </span>--%>
<%--                            </a>--%>
<%--                        </li>--%>
<%--                        <li class="nav-item dropdown">--%>
<%--                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"--%>
<%--                               data-bs-toggle="dropdown" aria-expanded="false">--%>
<%--                                <img src="${user.avatarUrl}" alt="User" class="rounded-circle me-1" width="30" height="30">--%>
<%--                                    ${user.username}--%>
<%--                            </a>--%>
<%--                            <ul class="dropdown-menu dropdown-menu-end rounded-3 border-0 shadow-lg" aria-labelledby="userDropdown">--%>
<%--                                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/user/profile">--%>
<%--                                    <i class="fas fa-user me-2 text-primary"></i>Profile</a></li>--%>
<%--                                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/orders">--%>
<%--                                    <i class="fas fa-shopping-bag me-2 text-primary"></i>My Orders</a></li>--%>
<%--                                <li><hr class="dropdown-divider"></li>--%>
<%--                                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/user/logout">--%>
<%--                                    <i class="fas fa-sign-out-alt me-2 text-primary"></i>Logout</a></li>--%>
<%--                            </ul>--%>
<%--                        </li>--%>
<%--                    </c:when>--%>
<%--                    <c:otherwise>--%>
<%--                        <li class="nav-item">--%>
<%--                            <a class="btn btn-outline-primary me-2" href="${pageContext.request.contextPath}/user/login">--%>
<%--                                <i class="fas fa-sign-in-alt me-1"></i>Login--%>
<%--                            </a>--%>
<%--                        </li>--%>
<%--                        <li class="nav-item">--%>
<%--                            <a class="btn btn-primary" href="${pageContext.request.contextPath}/user/register">--%>
<%--                                <i class="fas fa-user-plus me-1"></i>Register--%>
<%--                            </a>--%>
<%--                        </li>--%>
<%--                    </c:otherwise>--%>
<%--                </c:choose>--%>
<%--            </ul>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</nav>--%>

<!-- Hero Section -->
<section class="hero-section">
    <div class="container">
        <div class="hero-content rounded-4 p-5">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <h1 class="display-4 fw-bold text-black mb-3 animate__animated animate__fadeInUp">Delicious food delivered to your doorstep</h1>
                    <p class="lead text-white mb-4 animate__animated animate__fadeInUp animate__delay-1s">Your favorite meals from top local restaurants, delivered in minutes</p>
                    <div class="search-box animate__animated animate__fadeInUp animate__delay-2s">
                        <form action="${pageContext.request.contextPath}/restaurants" method="get">
                            <div class="input-group">
                                <span class="input-group-text bg-white border-0"><i class="fas fa-map-marker-alt text-primary"></i></span>
                                <input type="text" class="form-control border-0 py-3" placeholder="Enter your delivery address..." name="location">
                                <button class="btn btn-primary px-4 fw-medium" type="submit">
                                    Find Food
                                </button>
                            </div>
                        </form>
                    </div>
                    <div class="mt-4 d-flex flex-wrap animate__animated animate__fadeInUp animate__delay-3s">
                        <span class="badge bg-light text-dark me-2 mb-2 px-3 py-2"><i class="fas fa-check-circle text-success me-1"></i> No minimum order</span>
                        <span class="badge bg-light text-dark me-2 mb-2 px-3 py-2"><i class="fas fa-check-circle text-success me-1"></i> Free delivery on first order</span>
                        <span class="badge bg-light text-dark mb-2 px-3 py-2"><i class="fas fa-check-circle text-success me-1"></i> 24/7 customer support</span>
                    </div>
                </div>
                <div class="col-lg-6 text-center d-none d-lg-block">
                    <img src="${pageContext.request.contextPath}/images/delivery.png" alt="Food Delivery" height="80" class="img-fluid hero-image animate__animated animate__fadeInRight">
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Popular Categories -->
<section class="py-5">
    <div class="container">
        <div class="section-header text-center mb-5">
            <h6 class="text-primary text-uppercase fw-bold">Top Categories</h6>
            <h2 class="fw-bold">What are you craving?</h2>
        </div>
        <div class="categories-slider">
            <div class="row">
                <c:forEach items="${popularCategories}" var="category">
                    <div class="col-4 col-md-2 mb-4">
                        <a href="${pageContext.request.contextPath}/restaurants?category=${category}" class="category-card">
                            <div class="card text-center h-100 border-0 shadow-hover">
                                <div class="card-body p-3">
                                    <div class="category-icon mb-3">
                                        <i class="fas fa-${category == 'Pizza' ? 'pizza-slice' :
                                                              category == 'Burger' ? 'hamburger' :
                                                              category == 'Sushi' ? 'fish' :
                                                              category == 'Pasta' ? 'utensils' : 'leaf'} fa-2x"></i>
                                    </div>
                                    <h6 class="card-title fw-medium mb-0">${category}</h6>
                                </div>
                            </div>
                        </a>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</section>

<!-- How It Works -->
<section class="how-it-works py-5 bg-light">
    <div class="container">
        <div class="section-header text-center mb-5">
            <h6 class="text-primary text-uppercase fw-bold">Easy Process</h6>
            <h2 class="fw-bold">How It Works</h2>
            <p class="text-muted">Get your favorite food in 3 simple steps</p>
        </div>
        <div class="row text-center g-4">
            <div class="col-md-4">
                <div class="step-card p-4 h-100 bg-white rounded-4 shadow-sm">
                    <div class="step-number">1</div>
                    <div class="step-icon mb-4">
                        <i class="fas fa-map-marker-alt fa-3x text-primary"></i>
                    </div>
                    <h4 class="fw-bold mb-3">Set Your Location</h4>
                    <p class="text-muted mb-0">Enter your address to see which restaurants deliver to you</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="step-card p-4 h-100 bg-white rounded-4 shadow-sm">
                    <div class="step-number">2</div>
                    <div class="step-icon mb-4">
                        <i class="fas fa-utensils fa-3x text-primary"></i>
                    </div>
                    <h4 class="fw-bold mb-3">Choose Your Meal</h4>
                    <p class="text-muted mb-0">Browse menus and select your favorite dishes</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="step-card p-4 h-100 bg-white rounded-4 shadow-sm">
                    <div class="step-number">3</div>
                    <div class="step-icon mb-4">
                        <i class="fas fa-truck fa-3x text-primary"></i>
                    </div>
                    <h4 class="fw-bold mb-3">Fast Delivery</h4>
                    <p class="text-muted mb-0">Your food arrives hot and fresh at your doorstep</p>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Featured Restaurants -->
<section class="featured-restaurants py-5">
    <div class="container">
        <div class="section-header d-flex justify-content-between align-items-center flex-wrap mb-4">
            <div>
                <h6 class="text-primary text-uppercase fw-bold">Top Rated</h6>
                <h2 class="fw-bold mb-0">Featured Restaurants</h2>
            </div>
            <a href="${pageContext.request.contextPath}/c2/list.jsp" class="btn btn-outline-primary rounded-pill">
                View All <i class="fas fa-arrow-right ms-1"></i>
            </a>
        </div>
        <div class="row g-4">
            <c:forEach items="${featuredRestaurants}" var="restaurant">
                <div class="col-md-6 col-lg-3">
                    <div class="card restaurant-card h-100 border-0 shadow-sm rounded-4 overflow-hidden">
                        <div class="restaurant-img-container">
<%--                            <img src="${pageContext.request.contextPath}/images/avatars/man.png" alt="User" height="50" class="rounded-circle">--%>
<%--                            <img src="${restaurant.imageUrl}" class="card-img-top" alt="${restaurant.name}">--%>
                                <img src="${pageContext.request.contextPath}/images/restaurants/pizza.jpg" height="200" class="card-img-top" alt="${restaurant.name}">
                            <span class="delivery-time">${restaurant.deliveryTime}</span>
                        </div>
                        <div class="card-body p-4">
                            <div class="d-flex justify-content-between align-items-center mb-2">
                                <h5 class="card-title fw-bold mb-0">${restaurant.name}</h5>
                                <span class="rating">
                                    <i class="fas fa-star"></i> ${restaurant.rating}
                                </span>
                            </div>
                            <p class="card-text text-muted mb-3">
                                <i class="fas fa-utensils me-1 small"></i> ${restaurant.cuisine}
                            </p>
                            <a href="${pageContext.request.contextPath}/restaurants/${restaurant.id}" class="btn btn-sm btn-primary w-100 rounded-pill">
                                View Menu <i class="fas fa-arrow-right ms-1"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</section>

<!-- Special Offers -->
<section class="special-offers py-5 bg-light">
    <div class="container">
        <div class="row g-4">
            <div class="col-md-6">
                <div class="offer-card rounded-4 offer-card-primary h-100">
                    <div class="p-4 p-lg-5">
                        <span class="badge bg-white text-primary mb-2">Limited Time</span>
                        <h3 class="fw-bold">Free Delivery on Your First Order</h3>
                        <p class="mb-4">Use code: <span class="fw-bold">FIRSTORDER</span></p>
                        <a href="${pageContext.request.contextPath}/restaurants" class="btn btn-light">Order Now</a>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="offer-card rounded-4 offer-card-secondary h-100">
                    <div class="p-4 p-lg-5">
                        <span class="badge bg-white text-success mb-2">Weekend Special</span>
                        <h3 class="fw-bold">20% Off on Orders Over $30</h3>
                        <p class="mb-4">Use code: <span class="fw-bold">WEEKEND20</span></p>
                        <a href="${pageContext.request.contextPath}/restaurants" class="btn btn-light">Order Now</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- App Download CTA -->
<section class="app-download py-5">
    <div class="container">
        <div class="app-download-container rounded-4 p-5">
            <div class="row align-items-center">
                <div class="col-lg-7 mb-4 mb-lg-0">
                    <h6 class="text-white text-uppercase fw-bold">Mobile App</h6>
                    <h2 class="text-white fw-bold mb-4">Get the FoodExpress App</h2>
                    <p class="text-white mb-4">Download our app for faster ordering, real-time delivery tracking, and exclusive mobile-only offers.</p>
                    <div class="d-flex flex-wrap gap-3">
                        <a href="#" class="store-button d-flex align-items-center">
                            <div class="store-icon me-3">
                                <i class="fab fa-apple fa-2x"></i>
                            </div>
                            <div>
                                <span class="d-block small">Download on the</span>
                                <strong>App Store</strong>
                            </div>
                        </a>
                        <a href="#" class="store-button d-flex align-items-center">
                            <div class="store-icon me-3">
                                <i class="fab fa-google-play fa-2x"></i>
                            </div>
                            <div>
                                <span class="d-block small">Get it on</span>
                                <strong>Google Play</strong>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-5 text-center">
                    <img src="${pageContext.request.contextPath}/app-screenshot.jpg" alt="App Screenshot" class="img-fluid app-screenshot">
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Testimonials -->
<section class="testimonials py-5 bg-light">
    <div class="container">
        <div class="section-header text-center mb-5">
            <h6 class="text-primary text-uppercase fw-bold">Testimonials</h6>
            <h2 class="fw-bold">What Our Customers Say</h2>
        </div>
        <div class="row g-4 testimonial-slider">
            <div class="col-md-4">
                <div class="testimonial-card p-4 bg-white rounded-4 shadow-sm h-100">
                    <div class="d-flex align-items-center mb-3">
                        <div class="avatar me-3">
<%--                            <img src="/api/placeholder/60/60" alt="User" class="rounded-circle">--%>
                        <%--    <img src="${pageContext.request.contextPath}/images/logo1.png" alt="Logo" height="150" class="me-2">--%>
                            <img src="${pageContext.request.contextPath}/images/avatars/man.png" alt="User" height="50" class="rounded-circle">
                        </div>
                        <div>
                            <h5 class="mb-0 fw-bold">Hansana Gayathmika</h5>
                            <div class="text-warning">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                        </div>
                    </div>
                    <p class="testimonial-text">"FoodExpress has been a game-changer! The delivery is always on time and the food arrives hot. Their customer service is exceptional too."</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="testimonial-card p-4 bg-white rounded-4 shadow-sm h-100">
                    <div class="d-flex align-items-center mb-3">
                        <div class="avatar me-3">
<%--                            <img src="/api/placeholder/60/60" alt="User" class="rounded-circle">--%>
                            <img src="${pageContext.request.contextPath}/images/avatars/man1.png" alt="User" height="50" class="rounded-circle">
                        </div>
                        <div>
                            <h5 class="mb-0 fw-bold">Induwara Edirisinghe</h5>
                            <div class="text-warning">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star-half-alt"></i>
                            </div>
                        </div>
                    </div>
                    <p class="testimonial-text">"I love the variety of restaurants available on FoodExpress. I've discovered so many new favorites since I started using it!"</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="testimonial-card p-4 bg-white rounded-4 shadow-sm h-100">
                    <div class="d-flex align-items-center mb-3">
                        <div class="avatar me-3">
<%--                            <img src="/api/placeholder/60/60" alt="User" class="rounded-circle">--%>
                            <img src="${pageContext.request.contextPath}/images/avatars/man3.png" alt="User" height="50" class="rounded-circle">
                        </div>
                        <div>
                            <h5 class="mb-0 fw-bold">Sujana Dinuwara</h5>
                            <div class="text-warning">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                        </div>
                    </div>
                    <p class="testimonial-text">"The app is so easy to use and the delivery tracking feature is fantastic. I always know exactly when my food will arrive!"</p>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Newsletter -->
<section class="newsletter py-5">
    <div class="container">
        <div class="newsletter-container text-center p-5 rounded-4">
            <h2 class="text-white fw-bold mb-3">Get Exclusive Offers</h2>
            <p class="text-white mb-4">Subscribe to our newsletter and receive special deals and discounts</p>
            <div class="row justify-content-center">
                <div class="col-md-8 col-lg-6">
                    <form class="newsletter-form">
                        <div class="input-group">
                            <input type="email" class="form-control form-control-lg" placeholder="Your email address">
                            <button class="btn btn-light" type="submit">Subscribe</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

<%--<!-- Footer -->--%>
<jsp:include page="/footer.jsp" />
<%--<footer class="footer pt-5">--%>
<%--    <div class="container">--%>
<%--        <div class="row g-4">--%>
<%--            <div class="col-lg-3 col-md-6">--%>
<%--                <div class="footer-widget">--%>
<%--                    <a class="d-flex align-items-center mb-4" href="${pageContext.request.contextPath}/">--%>
<%--                        <i class="fas fa-utensils text-primary me-2"></i>--%>
<%--                        <span class="fw-bold fs-4">FoodExpress</span>--%>
<%--                    </a>--%>
<%--                    <p class="mb-4">Delivering happiness to your doorstep with the best food from your favorite restaurants.</p>--%>
<%--                    <div class="social-links">--%>
<%--                        <a href="#" class="social-link"><i class="fab fa-facebook-f"></i></a>--%>
<%--                        <a href="#" class="social-link"><i class="fab fa-twitter"></i></a>--%>
<%--                        <a href="#" class="social-link"><i class="fab fa-instagram"></i></a>--%>
<%--                        <a href="#" class="social-link"><i class="fab fa-linkedin-in"></i></a>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-lg-3 col-md-6">--%>
<%--                <div class="footer-widget">--%>
<%--                    <h5 class="footer-title">Quick Links</h5>--%>
<%--                    <ul class="footer-links">--%>
<%--                        <li><a href="${pageContext.request.contextPath}/"><i class="fas fa-chevron-right me-2"></i> Home</a></li>--%>
<%--                        <li><a href="${pageContext.request.contextPath}/restaurants"><i class="fas fa-chevron-right me-2"></i> Restaurants</a></li>--%>
<%--                        <li><a href="#"><i class="fas fa-chevron-right me-2"></i> Deals</a></li>--%>
<%--                        <li><a href="#"><i class="fas fa-chevron-right me-2"></i> About Us</a></li>--%>
<%--                    </ul>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-lg-3 col-md-6">--%>
<%--                <div class="footer-widget">--%>
<%--                    <h5 class="footer-title">Help & Support</h5>--%>
<%--                    <ul class="footer-links">--%>
<%--                        <li><a href="#"><i class="fas fa-chevron-right me-2"></i> FAQs</a></li>--%>
<%--                        <li><a href="#"><i class="fas fa-chevron-right me-2"></i> Contact Us</a></li>--%>
<%--                        <li><a href="#"><i class="fas fa-chevron-right me-2"></i> Privacy Policy</a></li>--%>
<%--                        <li><a href="#"><i class="fas fa-chevron-right me-2"></i> Terms of Service</a></li>--%>
<%--                    </ul>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-lg-3 col-md-6">--%>
<%--                <div class="footer-widget">--%>
<%--                    <h5 class="footer-title">Contact Info</h5>--%>
<%--                    <ul class="contact-info">--%>
<%--                        <li><i class="fas fa-map-marker-alt me-3"></i> 123 Main Street, New York, NY 10001</li>--%>
<%--                        <li><i class="fas fa-phone-alt me-3"></i> (555) 123-4567</li>--%>
<%--                        <li><i class="fas fa-envelope me-3"></i> support@foodexpress.com</li>--%>
<%--                        <li><i class="fas fa-clock me-3"></i> 24/7 Customer Support</li>--%>
<%--                    </ul>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <hr class="mt-4 mb-3">--%>
<%--        <div class="row py-3 align-items-center">--%>
<%--            <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">--%>
<%--                <p class="mb-0">&copy; 2023 FoodExpress. All rights reserved.</p>--%>
<%--            </div>--%>
<%--            <div class="col-md-6 text-center text-md-end">--%>
<%--                <div class="payment-methods">--%>
<%--                    <i class="fab fa-cc-visa me-2"></i>--%>
<%--                    <i class="fab fa-cc-mastercard me-2"></i>--%>
<%--                    <i class="fab fa-cc-amex me-2"></i>--%>
<%--                    <i class="fab fa-cc-paypal me-2"></i>--%>
<%--                    <i class="fab fa-apple-pay"></i>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</footer>--%>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/js/home.js"></script>
</body>
</html>