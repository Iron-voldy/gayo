<div class="card restaurant-card h-100">
    <img src="${pageContext.request.contextPath}/images/restaurant3.png" style="height: revert-layer" class="card-img-top" alt="${param.name}">
    <div class="card-body">
        <div class="d-flex justify-content-between align-items-start">
            <h5 class="card-title mb-1">${param.name}</h5>
            <span class="badge bg-warning text-dark">
                <i class="fas fa-star"></i> ${param.rating}
            </span>
        </div>
        <p class="card-text text-muted mb-2">
            <i class="fas fa-utensils me-1"></i> ${param.cuisineType}
        </p>
    </div>
    <div class="card-footer bg-white d-flex justify-content-between">
        <a href="${pageContext.request.contextPath}/c2/view.jsp?id=${param.id}"
           class="btn btn-sm btn-outline-primary">View</a>
        <a href="${pageContext.request.contextPath}/c2/edit.jsp?id=${param.id}"
           class="btn btn-sm btn-outline-secondary">Edit</a>
<%--        <form action="${pageContext.request.contextPath}/restaurants/delete" method="post" class="d-inline">--%>
            <form action="${pageContext.request.contextPath}/restaurants/delete" method="post" class="d-inline">
            <input type="hidden" name="id" value="${param.id}">
            <button type="submit" class="btn btn-sm btn-outline-danger">Delete</button>
        </form>
    </div>
</div>