<!DOCTYPE html><html xmlns="http://www.w3.org/1999/xhtml"><head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://cdn.tailwindcss.com"></script>
    <script> window.FontAwesomeConfig = { autoReplaceSvg: 'nest'};</script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/js/all.min.js" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    
    <style>::-webkit-scrollbar { display: none;}</style>
    <script>
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
        userProfile.addEventListener('click', toggleUserMenu);
        
        // Add click event to logout button
        const logoutBtn = document.getElementById('btn-logout');
        logoutBtn.addEventListener('click', confirmLogout);
        
        // Close menu when clicking outside
        document.addEventListener('mousedown', function(evt) {
            const userProfile = document.getElementById('user-profile');
            const menu = document.getElementById('user-profile-menu');
            if (!userProfile.contains(evt.target) && !menu.contains(evt.target)) {
                menu.classList.add('opacity-0', 'pointer-events-none');
                menu.classList.remove('opacity-100');
                menuVisible = false;
            }
        });
    });
    
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        primary: {
                            light: '#d4c5b1',
                            DEFAULT: '#a58b6c',
                            dark: '#846d54',
                        },
                        secondary: {
                            light: '#f7f3ee',
                            DEFAULT: '#e8e1d9',
                            dark: '#d6cec2',
                        },
                        accent: '#5d4037',
                        warning: '#fae1b3',
                        danger: '#e57373',
                        info: '#64b5f6',
                        success: '#a5d6a7',
                    },
                    fontFamily: {
                        sans: ['Poppins', 'sans-serif'],
                    },
                }
            }
        }
    </script>
<link rel="preconnect" href="https://fonts.googleapis.com" /><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="" /><link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;500;600;700;800;900&amp;display=swap" /><style>
      body {
        font-family: 'Inter', sans-serif !important;
      }
      
      /* Preserve Font Awesome icons */
      .fa, .fas, .far, .fal, .fab {
        font-family: "Font Awesome 6 Free", "Font Awesome 6 Brands" !important;
      }
    </style><style>
  .highlighted-section {
    outline: 2px solid #3F20FB;
    background-color: rgba(63, 32, 251, 0.1);
  }

  .edit-button {
    position: absolute;
    z-index: 1000;
  }

  ::-webkit-scrollbar {
    display: none;
  }

  html, body {
    -ms-overflow-style: none;
    scrollbar-width: none;
  }
  </style></head>
