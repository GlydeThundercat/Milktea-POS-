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
                <a href="Queue.jsp" class="flex items-center gap-2 text-accent font-medium transition cursor-pointer bg-secondary-light px-4 py-2 rounded-lg">
                    <i class="fa-solid fa-bars-progress"></i>
                    <span>Queue</span>
                    <span class="ml-1 w-2 h-2 rounded-full bg-accent"></span>
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

    <main id="main-order-queue" class="px-8 py-10 max-w-[1440px] mx-auto">
        <section id="order-queue-section" class="max-w-6xl mx-auto bg-white rounded-3xl shadow-md p-10 mb-12">
            <div class="flex flex-col md:flex-row md:items-end md:justify-between mb-8 gap-6" id="order-queue-title-bar">
                <div>
                    <h2 class="text-3xl font-semibold text-accent mb-1 tracking-tight" id="queue-title">Order Queue</h2>
                    <p class="text-base text-primary-dark/80" id="queue-desc">Monitor all active and completed beverage orders. Quickly mark orders as done for efficient service.</p>
                </div>
            </div>
            <div class="grid grid-cols-1 md:grid-cols-2 gap-8" id="queue-lists-wrapper">
                <div id="active-orders-block" class="bg-secondary-light rounded-2xl border border-secondary p-6 shadow-inner">
                    <div class="flex items-center gap-2 mb-6">
                        <div class="bg-warning/20 p-2 rounded-lg">
                            <i class="fa-solid fa-clock text-warning text-xl"></i>
                        </div>
                        <h3 class="text-xl font-semibold text-accent">In Progress</h3>
                        <span id="active-count" class="ml-2 px-2 py-0.5 rounded-full text-xs font-bold bg-warning text-accent">3</span>
                    </div>
                    <ul id="active-orders-list" class="space-y-5">
                        <li id="active-order-101" class="queue-order-card bg-white rounded-xl border border-secondary-dark p-5 shadow-md group">
                            <div class="flex justify-between items-start mb-4">
                                <div class="flex items-center gap-3">
                                    <span class="text-lg font-bold text-accent">#101</span>
                                    <span class="bg-warning/20 text-warning px-3 py-1 rounded-full text-sm font-medium">In Progress</span>
                                    <span class="bg-danger/20 text-danger px-3 py-1 rounded-full text-sm font-medium">Unpaid</span>
                                </div>
                                <span class="text-xl font-semibold text-accent">&#8369;180.00</span>
                            </div>
                            <div class="mb-4">
                                <h4 class="text-xl font-semibold text-accent mb-1">Taro Milktea</h4>
                                <div class="flex items-center gap-2 text-primary-dark/70">
                                    <span class="font-medium">Large</span>
                                </div>
                            </div>
                            <div class="bg-secondary-light rounded-lg p-3 mb-4">
                                <div class="font-medium text-primary-dark mb-2">Toppings:</div>
                                <div class="flex flex-wrap gap-2">
                                    <span class="bg-white px-3 py-1 rounded-full text-sm text-primary-dark">2x Pearls</span>
                                    <span class="bg-white px-3 py-1 rounded-full text-sm text-primary-dark">Cheese Foam</span>
                                </div>
                            </div>
                            <div class="flex items-center justify-between">
                                <span class="text-sm text-primary-dark/60">2 mins</span>
                                <div class="flex items-center gap-2">
                                    <form action="Payment.jsp" method="get" style="display: inline;">
                                        <input type="hidden" name="orderId" value="101">
                                        <input type="hidden" name="drinkName" value="Taro Milktea">
                                        <input type="hidden" name="size" value="Large">
                                        <input type="hidden" name="amount" value="&#8369;180.00">
                                        <button type="submit" class="px-4 py-2 rounded-md bg-primary text-white font-semibold hover:bg-primary-dark transition flex items-center gap-2 shadow">
                                            <i class="fa-solid fa-credit-card"></i> Payment
                                        </button>
                                    </form>
                                    <button onclick="markOrderDone('101')" class="px-4 py-2 rounded-md bg-success text-white font-semibold hover:bg-primary-dark transition flex items-center gap-2 shadow">
                                        <i class="fa-solid fa-check"></i> Mark as Done
                                    </button>
                                </div>
                            </div>
                        </li>
                        <li id="active-order-102" class="queue-order-card bg-white rounded-xl border border-secondary-dark p-5 shadow-md group">
                            <div class="flex justify-between items-start mb-4">
                                <div class="flex items-center gap-3">
                                    <span class="text-lg font-bold text-accent">#102</span>
                                    <span class="bg-warning/20 text-warning px-3 py-1 rounded-full text-sm font-medium">In Progress</span>
                                    <span class="bg-success/20 text-success px-3 py-1 rounded-full text-sm font-medium">Paid</span>
                                </div>
                                <span class="text-xl font-semibold text-accent">&#8369;150.00</span>
                            </div>
                            <div class="mb-4">
                                <h4 class="text-xl font-semibold text-accent mb-1">Classic Milktea</h4>
                                <div class="flex items-center gap-2 text-primary-dark/70">
                                    <span class="font-medium">Medium</span>
                                </div>
                            </div>
                            <div class="bg-secondary-light rounded-lg p-3 mb-4">
                                <div class="font-medium text-primary-dark mb-2">Toppings:</div>
                                <div class="flex flex-wrap gap-2">
                                    <span class="bg-white px-3 py-1 rounded-full text-sm text-primary-dark">1x Pudding</span>
                                </div>
                            </div>
                            <div class="flex items-center justify-between">
                                <span class="text-sm text-primary-dark/60">4 mins</span>
                                <button onclick="markOrderDone('102')" class="px-4 py-2 rounded-md bg-success text-white font-semibold hover:bg-primary-dark transition flex items-center gap-2 shadow">
                                    <i class="fa-solid fa-check"></i> Mark as Done
                                </button>
                            </div>
                        </li>
                        <li id="active-order-103" class="queue-order-card bg-white rounded-xl border border-secondary-dark p-5 shadow-md group">
                            <div class="flex justify-between items-start mb-4">
                                <div class="flex items-center gap-3">
                                    <span class="text-lg font-bold text-accent">#103</span>
                                    <span class="bg-warning/20 text-warning px-3 py-1 rounded-full text-sm font-medium">In Progress</span>
                                    <span class="bg-danger/20 text-danger px-3 py-1 rounded-full text-sm font-medium">Unpaid</span>
                                </div>
                                <span class="text-xl font-semibold text-accent">&#8369;120.00</span>
                            </div>
                            <div class="mb-4">
                                <h4 class="text-xl font-semibold text-accent mb-1">Brown Sugar Boba</h4>
                                <div class="flex items-center gap-2 text-primary-dark/70">
                                    <span class="font-medium">Small</span>
                                </div>
                            </div>
                            <div class="bg-secondary-light rounded-lg p-3 mb-4">
                                <div class="font-medium text-primary-dark mb-2">Toppings:</div>
                                <div class="flex flex-wrap gap-2">
                                    <span class="bg-white px-3 py-1 rounded-full text-sm text-primary-dark">No toppings</span>
                                </div>
                            </div>
                            <div class="flex items-center justify-between">
                                <span class="text-sm text-primary-dark/60">1 min</span>
                                <div class="flex items-center gap-2">
                                    <form action="Payment.jsp" method="get" style="display: inline;">
                                        <input type="hidden" name="orderId" value="103">
                                        <input type="hidden" name="drinkName" value="Brown Sugar Boba">
                                        <input type="hidden" name="size" value="Small">
                                        <input type="hidden" name="amount" value="&#8369;120.00">
                                        <button type="submit" class="px-4 py-2 rounded-md bg-primary text-white font-semibold hover:bg-primary-dark transition flex items-center gap-2 shadow">
                                            <i class="fa-solid fa-credit-card"></i> Payment
                                        </button>
                                    </form>
                                    <button onclick="markOrderDone('103')" class="px-4 py-2 rounded-md bg-success text-white font-semibold hover:bg-primary-dark transition flex items-center gap-2 shadow">
                                        <i class="fa-solid fa-check"></i> Mark as Done
                                    </button>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <div id="active-empty" class="hidden text-center text-primary-dark/50 mt-8">
                        <i class="fa-solid fa-face-smile text-3xl"></i>
                        <p class="mt-2 text-base">No active orders right now!</p>
                    </div>
                </div>
                <div id="completed-orders-block" class="bg-secondary-light rounded-2xl border border-secondary p-6 shadow-inner">
                    <div class="flex items-center gap-2 mb-6">
                        <div class="bg-success/20 p-2 rounded-lg">
                            <i class="fa-solid fa-circle-check text-success text-xl"></i>
                        </div>
                        <h3 class="text-xl font-semibold text-accent">Completed</h3>
                        <span id="completed-count" class="ml-2 px-2 py-0.5 rounded-full text-xs font-bold bg-success text-white">2</span>
                    </div>
                    <ul id="completed-orders-list" class="space-y-5">
                        <li id="completed-order-98" class="queue-order-card bg-white rounded-xl border border-secondary-dark p-5 shadow-md group">
                            <div class="flex justify-between items-start mb-4">
                                <div class="flex items-center gap-3">
                                    <span class="text-lg font-bold text-accent">#98</span>
                                    <span class="bg-success/20 text-success px-3 py-1 rounded-full text-sm font-medium">Completed</span>
                                    <span class="bg-success/20 text-success px-3 py-1 rounded-full text-sm font-medium">Paid</span>
                                </div>
                                <span class="text-xl font-semibold text-accent">&#8369;160.00</span>
                            </div>
                            <div class="mb-4">
                                <h4 class="text-xl font-semibold text-accent mb-1">Matcha Latte</h4>
                                <div class="flex items-center gap-2 text-primary-dark/70">
                                    <span class="font-medium">Large</span>
                                </div>
                            </div>
                            <div class="bg-secondary-light rounded-lg p-3 mb-4">
                                <div class="font-medium text-primary-dark mb-2">Toppings:</div>
                                <div class="flex flex-wrap gap-2">
                                    <span class="bg-white px-3 py-1 rounded-full text-sm text-primary-dark">Cheese Foam</span>
                                    <span class="bg-white px-3 py-1 rounded-full text-sm text-primary-dark">Pearls</span>
                                </div>
                            </div>
                            <div class="flex items-center justify-between">
                                <span class="text-sm text-primary-dark/60">5 mins</span>
                            </div>
                        </li>
                        <li id="completed-order-99" class="queue-order-card bg-white rounded-xl border border-secondary-dark p-5 shadow-md group">
                            <div class="flex justify-between items-start mb-4">
                                <div class="flex items-center gap-3">
                                    <span class="text-lg font-bold text-accent">#99</span>
                                    <span class="bg-success/20 text-success px-3 py-1 rounded-full text-sm font-medium">Completed</span>
                                    <span class="bg-success/20 text-success px-3 py-1 rounded-full text-sm font-medium">Paid</span>
                                </div>
                                <span class="text-xl font-semibold text-accent">&#8369;140.00</span>
                            </div>
                            <div class="mb-4">
                                <h4 class="text-xl font-semibold text-accent mb-1">Taro Milktea</h4>
                                <div class="flex items-center gap-2 text-primary-dark/70">
                                    <span class="font-medium">Medium</span>
                                </div>
                            </div>
                            <div class="bg-secondary-light rounded-lg p-3 mb-4">
                                <div class="font-medium text-primary-dark mb-2">Toppings:</div>
                                <div class="flex flex-wrap gap-2">
                                    <span class="bg-white px-3 py-1 rounded-full text-sm text-primary-dark">2x Pearls</span>
                                </div>
                            </div>
                            <div class="flex items-center justify-between">
                                <span class="text-sm text-primary-dark/60">3 mins</span>
                            </div>
                        </li>
                    </ul>
                    <div id="completed-empty" class="hidden text-center text-primary-dark/50 mt-8">
                        <i class="fa-solid fa-face-smile-beam text-3xl"></i>
                        <p class="mt-2 text-base">No completed orders yet!</p>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <footer id="footer" class="bg-secondary text-center py-8 text-sm text-primary-dark mt-16">
        <p>© 2023 Milktea POS System. All rights reserved.</p>
        <p class="mt-1">Version 2.0.4</p>
    </footer>
    <script src="js/navigation.js"></script>
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

        // Tabs switching (active/completed)
        const tabActive = document.getElementById('tab-active');
        const tabCompleted = document.getElementById('tab-completed');
        const activeOrdersBlock = document.getElementById('active-orders-block');
        const completedOrdersBlock = document.getElementById('completed-orders-block');

        tabActive.onclick = function() {
            tabActive.classList.add('bg-primary', 'text-white', 'border-primary');
            tabActive.classList.remove('bg-secondary-light', 'text-primary-dark');
            tabCompleted.classList.remove('bg-primary', 'text-white', 'border-primary');
            tabCompleted.classList.add('bg-secondary-light', 'text-primary-dark');
            activeOrdersBlock.classList.remove('hidden');
            completedOrdersBlock.classList.remove('hidden');
            activeOrdersBlock.scrollIntoView({behavior: "smooth"});
        };
        tabCompleted.onclick = function() {
            tabCompleted.classList.add('bg-primary', 'text-white', 'border-primary');
            tabCompleted.classList.remove('bg-secondary-light', 'text-primary-dark');
            tabActive.classList.remove('bg-primary', 'text-white', 'border-primary');
            tabActive.classList.add('bg-secondary-light', 'text-primary-dark');
            activeOrdersBlock.classList.add('hidden');
            completedOrdersBlock.classList.remove('hidden');
            completedOrdersBlock.scrollIntoView({behavior: "smooth"});
        };

        // Queue-specific functionality
        document.addEventListener('DOMContentLoaded', function() {
            // Mark as Done functionality
            window.markOrderDone = function(orderId) {
                const activeOrder = document.getElementById('active-order-' + orderId);
                if (!activeOrder) return;
                
                // Clone for completed
                const completedList = document.getElementById('completed-orders-list');
                const clone = activeOrder.cloneNode(true);
                clone.id = 'completed-order-' + orderId;
                
                // Update status indicator
                const statusIndicator = clone.querySelector('.order-status-indicator');
                if (statusIndicator) {
                    statusIndicator.innerHTML = '<i class="fa-solid fa-check-circle"></i> Done';
                    statusIndicator.classList.remove('text-warning');
                    statusIndicator.classList.add('text-success');
                }
                
                // Remove the button
                const btn = clone.querySelector('button');
                if (btn) btn.remove();
                
                // Update completed time
                const textEls = clone.querySelectorAll('.text-xs.text-primary-dark\\/60');
                textEls.forEach(function(el) {
                    el.textContent = 'Completed just now';
                });
                
                // Add to completed list and remove from active
                completedList.prepend(clone);
                activeOrder.remove();
                updateCounts();
            };

            function updateCounts() {
                const activeCount = document.querySelectorAll('#active-orders-list > li').length;
                const completedCount = document.querySelectorAll('#completed-orders-list > li').length;
                
                document.getElementById('active-count').innerText = activeCount;
                document.getElementById('completed-count').innerText = completedCount;
                
                const activeEmpty = document.getElementById('active-empty');
                const completedEmpty = document.getElementById('completed-empty');
                
                if (activeEmpty) activeEmpty.classList.toggle('hidden', activeCount > 0);
                if (completedEmpty) completedEmpty.classList.toggle('hidden', completedCount > 0);
            }

            updateCounts();
        });
    </script>

</body></html>