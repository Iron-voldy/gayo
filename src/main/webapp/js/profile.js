// src/main/webapp/js/profile.js
document.addEventListener('DOMContentLoaded', function() {
    // Avatar preview when file is selected
    const avatarInput = document.getElementById('avatar');
    if (avatarInput) {
        avatarInput.addEventListener('change', function(e) {
            const file = e.target.files[0];
            if (file) {
                const reader = new FileReader();
                reader.onload = function(event) {
                    document.querySelector('.rounded-circle').src = event.target.result;
                };
                reader.readAsDataURL(file);
            }
        });
    }

    // Form validation for profile update
    const updateForm = document.querySelector('form[action*="/update"]');
    if (updateForm) {
        updateForm.addEventListener('submit', function(e) {
            const email = document.getElementById('email').value;
            const currentPassword = document.getElementById('currentPassword').value;

            if (!email) {
                e.preventDefault();
                alert('Email is required!');
                return false;
            }

            if (!currentPassword) {
                e.preventDefault();
                alert('Please enter your current password to confirm changes!');
                return false;
            }

            return true;
        });
    }

    // Auto-dismiss alerts after 5 seconds
    const alerts = document.querySelectorAll('.alert');
    alerts.forEach(alert => {
        setTimeout(() => {
            alert.classList.add('fade');
            setTimeout(() => {
                alert.remove();
            }, 150);
        }, 5000);
    });
});