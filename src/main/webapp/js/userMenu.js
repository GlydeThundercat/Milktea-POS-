// User menu functionality
let menuVisible = false;

function toggleUserMenu() {
    const menu = document.getElementById('user-profile-menu');
    menuVisible = !menuVisible;
    
    if (menuVisible) {
        menu.classList.remove('opacity-0', 'pointer-events-none');
        menu.classList.add('opacity-100');
    } else {
        menu.classList.add('opacity-0', 'pointer-events-none');
        menu.classList.remove('opacity-100');
    }
}

function confirmLogout() {
    if (confirm('Are you sure you want to logout?')) {
        window.location.href = 'Login.jsp';
    }
}

document.addEventListener('DOMContentLoaded', function() {
    // Add click event to user profile
    const userProfile = document.getElementById('user-profile');
    if (userProfile) {
        userProfile.addEventListener('click', toggleUserMenu);
    }
    
    // Add click event to logout button
    const logoutBtn = document.getElementById('btn-logout');
    if (logoutBtn) {
        logoutBtn.addEventListener('click', confirmLogout);
    }
    
    // Close menu when clicking outside
    document.addEventListener('mousedown', function(evt) {
        const userProfile = document.getElementById('user-profile');
        const menu = document.getElementById('user-profile-menu');
        if (userProfile && menu && !userProfile.contains(evt.target) && !menu.contains(evt.target)) {
            menu.classList.add('opacity-0', 'pointer-events-none');
            menu.classList.remove('opacity-100');
            menuVisible = false;
        }
    });
}); 