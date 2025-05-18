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
                <a href="Dashboard.jsp" class="flex items-center gap-2 text-accent font-medium transition cursor-pointer bg-secondary-light px-4 py-2 rounded-lg">
                    <i class="fa-solid fa-gauge"></i>
                    <span>Dashboard</span>
                    <span class="ml-1 w-2 h-2 rounded-full bg-accent"></span>
                </a>
                <a href="Orders.jsp" class="flex items-center gap-2 text-primary-dark font-medium hover:text-accent transition cursor-pointer">
                    <i class="fa-solid fa-receipt"></i>
                    <span>Orders</span>
                </a>
                <a href="Queue.jsp" class="flex items-center gap-2 text-primary-dark font-medium hover:text-accent transition cursor-pointer">
                    <i class="fa-solid fa-bars-progress"></i>
                    <span>Queue</span>
                </a>
                <span class="flex items-center gap-2 text-primary-dark/50 font-medium cursor-not-allowed">
                    <i class="fa-solid fa-credit-card"></i>
                    <span>Payment</span>
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

    <main id="main-dashboard" class="px-8 py-10 max-w-[1440px] mx-auto">
        <section id="overview-section" class="mb-10">
            <h2 class="text-3xl font-semibold text-accent mb-3 tracking-tight">Overview of System Activities</h2>
            <p class="text-base text-primary-dark/80 mb-8">Today's summary of shop performance and business activities.</p>
            <div id="overview-cards-row" class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8">
                <div id="card-total-sales" class="bg-white rounded-2xl shadow-sm hover:shadow-md transition-shadow p-8 flex flex-col gap-3">
                    <div class="flex items-center gap-3">
                        <span class="bg-primary-light text-accent rounded-full p-3 shadow">
                            <i class="fa-solid fa-coins text-2xl"></i>
                        </span>
                        <span class="text-lg font-medium text-primary-dark">Total Sales</span>
                    </div>
                    <div class="text-3xl font-bold text-accent mt-2">&#8369;12,530</div>
                    <span class="text-sm text-primary-dark/60">For Today</span>
                </div>
                <div id="card-total-orders" class="bg-white rounded-2xl shadow-sm hover:shadow-md transition-shadow p-8 flex flex-col gap-3">
                    <div class="flex items-center gap-3">
                        <span class="bg-info/20 text-info rounded-full p-3 shadow">
                            <i class="fa-solid fa-list-ol text-2xl"></i>
                        </span>
                        <span class="text-lg font-medium text-primary-dark">Total Orders</span>
                    </div>
                    <div class="text-3xl font-bold text-accent mt-2">152</div>
                    <span class="text-sm text-primary-dark/60">For Today</span>
                </div>
                <div id="card-avg-order" class="bg-white rounded-2xl shadow-sm hover:shadow-md transition-shadow p-8 flex flex-col gap-3">
                    <div class="flex items-center gap-3">
                        <span class="bg-success/30 text-success rounded-full p-3 shadow">
                            <i class="fa-solid fa-calculator text-2xl"></i>
                        </span>
                        <span class="text-lg font-medium text-primary-dark">Avg. Order Value</span>
                    </div>
                    <div class="text-3xl font-bold text-accent mt-2">&#8369;82.40</div>
                    <span class="text-sm text-primary-dark/60">For Today</span>
                </div>
                <div id="card-orders-status" class="bg-white rounded-2xl shadow-sm hover:shadow-md transition-shadow p-8 flex flex-col gap-3">
                    <div class="flex items-center gap-3">
                        <span class="bg-warning text-accent rounded-full p-3 shadow">
                            <i class="fa-solid fa-hourglass-half text-2xl"></i>
                        </span>
                        <span class="text-lg font-medium text-primary-dark">Pending vs Completed</span>
                    </div>
                    <div class="flex items-center gap-6 mt-2">
                        <div class="flex flex-col items-center">
                            <span class="text-xl font-bold text-accent">7</span>
                            <span class="text-xs text-primary-dark/60">Pending</span>
                        </div>
                        <div class="flex flex-col items-center">
                            <span class="text-xl font-bold text-success">143</span>
                            <span class="text-xs text-primary-dark/60">Completed</span>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        <section id="dashboard-details-section" class="grid grid-cols-1 lg:grid-cols-3 gap-10">
            <div id="left-column-details" class="flex flex-col gap-8">
                <div id="sales-breakdown-card" class="bg-white rounded-2xl shadow-sm hover:shadow-md transition-shadow p-8">
                    <div class="flex items-center gap-4 mb-6">
                        <i class="fa-solid fa-wallet text-primary-dark text-2xl"></i>
                        <span class="text-lg font-semibold text-accent">Sales by Payment Method</span>
                    </div>
                    <div class="flex flex-col gap-4 mt-2">
                        <div class="flex items-center justify-between">
                            <div class="flex items-center gap-2">
                                <i class="fa-solid fa-money-bill-wave text-green-600"></i>
                                <span class="text-primary-dark font-medium">Cash</span>
                            </div>
                            <span class="font-bold text-accent">&#8369;7,200</span>
                        </div>
                        <div class="flex items-center justify-between">
                            <div class="flex items-center gap-2">
                                <i class="fa-solid fa-credit-card text-blue-500"></i>
                                <span class="text-primary-dark font-medium">Card</span>
                            </div>
                            <span class="font-bold text-accent">&#8369;3,850</span>
                        </div>
                        <div class="flex items-center justify-between">
                            <div class="flex items-center gap-2">
                                <i class="fa-solid fa-qrcode text-accent"></i>
                                <span class="text-primary-dark font-medium">QR Pay</span>
                            </div>
                            <span class="font-bold text-accent">&#8369;1,480</span>
                        </div>
                    </div>
                </div>
                <div id="inventory-snapshot-card" class="bg-white rounded-2xl shadow-sm hover:shadow-md transition-shadow p-8">
                    <div class="flex items-center gap-4 mb-6">
                        <i class="fa-solid fa-clipboard-list text-primary-dark text-2xl"></i>
                        <span class="text-lg font-semibold text-accent">Inventory Snapshot</span>
                    </div>
                    <div class="flex flex-col gap-3">
                        <div class="flex items-center justify-between">
                            <div class="flex items-center gap-2">
                                <i class="fa-solid fa-circle-exclamation text-danger"></i>
                                <span class="text-primary-dark">Tapioca Pearls</span>
                            </div>
                            <span class="text-danger font-semibold text-sm">Low Stock (2kg)</span>
                        </div>
                        <div class="flex items-center justify-between">
                            <div class="flex items-center gap-2">
                                <i class="fa-solid fa-circle-xmark text-red-400"></i>
                                <span class="text-primary-dark">Cheese Foam</span>
                            </div>
                            <span class="text-red-400 font-semibold text-sm">Out of Stock</span>
                        </div>
                        <div class="flex items-center justify-between">
                            <div class="flex items-center gap-2">
                                <i class="fa-solid fa-lemon text-primary"></i>
                                <span class="text-primary-dark">Lemon Juice</span>
                            </div>
                            <span class="text-primary font-semibold text-sm">Used: 1.5L</span>
                        </div>
                    </div>
                </div>
            </div>
            <div id="center-column-details" class="flex flex-col gap-8">
                <div id="top-selling-drinks-card" class="bg-white rounded-2xl shadow-sm hover:shadow-md transition-shadow p-8">
                    <div class="flex items-center gap-4 mb-6">
                        <i class="fa-solid fa-champagne-glasses text-primary-dark text-2xl"></i>
                        <span class="text-lg font-semibold text-accent">Top-Selling Drinks</span>
                    </div>
                    <ol class="list-decimal pl-5 space-y-4">
                        <li class="flex items-center justify-between">
                            <span class="text-primary-dark font-medium">Classic Milktea</span>
                            <span class="bg-primary-light text-accent px-2 py-1 rounded text-xs font-semibold">38 sold</span>
                        </li>
                        <li class="flex items-center justify-between">
                            <span class="text-primary-dark font-medium">Brown Sugar Boba</span>
                            <span class="bg-primary-light text-accent px-2 py-1 rounded text-xs font-semibold">27 sold</span>
                        </li>
                        <li class="flex items-center justify-between">
                            <span class="text-primary-dark font-medium">Matcha Latte</span>
                            <span class="bg-primary-light text-accent px-2 py-1 rounded text-xs font-semibold">19 sold</span>
                        </li>
                    </ol>
                </div>
                <div id="top-toppings-card" class="bg-white rounded-2xl shadow-sm hover:shadow-md transition-shadow p-8">
                    <div class="flex items-center gap-4 mb-6">
                        <i class="fa-solid fa-ice-cream text-primary-dark text-2xl"></i>
                        <span class="text-lg font-semibold text-accent">Top Toppings</span>
                    </div>
                    <ol class="list-decimal pl-5 space-y-4">
                        <li class="flex items-center justify-between">
                            <span class="text-primary-dark font-medium">Pearls</span>
                            <span class="bg-primary-light text-accent px-2 py-1 rounded text-xs font-semibold">66 used</span>
                        </li>
                        <li class="flex items-center justify-between">
                            <span class="text-primary-dark font-medium">Cheese Foam</span>
                            <span class="bg-primary-light text-accent px-2 py-1 rounded text-xs font-semibold">45 used</span>
                        </li>
                        <li class="flex items-center justify-between">
                            <span class="text-primary-dark font-medium">Pudding</span>
                            <span class="bg-primary-light text-accent px-2 py-1 rounded text-xs font-semibold">21 used</span>
                        </li>
                    </ol>
                </div>
            </div>
            <div id="right-column-details" class="flex flex-col gap-8">
                <div id="low-performing-items-card" class="bg-white rounded-2xl shadow-sm hover:shadow-md transition-shadow p-8">
                    <div class="flex items-center gap-4 mb-6">
                        <i class="fa-regular fa-thumbs-down text-danger text-2xl"></i>
                        <span class="text-lg font-semibold text-accent">Low-Performing Menu Items</span>
                    </div>
                    <ul class="space-y-2">
                        <li class="flex items-center justify-between">
                            <span class="text-primary-dark font-medium">Coconut Milktea</span>
                            <span class="bg-warning text-accent px-2 py-1 rounded text-xs font-semibold">2 sold</span>
                        </li>
                        <li class="flex items-center justify-between">
                            <span class="text-primary-dark font-medium">Oreo Crunch</span>
                            <span class="bg-warning text-accent px-2 py-1 rounded text-xs font-semibold">3 sold</span>
                        </li>
                        <li class="flex items-center justify-between">
                            <span class="text-primary-dark font-medium">Wintermelon Juice</span>
                            <span class="bg-warning text-accent px-2 py-1 rounded text-xs font-semibold">4 sold</span>
                        </li>
                    </ul>
                </div>
                <div id="order-volume-card" class="bg-white rounded-2xl shadow-sm hover:shadow-md transition-shadow p-8">
                    <div class="flex items-center gap-4 mb-6">
                        <i class="fa-solid fa-clock text-primary-dark text-2xl"></i>
                        <span class="text-lg font-semibold text-accent">Busiest Time of Day</span>
                    </div>
                    <div class="flex flex-col gap-1">
                        <span class="font-bold text-accent text-lg">3:00 PM - 4:00 PM</span>
                        <span class="text-primary-dark text-sm">42 orders</span>
                    </div>
                </div>
                <div id="refunds-card" class="bg-white rounded-2xl shadow-sm hover:shadow-md transition-shadow p-8">
                    <div class="flex items-center gap-4 mb-6">
                        <i class="fa-solid fa-rotate-left text-accent text-2xl"></i>
                        <span class="text-lg font-semibold text-accent">Cancelled &amp; Refunded</span>
                    </div>
                    <div class="flex gap-6 text-base">
                        <div class="flex flex-col items-center">
                            <span class="font-bold text-danger">3</span>
                            <span class="text-xs text-primary-dark/60">Cancelled</span>
                        </div>
                        <div class="flex flex-col items-center">
                            <span class="font-bold text-primary">2</span>
                            <span class="text-xs text-primary-dark/60">Refunded</span>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section id="employee-activity-section" class="mt-12">
            <div class="bg-white rounded-2xl shadow-sm hover:shadow-md transition-shadow p-8">
                <div class="flex items-center gap-4 mb-6">
                    <i class="fa-solid fa-users text-primary-dark text-2xl"></i>
                    <span class="text-lg font-semibold text-accent">Employee Activity</span>
                </div>
                <div class="overflow-x-auto">
                    <table class="min-w-full text-sm border-separate border-spacing-0">
                        <thead class="bg-secondary/50 rounded-lg">
                            <tr class="bg-secondary">
                                <th class="px-8 py-4 text-left font-semibold text-primary-dark">Cashier</th>
                                <th class="px-8 py-4 text-left font-semibold text-primary-dark">Orders Handled</th>
                                <th class="px-8 py-4 text-left font-semibold text-primary-dark">Voids</th>
                                <th class="px-8 py-4 text-left font-semibold text-primary-dark">Refunds</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="border-t">
                                <td class="px-8 py-4 flex items-center gap-3">
                                    <img src="https://storage.googleapis.com/uxpilot-auth.appspot.com/avatars/avatar-2.jpg" alt="cashier" class="w-8 h-8 rounded-full object-cover" />
                                    <span class="text-primary-dark font-medium">Mark S.</span>
                                </td>
                                <td class="px-8 py-4">68</td>
                                <td class="px-8 py-4">1</td>
                                <td class="px-8 py-4">0</td>
                            </tr>
                            <tr class="border-t">
                                <td class="px-8 py-4 flex items-center gap-3">
                                    <img src="https://storage.googleapis.com/uxpilot-auth.appspot.com/avatars/avatar-7.jpg" alt="cashier" class="w-8 h-8 rounded-full object-cover" />
                                    <span class="text-primary-dark font-medium">Anna B.</span>
                                </td>
                                <td class="px-8 py-4">54</td>
                                <td class="px-8 py-4">0</td>
                                <td class="px-8 py-4">2</td>
                            </tr>
                            <tr class="border-t">
                                <td class="px-8 py-4 flex items-center gap-3">
                                    <img src="https://storage.googleapis.com/uxpilot-auth.appspot.com/avatars/avatar-3.jpg" alt="cashier" class="w-8 h-8 rounded-full object-cover" />
                                    <span class="text-primary-dark font-medium">Lucas R.</span>
                                </td>
                                <td class="px-8 py-4">30</td>
                                <td class="px-8 py-4">2</td>
                                <td class="px-8 py-4">0</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
    </main>
    <footer id="footer" class="bg-secondary text-center py-8 text-sm text-primary-dark mt-16">
        <p>© 2023 Milktea POS System. All rights reserved.</p>
        <p class="mt-1">Version 2.0.4</p>
    </footer>
    <script src="js/navigation.js"></script>
</body></html>