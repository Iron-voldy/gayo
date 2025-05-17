// Form validation and preview
document.addEventListener('DOMContentLoaded', function() {
    const imageUrlInput = document.getElementById('imageUrl');
    const imagePreview = document.createElement('img');
    imagePreview.id = 'imagePreview';
    imageUrlInput.parentNode.appendChild(imagePreview);

    // Image preview
    imageUrlInput.addEventListener('input', function() {
        if (this.value) {
            imagePreview.src = this.value;
            imagePreview.style.display = 'block';
        } else {
            imagePreview.style.display = 'none';
        }
    });

    // Form validation
    const form = document.querySelector('form');
    if (form) {
        form.addEventListener('submit', function(e) {
            let valid = true;

            // Validate rating
            const rating = document.getElementById('rating');
            if (rating.value < 1 || rating.value > 5) {
                alert('Rating must be between 1 and 5');
                valid = false;
            }

            if (!valid) {
                e.preventDefault();
            }
        });
    }
});