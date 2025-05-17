<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%--<nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top">--%>
<%--  <div class="container">--%>
<%--    <a class="navbar-brand" href="${pageContext.request.contextPath}/">--%>
<%--      <img src="${pageContext.request.contextPath}/images/logo.png" alt="Logo" height="130" class="me-2">--%>
<%--      Food Delivery--%>
<%--    </a>--%>
<%--    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">--%>
<%--      <span class="navbar-toggler-icon"></span>--%>
<%--    </button>--%>
<%--    <div class="collapse navbar-collapse" id="navbarNav">--%>
<%--      <ul class="navbar-nav me-auto">--%>
<%--        <li class="nav-item">--%>
<%--          <a class="nav-link" href="${pageContext.request.contextPath}/">Home</a>--%>
<%--        </li>--%>
<%--        <li class="nav-item">--%>
<%--          <a class="nav-link" href="${pageContext.request.contextPath}/restaurants">Restaurants</a>--%>
<%--        </li>--%>
<%--        <li class="nav-item">--%>
<%--          <a class="nav-link" href="#">Deals</a>--%>
<%--        </li>--%>
<%--        <li class="nav-item">--%>
<%--          <a class="nav-link" href="#">Contact</a>--%>
<%--        </li>--%>
<%--      </ul>--%>
<%--      <ul class="navbar-nav">--%>
<%--        <c:choose>--%>
<%--          <c:when test="${not empty user}">--%>
<%--            <li class="nav-item dropdown">--%>
<%--              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"--%>
<%--                 data-bs-toggle="dropdown" aria-expanded="false">--%>
<%--                <img src="${user.avatarUrl}" alt="User" class="rounded-circle me-1" width="30" height="30">--%>
<%--                  ${user.username}--%>
<%--              </a>--%>
<%--              <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="userDropdown">--%>
<%--                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/auth/profile.jsp">--%>
<%--                  <i class="fas fa-user me-2"></i>Profile</a></li>--%>
<%--                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/orders">--%>
<%--                  <i class="fas fa-shopping-bag me-2"></i>My Orders</a></li>--%>
<%--                <li><hr class="dropdown-divider"></li>--%>
<%--                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/auth/login.jsp">--%>
<%--                  <i class="fas fa-sign-out-alt me-2"></i>Logout</a></li>--%>
<%--              </ul>--%>
<%--            </li>--%>
<%--            <li class="nav-item">--%>
<%--              <a class="nav-link position-relative" href="${pageContext.request.contextPath}/cart">--%>
<%--                <i class="fas fa-shopping-cart"></i>--%>
<%--                <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">--%>
<%--                                    0--%>
<%--                                </span>--%>
<%--              </a>--%>
<%--            </li>--%>
<%--          </c:when>--%>
<%--          <c:otherwise>--%>
<%--            <li class="nav-item">--%>
<%--&lt;%&ndash;              <a class="nav-link" href="${pageContext.request.contextPath}/user/login">&ndash;%&gt;--%>
<%--                  <a class="nav-link" href="${pageContext.request.contextPath}/auth/login.jsp">--%>
<%--                <i class="fas fa-sign-in-alt me-1"></i>Login--%>
<%--              </a>--%>
<%--            </li>--%>
<%--            <li class="nav-item">--%>
<%--              <a class="nav-link" href="${pageContext.request.contextPath}/auth/register.jsp">--%>
<%--                <i class="fas fa-user-plus me-1"></i>Register--%>
<%--              </a>--%>
<%--            </li>--%>
<%--          </c:otherwise>--%>
<%--        </c:choose>--%>
<%--      </ul>--%>
<%--    </div>--%>
<%--  </div>--%>
<%--</nav>--%>



<nav class="navbar navbar-expand-lg navbar-light bg-white sticky-top shadow-sm">
  <div class="container">
    <a class="navbar-brand d-flex align-items-center" href="${pageContext.request.contextPath}/">
      <img src="${pageContext.request.contextPath}/images/logo1.png" alt="Logo" height="150" class="me-2">
      <i class="fas fa-utensils text-primary me-2"></i>
      <span class="fw-bold">FoodExpress</span>
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
          <a class="nav-link active" href="${pageContext.request.contextPath}/"><i class="fas fa-home me-1"></i> Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${pageContext.request.contextPath}/c2/list.jsp"><i class="fas fa-store me-1"></i> Restaurants</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#"><i class="fas fa-percentage me-1"></i> Deals</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#"><i class="fas fa-headset me-1"></i> Contact</a>
        </li>
      </ul>
      <ul class="navbar-nav ms-auto">
        <c:choose>
          <c:when test="${not empty user}">
            <li class="nav-item me-2">
              <a class="nav-link position-relative" href="${pageContext.request.contextPath}/cart">
                <i class="fas fa-shopping-cart"></i>
                <span class="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                                    0
                                </span>
              </a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                 data-bs-toggle="dropdown" aria-expanded="false">
<%--                <img src="${pageContext.request.contextPath}/images/avatars/man.png" alt="User" height="50" class="rounded-circle">--%>
<%--                <img src="${user.avatarUrl}" alt="User" class="rounded-circle me-1" width="30" height="30">--%>
<%--                  ${user.username}    /images/avatars/man2.png--%>
                    <img src="${pageContext.request.contextPath}" title="User" alt="User" class="rounded-circle me-1" width="30" height="30">
                      ${user.username}
              </a>
              <ul class="dropdown-menu dropdown-menu-end rounded-3 border-0 shadow-lg" aria-labelledby="userDropdown">
                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/auth/profile.jsp">
                  <i class="fas fa-user me-2 text-primary"></i>Profile</a></li>
                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/orders">
                  <i class="fas fa-shopping-bag me-2 text-primary"></i>My Orders</a></li>
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item" href="${pageContext.request.contextPath}/auth/login.jsp">
                  <i class="fas fa-sign-out-alt me-2 text-primary"></i>Logout</a></li>
              </ul>
            </li>
          </c:when>
          <c:otherwise>
            <li class="nav-item">
              <a class="btn btn-outline-primary me-2" href="${pageContext.request.contextPath}/auth/login.jsp">
                <i class="fas fa-sign-in-alt me-1"></i>Login
              </a>
            </li>
            <li class="nav-item">
              <a class="btn btn-primary" href="${pageContext.request.contextPath}/auth/register.jsp">
                <i class="fas fa-user-plus me-1"></i>Register
              </a>
            </li>
          </c:otherwise>
        </c:choose>
      </ul>
    </div>
  </div>
</nav>