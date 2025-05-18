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
                <span class="flex items-center gap-2 text-primary-dark/50 font-medium cursor-not-allowed">
                    <i class="fa-solid fa-credit-card"></i>
                    <span>Payment</span>
                </span>
                <a href="Inventory.jsp" class="flex items-center gap-2 text-primary-dark font-medium hover:text-accent transition cursor-pointer">
                    <i class="fa-solid fa-boxes-stacked"></i>
                    <span>Inventory</span>
                </a>
                <a href="Sales.jsp" class="flex items-center gap-2 font-medium transition cursor-pointer bg-secondary-light px-4 py-2 rounded-lg text-accent">
                    <i class="fa-solid fa-chart-line"></i>
                    <span>Sales</span>
                    <span class="ml-1 w-2 h-2 rounded-full bg-accent"></span>
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
    <main id="main-sales-report" class="px-8 py-10 max-w-[1440px] mx-auto">
        <section id="sales-report-section" class="max-w-6xl mx-auto bg-white rounded-3xl shadow-md p-10 mb-12">
            <div class="flex flex-col md:flex-row md:items-center md:justify-between mb-8 gap-6">
                <div>
                    <h2 class="text-3xl font-semibold text-accent mb-2 tracking-tight" id="sales-report-title">Sales Report</h2>
                    <p class="text-base text-primary-dark/80" id="sales-report-desc">View, filter, and export daily, weekly, or custom sales data for your business.</p>
                </div>
                <div class="flex gap-3 flex-wrap md:flex-nowrap items-end">
                    <div class="flex flex-col">
                        <label for="date-from" class="text-xs mb-1 font-medium text-primary-dark">From</label>
                        <input type="date" id="date-from" class="rounded-lg border border-secondary-dark px-4 py-2 bg-secondary-light text-primary-dark focus:ring-2 focus:ring-primary focus:outline-none min-w-[130px]" />
                    </div>
                    <div class="flex flex-col">
                        <label for="date-to" class="text-xs mb-1 font-medium text-primary-dark">To</label>
                        <input type="date" id="date-to" class="rounded-lg border border-secondary-dark px-4 py-2 bg-secondary-light text-primary-dark focus:ring-2 focus:ring-primary focus:outline-none min-w-[130px]" />
                    </div>
                    <button id="btn-filter" class="flex items-center gap-2 bg-accent text-white px-6 py-3 rounded-xl hover:bg-accent/90 transition shadow-sm mt-5 md:mt-0">
                        <i class="fa-solid fa-filter"></i>
                        <span>Filter</span>
                    </button>
                    <button id="btn-export" class="flex items-center gap-2 bg-primary text-white px-6 py-3 rounded-xl hover:bg-primary-dark transition shadow-sm mt-5 md:mt-0">
                        <i class="fa-solid fa-file-arrow-down"></i>
                        <span>Export</span>
                    </button>
                </div>
            </div>
            <div class="overflow-x-auto rounded-2xl border border-secondary-dark shadow-sm" id="sales-report-table-wrapper">
                <table class="min-w-full bg-white rounded-2xl" id="sales-report-table">
                    <thead>
                        <tr class="bg-secondary-light text-primary-dark text-left text-xs uppercase tracking-wider">
                            <th class="px-6 py-4 font-bold rounded-tl-2xl">Order #</th>
                            <th class="px-6 py-4 font-bold">Date</th>
                            <th class="px-6 py-4 font-bold">Items</th>
                            <th class="px-6 py-4 font-bold">Payment Method</th>
                            <th class="px-6 py-4 font-bold">Total Amount</th>
                            <th class="px-6 py-4 font-bold rounded-tr-2xl">Status</th>
                        </tr>
                    </thead>
                    <tbody class="text-primary-dark text-sm">
                        <tr class="border-b border-secondary-dark/40 hover:bg-secondary/40 transition" id="sales-row-1">
                            <td class="px-6 py-5 font-semibold">#10023</td>
                            <td class="px-6 py-5">2024-06-12</td>
                            <td class="px-6 py-5">Taro Milk Tea, Pearls</td>
                            <td class="px-6 py-5">
                                <span class="inline-flex items-center gap-1 text-primary-dark">
                                    <i class="fa-solid fa-money-bill-wave text-success"></i>
                                    Cash
                                </span>
                            </td>
                            <td class="px-6 py-5 font-bold text-accent">&#8369;120.00</td>
                            <td class="px-6 py-5">
                                <span class="px-3 py-1 rounded-full bg-success/20 text-success font-semibold">Completed</span>
                            </td>
                        </tr>
                        <tr class="border-b border-secondary-dark/40 hover:bg-secondary/40 transition" id="sales-row-2">
                            <td class="px-6 py-5 font-semibold">#10024</td>
                            <td class="px-6 py-5">2024-06-12</td>
                            <td class="px-6 py-5">Classic Milk Tea, Cheese Foam</td>
                            <td class="px-6 py-5">
                                <span class="inline-flex items-center gap-1 text-primary-dark">
                                    <i class="fa-solid fa-credit-card text-info"></i>
                                    Card
                                </span>
                            </td>
                            <td class="px-6 py-5 font-bold text-accent">&#8369;135.00</td>
                            <td class="px-6 py-5">
                                <span class="px-3 py-1 rounded-full bg-success/20 text-success font-semibold">Completed</span>
                            </td>
                        </tr>
                        <tr class="border-b border-secondary-dark/40 hover:bg-secondary/40 transition" id="sales-row-3">
                            <td class="px-6 py-5 font-semibold">#10025</td>
                            <td class="px-6 py-5">2024-06-12</td>
                            <td class="px-6 py-5">Matcha Latte, Grass Jelly</td>
                            <td class="px-6 py-5">
                                <span class="inline-flex items-center gap-1 text-primary-dark">
                                    <i class="fa-solid fa-qrcode text-accent"></i>
                                    QR
                                </span>
                            </td>
                            <td class="px-6 py-5 font-bold text-accent">&#8369;150.00</td>
                            <td class="px-6 py-5">
                                <span class="px-3 py-1 rounded-full bg-success/20 text-success font-semibold">Completed</span>
                            </td>
                        </tr>
                        <tr class="border-b border-secondary-dark/40 hover:bg-secondary/40 transition" id="sales-row-4">
                            <td class="px-6 py-5 font-semibold">#10026</td>
                            <td class="px-6 py-5">2024-06-12</td>
                            <td class="px-6 py-5">Brown Sugar Boba, Oreo Crunch</td>
                            <td class="px-6 py-5">
                                <span class="inline-flex items-center gap-1 text-primary-dark">
                                    <i class="fa-solid fa-money-bill-wave text-success"></i>
                                    Cash
                                </span>
                            </td>
                            <td class="px-6 py-5 font-bold text-accent">&#8369;145.00</td>
                            <td class="px-6 py-5">
                                <span class="px-3 py-1 rounded-full bg-success/20 text-success font-semibold">Completed</span>
                            </td>
                        </tr>
                        <tr class="border-b border-secondary-dark/40 hover:bg-secondary/40 transition" id="sales-row-5">
                            <td class="px-6 py-5 font-semibold">#10027</td>
                            <td class="px-6 py-5">2024-06-12</td>
                            <td class="px-6 py-5">Classic Milk Tea, Pearls</td>
                            <td class="px-6 py-5">
                                <span class="inline-flex items-center gap-1 text-primary-dark">
                                    <i class="fa-solid fa-credit-card text-info"></i>
                                    Card
                                </span>
                            </td>
                            <td class="px-6 py-5 font-bold text-accent">&#8369;120.00</td>
                            <td class="px-6 py-5">
                                <span class="px-3 py-1 rounded-full bg-success/20 text-success font-semibold">Completed</span>
                            </td>
                        </tr>
                        <tr class="hover:bg-secondary/40 transition" id="sales-row-6">
                            <td class="px-6 py-5 font-semibold">#10028</td>
                            <td class="px-6 py-5">2024-06-12</td>
                            <td class="px-6 py-5">Taro Milk Tea, Cheese Foam</td>
                            <td class="px-6 py-5">
                                <span class="inline-flex items-center gap-1 text-primary-dark">
                                    <i class="fa-solid fa-qrcode text-accent"></i>
                                    QR
                                </span>
                            </td>
                            <td class="px-6 py-5 font-bold text-accent">&#8369;140.00</td>
                            <td class="px-6 py-5">
                                <span class="px-3 py-1 rounded-full bg-success/20 text-success font-semibold">Completed</span>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="flex justify-between items-center mt-8" id="sales-report-summary">
                <div class="flex gap-6 flex-wrap">
                    <div id="sales-total-orders" class="flex flex-col items-start">
                        <span class="text-sm text-primary-dark/60">Total Orders</span>
                        <span class="text-2xl font-bold text-accent">6</span>
                    </div>
                    <div id="sales-total-amount" class="flex flex-col items-start">
                        <span class="text-sm text-primary-dark/60">Total Sales</span>
                        <span class="text-2xl font-bold text-accent">&#8369;810.00</span>
                    </div>
                    <div id="sales-avg-order" class="flex flex-col items-start">
                        <span class="text-sm text-primary-dark/60">Average Order</span>
                        <span class="text-2xl font-bold text-accent">&#8369;135.00</span>
                    </div>
                </div>
                <div class="flex items-center gap-2 text-primary-dark/70 text-sm">
                    <i class="fa-solid fa-circle-info text-primary"></i>
                    <span>This report can be exported as PDF or CSV for accounting purposes.</span>
                </div>
            </div>
        </section>
    </main>
    <footer id="footer" class="bg-secondary text-center py-8 text-sm text-primary-dark mt-16">
        <p>© 2023 Milktea POS System. All rights reserved.</p>
        <p class="mt-1">Version 2.0.4</p>
    </footer>
</body></html>