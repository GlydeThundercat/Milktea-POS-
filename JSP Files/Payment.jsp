<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
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
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Inter:wght@100;200;300;500;600;700;800;900&display=swap" />
    <style>
        body { font-family: 'Inter', sans-serif !important; }
        .fa, .fas, .far, .fal, .fab { font-family: "Font Awesome 6 Free", "Font Awesome 6 Brands" !important; }
    </style>
</head>
<body class="bg-secondary-light font-sans">
    <div class="min-h-screen flex items-center justify-center p-4">
        <div class="bg-white rounded-2xl shadow-lg w-full max-w-md overflow-hidden">
            <div class="bg-primary p-6 text-white">
                <h1 class="text-2xl font-bold mb-2">Payment Details</h1>
                <p class="text-primary-light">Complete your order payment</p>
            </div>
            
            <div class="p-6">
                <div class="mb-6 bg-secondary-light rounded-lg p-4">
                    <div class="flex items-center justify-between mb-4">
                        <span class="text-accent font-medium">Order Number</span>
                        <span id="display-order-id" class="text-lg font-bold text-accent">#000</span>
                    </div>
                    <div class="flex items-center justify-between mb-4">
                        <span class="text-accent font-medium">Item</span>
                        <span id="display-drink-name" class="text-accent">Loading...</span>
                    </div>
                    <div class="flex items-center justify-between mb-4">
                        <span class="text-accent font-medium">Size</span>
                        <span id="display-size" class="text-accent">Loading...</span>
                    </div>
                    <div class="flex items-center justify-between text-lg font-bold">
                        <span class="text-accent">Total Amount</span>
                        <span id="display-amount" class="text-accent">&#8369;0.00</span>
                    </div>
                </div>

                <div class="space-y-4">
                    <button onclick="processPaymentMethod('cash')" class="w-full bg-primary hover:bg-primary-dark text-white font-medium py-3 px-4 rounded-lg transition duration-200 flex items-center justify-center gap-2">
                        <i class="fa-solid fa-money-bill-wave"></i>
                        Pay with Cash
                    </button>
                    <button onclick="processPaymentMethod('card')" class="w-full bg-info hover:bg-info/80 text-white font-medium py-3 px-4 rounded-lg transition duration-200 flex items-center justify-center gap-2">
                        <i class="fa-solid fa-credit-card"></i>
                        Pay with Card
                    </button>
                    <button onclick="processPaymentMethod('qr')" class="w-full bg-accent hover:bg-accent/80 text-white font-medium py-3 px-4 rounded-lg transition duration-200 flex items-center justify-center gap-2">
                        <i class="fa-solid fa-qrcode"></i>
                        Pay with QR Code
                    </button>
                </div>

                <button onclick="window.location.href='Queue.jsp'" class="w-full mt-4 border border-primary text-primary hover:bg-primary-light font-medium py-3 px-4 rounded-lg transition duration-200 flex items-center justify-center gap-2">
                    <i class="fa-solid fa-arrow-left"></i>
                    Back to Queue
                </button>
            </div>
        </div>
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

    <script>
        // Load order details from URL parameters
        window.addEventListener('DOMContentLoaded', function() {
            const urlParams = new URLSearchParams(window.location.search);
            const orderId = urlParams.get('orderId');
            const drinkName = urlParams.get('drinkName');
            const size = urlParams.get('size');
            const amount = urlParams.get('amount');
            
            if (!orderId || !drinkName || !size || !amount) {
                window.location.href = 'Queue.jsp';
                return;
            }

            // Display order details
            document.getElementById('display-order-id').textContent = '#' + orderId;
            document.getElementById('display-drink-name').textContent = drinkName;
            document.getElementById('display-size').textContent = size;
            document.getElementById('display-amount').textContent = amount;
        });

        function processPaymentMethod(method) {
            // Here you would typically integrate with a payment gateway
            // For now, we'll simulate a successful payment
            const urlParams = new URLSearchParams(window.location.search);
            const orderId = urlParams.get('orderId');
            const drinkName = urlParams.get('drinkName');
            const size = urlParams.get('size');
            const amount = urlParams.get('amount');
            
            // Redirect to success page with payment details
            const successParams = new URLSearchParams({
                orderId: orderId,
                drinkName: drinkName,
                size: size,
                amount: amount,
                paymentMethod: method.toUpperCase()
            });
            window.location.href = 'PaymentSuccess.jsp?' + successParams.toString();
        }

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
    </script>
</body>
</html>