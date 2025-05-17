<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<!DOCTYPE html>
<html>
<head>
    <title>Profile - Food Delivery System</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/profile.css" rel="stylesheet">
</head>
<body>
<jsp:include page="../navbar.jsp" />

<div class="container py-5">
    <div class="row">
        <div class="col-lg-4">
            <div class="card mb-4 shadow-sm">
                <div class="card-body text-center">
<%--                    <img src="${pageContext.request.contextPath}/images/avatars/man.png" alt="User" height="50" class="rounded-circle">--%>
<%--                    <img src="${user.avatarUrl}" alt="avatar"--%>
                        <img src="${pageContext.request.contextPath}/images/avatars/avatar2.png" alt="avatar"
                         class="rounded-circle img-fluid" style="width: 100px;">
                    <h5 class="my-3">${user.fullName}</h5>
                    <p class="text-muted mb-1">@${user.username}</p>
                    <p class="text-muted mb-4">${user.address}</p>
                    <div class="d-flex justify-content-center mb-2">
                        <a href="${pageContext.request.contextPath}/auth/editProfile.jsp"
                           class="btn btn-primary me-2">Edit Profile</a>
                        <a href="#" class="btn btn-outline-primary">Message</a>
                    </div>
                </div>
            </div>

            <div class="card shadow-sm mb-4">
                <div class="card-body">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <h5 class="mb-0">Account Details</h5>
                    </div>
                    <hr>
                    <div class="mb-3">
                        <p class="mb-1"><i class="fas fa-envelope me-2"></i> Email</p>
                        <p class="text-muted">${user.email}</p>
                    </div>
                    <div class="mb-3">
                        <p class="mb-1"><i class="fas fa-phone me-2"></i> Phone</p>
                        <p class="text-muted">${user.phoneNumber}</p>
                    </div>
                    <div class="mb-3">
                        <p class="mb-1"><i class="fas fa-calendar-alt me-2"></i> Member Since</p>
                        <p class="text-muted">${user.joinDate}</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-8">
            <div class="card shadow-sm mb-4">
                <div class="card-body">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <h5 class="mb-0">Personal Information</h5>
                        <a href="${pageContext.request.contextPath}/auth/editProfile.jsp" class="text-decoration-none">
                            <i class="fas fa-pencil-alt"></i> Edit
                        </a>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-sm-3">
                            <p class="mb-0">Full Name</p>
                        </div>
                        <div class="col-sm-9">
                            <p class="text-muted mb-0">${user.fullName}</p>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-sm-3">
                            <p class="mb-0">Username</p>
                        </div>
                        <div class="col-sm-9">
                            <p class="text-muted mb-0">${user.username}</p>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-sm-3">
                            <p class="mb-0">Address</p>
                        </div>
                        <div class="col-sm-9">
                            <p class="text-muted mb-0">${user.address}</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="card shadow-sm">
                <div class="card-body">
                    <h5 class="mb-3">Recent Orders</h5>
                    <div class="alert alert-info">
                        You haven't placed any orders yet.
                        <a href="${pageContext.request.contextPath}/restaurants" class="alert-link">
                            Browse restaurants
                        </a> to get started!
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="../footer.jsp" />

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/js/profile.js"></script>
</body>
</html>