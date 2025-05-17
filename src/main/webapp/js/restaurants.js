// document.addEventListener('DOMContentLoaded', function() {
//     // Image preview for forms
//     const imageInput = document.getElementById('image');
//     if (imageInput) {
//         imageInput.addEventListener('change', function(e) {
//             const file = e.target.files[0];
//             if (file) {
//                 const reader = new FileReader();
//                 const preview = document.getElementById('imagePreview');
//
//                 if (preview) {
//                     reader.onload = function(event) {
//                         preview.src = event.target.result;
//                         preview.style.display = 'block';
//                     };
//                     reader.readAsDataURL(file);
//                 }
//             }
//         });
//     }
//
//     // Form validation
//     const forms = document.querySelectorAll('form[method="post"]');
//     forms.forEach(form => {
//         form.addEventListener('submit', function(e) {
//             const requiredFields = form.querySelectorAll('[required]');
//             let isValid = true;
//
//             requiredFields.forEach(field => {
//                 if (!field.value.trim()) {
//                     isValid = false;
//                     field.classList.add('is-invalid');
//                 } else {
//                     field.classList.remove('is-invalid');
//                 }
//             });
//
//             if (!isValid) {
//                 e.preventDefault();
//                 alert('Please fill all required fields');
//             }
//         });
//     });
//
//     // Initialize tooltips
//     const tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
//     tooltipTriggerList.map(function (tooltipTriggerEl) {
//         return new bootstrap.Tooltip(tooltipTriggerEl);
//     });
// });

// Restaurant list page functionality
document.addEventListener('DOMContentLoaded', function() {
    // Confirm before deleting
    const deleteForms = document.querySelectorAll('form[action*="/restaurants/delete"]');
    deleteForms.forEach(form => {
        form.addEventListener('submit', function(e) {
            if (!confirm('Are you sure you want to delete this restaurant?')) {
                e.preventDefault();
            }
        });
    });

    // Search functionality
    const searchInput = document.getElementById('restaurantSearch');
    if (searchInput) {
        searchInput.addEventListener('input', function() {
            const searchTerm = this.value.toLowerCase();
            const cards = document.querySelectorAll('.restaurant-card');

            cards.forEach(card => {
                const name = card.querySelector('.card-title').textContent.toLowerCase();
                const cuisine = card.querySelector('.card-text').textContent.toLowerCase();

                if (name.includes(searchTerm) || cuisine.includes(searchTerm)) {
                    card.parentElement.style.display = 'block';
                } else {
                    card.parentElement.style.display = 'none';
                }
            });
        });
    }
});