<body class="bg-secondary-light font-sans">
    <header id="header" class="flex items-center justify-between bg-white shadow-md px-8 py-4 h-[72px] relative">
        <div class="flex items-center gap-8">
            <div id="header-logo-section" class="flex items-center gap-3 cursor-pointer" onclick="window.location.href='Dashboard.jsp'">
                <div class="bg-primary rounded-full w-12 h-12 flex items-center justify-center shadow-md">
                    <i class="fa-solid fa-mug-hot text-white text-2xl"></i>
                </div>
                <span class="text-2xl font-bold text-accent tracking-tight">Milktea POS</span>
            </div>
            <nav id="navbar" class="flex items-center gap-4 md:gap-8">
                <a href="Dashboard.jsp" class="flex items-center gap-2 text-primary-dark font-medium hover:text-accent transition cursor-pointer">
                    <i class="fa-solid fa-gauge"></i>
                    <span>Dashboard</span>
                </a>
                <a href="Orders.jsp" class="flex items-center gap-2 text-primary-dark font-medium hover:text-accent transition cursor-pointer">
                    <i class="fa-solid fa-receipt"></i>
                    <span>Orders</span>
                </a>
                <a href="Queue.jsp" class="flex items-center gap-2 text-primary-dark font-medium hover:text-accent transition cursor-pointer">
                    <i class="fa-solid fa-bars-progress"></i>
                    <span>Queue</span>
                </a>
                <span class="flex items-center gap-2 text-accent font-medium transition cursor-pointer bg-secondary-light px-4 py-2 rounded-lg">
                    <i class="fa-solid fa-credit-card"></i>
                    <span>Payment</span>
                    <span class="ml-1 w-2 h-2 rounded-full bg-accent"></span>
                </span>
                <a href="Inventory.jsp" class="flex items-center gap-2 text-primary-dark font-medium hover:text-accent transition cursor-pointer">
                    <i class="fa-solid fa-boxes-stacked"></i>
                    <span>Inventory</span>
                </a>
                <a href="Sales.jsp" class="flex items-center gap-2 text-primary-dark font-medium hover:text-accent transition cursor-pointer">
                    <i class="fa-solid fa-chart-line"></i>
                    <span>Sales</span>
                </a>
                <a href="Management.jsp" class="flex items-center gap-2 text-primary-dark font-medium hover:text-accent transition cursor-pointer">
                    <i class="fa-solid fa-user-gear"></i>
                    <span>Management</span>
                </a>
            </nav>
        </div>
        <div id="user-profile" class="flex items-center gap-3 relative cursor-pointer select-none">
            <div class="text-right">
                <p class="text-accent font-medium">Mark Spencer</p>
                <p class="text-sm text-primary-dark/70">Store Manager</p>
            </div>
            <img src="https://storage.googleapis.com/uxpilot-auth.appspot.com/avatars/avatar-2.jpg" alt="User Avatar" class="w-10 h-10 rounded-full object-cover border-2 border-primary" />
            <span class="w-8 h-8 rounded-full flex items-center justify-center bg-primary/10">
                <i class="fa-solid fa-chevron-down text-primary-dark"></i>
            </span>
            <div id="user-profile-menu" class="absolute right-0 top-[60px] w-56 z-50 rounded-xl shadow-xl bg-white border border-secondary-dark opacity-0 pointer-events-none transition-all duration-200" style="min-width:200px;">
                <div class="absolute -top-2 right-[22px] w-4 h-4 bg-white border-t border-l border-secondary-dark transform rotate-45"></div>
                <div class="py-2">
                    <button id="btn-change-user" class="flex items-center gap-3 w-full px-5 py-3 hover:bg-secondary-light text-accent text-base font-medium transition">
                        <i class="fa-solid fa-users text-primary-dark"></i>
                        Change User
                    </button>
                    <button id="btn-logout" class="flex items-center gap-3 w-full px-5 py-3 hover:bg-secondary-light text-danger text-base font-medium transition">
                        <i class="fa-solid fa-right-from-bracket"></i>
                        Logout
                    </button>
                </div>
            </div>
        </div>
    </header>
    <main id="main-payment-success-page" class="px-8 py-10 max-w-[1440px] mx-auto">
        <section id="payment-success-section" class="max-w-lg mx-auto bg-white rounded-3xl shadow-md p-10 mt-8">
            <div id="payment-success-header" class="mb-8 flex flex-col items-center justify-center text-center">
                <div class="flex items-center justify-center bg-success w-20 h-20 rounded-full shadow-lg mb-6">
                    <i class="fa-solid fa-circle-check text-white text-5xl"></i>
                </div>
                <h2 class="text-3xl font-semibold text-accent mb-2 tracking-tight" id="payment-success-title">Payment Successful!</h2>
                <p class="text-lg text-primary-dark/80 mb-1" id="payment-success-desc">Thank you for your payment. Your transaction has been completed.</p>
                <span class="text-base font-medium text-primary-dark/60">Order Number: <span class="font-semibold text-primary-dark" id="order-number">#000</span></span>
            </div>
            <div id="payment-success-summary-area" class="mb-8">
                <div class="flex items-center justify-between mb-2">
                    <span class="text-lg font-medium text-primary-dark">Item</span>
                    <span id="drink-name" class="text-lg font-semibold text-accent">Loading...</span>
                </div>
                <div class="flex items-center justify-between mb-2">
                    <span class="text-lg font-medium text-primary-dark">Size</span>
                    <span id="drink-size" class="text-lg font-semibold text-accent">Loading...</span>
                </div>
                <div class="flex items-center justify-between mb-2">
                    <span class="text-lg font-medium text-primary-dark">Total Paid</span>
                    <span id="total-paid" class="text-3xl font-bold text-accent tracking-tight">₱0.00</span>
                </div>
                <div class="flex items-center justify-between">
                    <span class="text-base text-primary-dark">Payment Method</span>
                    <span id="paid-method" class="text-base font-semibold text-primary-dark">CASH</span>
                </div>
            </div>
            <div id="payment-success-actions" class="flex flex-col items-center justify-center gap-6 mt-10">
                <button onclick="window.location.href='Queue.jsp'" class="flex items-center gap-3 px-6 py-4 rounded-2xl bg-primary text-white text-xl font-semibold shadow-lg hover:bg-primary-dark transition duration-200 active:scale-95 focus:ring-2 focus:ring-primary focus:outline-none">
                    <i class="fa-solid fa-arrow-left"></i>
                    Back to Queue
                </button>
            </div>
        </section>
    </main>
    <footer id="footer" class="bg-secondary text-center py-8 text-sm text-primary-dark mt-16">
        <p>© 2023 Milktea POS System. All rights reserved.</p>
        <p class="mt-1">Version 2.0.4</p>
    </footer>
        <script>        // User menu        let menuVisible = false;                function toggleUserMenu() {            const menu = document.getElementById('user-profile-menu');            menuVisible = !menuVisible;                        if (menuVisible) {                menu.classList.remove('opacity-0', 'pointer-events-none');                menu.classList.add('opacity-100');            } else {                menu.classList.add('opacity-0', 'pointer-events-none');                menu.classList.remove('opacity-100');            }        }                function confirmLogout() {            if (confirm('Are you sure you want to logout?')) {                window.location.href = 'Login.jsp';            }        }                document.addEventListener('DOMContentLoaded', function() {            // Add click event to user profile            const userProfile = document.getElementById('user-profile');            userProfile.addEventListener('click', toggleUserMenu);                        // Add click event to logout button            const logoutBtn = document.getElementById('btn-logout');            logoutBtn.addEventListener('click', confirmLogout);                        // Close menu when clicking outside            document.addEventListener('mousedown', function(evt) {                const userProfile = document.getElementById('user-profile');                const menu = document.getElementById('user-profile-menu');                if (!userProfile.contains(evt.target) && !menu.contains(evt.target)) {                    menu.classList.add('opacity-0', 'pointer-events-none');                    menu.classList.remove('opacity-100');                    menuVisible = false;                }            });            // Load payment details            const urlParams = new URLSearchParams(window.location.search);            const orderId = urlParams.get('orderId');            const drinkName = urlParams.get('drinkName');            const size = urlParams.get('size');            const amount = urlParams.get('amount');            const paymentMethod = urlParams.get('paymentMethod');                        if (!orderId || !drinkName || !size || !amount) {                window.location.href = 'Queue.jsp';                return;            }            // Display order details            document.getElementById('order-number').textContent = '#' + orderId;            document.getElementById('drink-name').textContent = drinkName;            document.getElementById('drink-size').textContent = size;            document.getElementById('total-paid').textContent = amount;            document.getElementById('paid-method').textContent = paymentMethod || 'CASH';        });    </script>

</body></html>