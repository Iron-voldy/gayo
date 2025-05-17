document.addEventListener('DOMContentLoaded', function() {
// Initialize carousel if you add one later
    const myCarousel = document.querySelector('#restaurantCarousel');
    if (myCarousel) {
        new bootstrap.Carousel(myCarousel, {
            interval: 3000,
            wrap: true
        });
    }

// Smooth scrolling for anchor links
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function(e) {
            e.preventDefault();
            document.querySelector(this.getAttribute('href')).scrollIntoView({
                behavior: 'smooth'
            });
        });
    });

// Animate elements when they come into view
    const animateOnScroll = function() {
        const elements = document.querySelectorAll('.step-card, .restaurant-card, .category-card .card');

        elements.forEach(element => {
            const elementPosition = element.getBoundingClientRect().top;
            const screenPosition = window.innerHeight / 1.2;

            if (elementPosition < screenPosition) {
                element.classList.add('animate__animated', 'animate__fadeInUp');
            }
        });
    };

    window.addEventListener('scroll', animateOnScroll);
    animateOnScroll(); // Run once on page load
});