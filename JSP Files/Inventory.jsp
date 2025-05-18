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
                <a href="Inventory.jsp" class="flex items-center gap-2 text-accent font-medium transition cursor-pointer bg-secondary-light px-4 py-2 rounded-lg">
                    <i class="fa-solid fa-boxes-stacked"></i>
                    <span>Inventory</span>
                    <span class="ml-1 w-2 h-2 rounded-full bg-accent"></span>
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
    <main id="main-inventory" class="px-8 py-10 max-w-[1440px] mx-auto">
        <section id="inventory-section" class="max-w-5xl mx-auto bg-white rounded-3xl shadow-md p-10 mb-12">
            <div class="flex justify-between items-center mb-8">
                <div>
                    <h2 class="text-3xl font-semibold text-accent mb-2 tracking-tight" id="inventory-title">Inventory Overview</h2>
                    <p class="text-base text-primary-dark/80" id="inventory-desc">Track and manage your stock levels for milktea bases, cup sizes, and toppings.</p>
                </div>
                <button class="flex items-center gap-2 bg-accent text-white px-6 py-3 rounded-xl hover:bg-accent/90 transition shadow-sm">
                    <i class="fa-solid fa-plus"></i>
                    <span>Add New Item</span>
                </button>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-3 gap-10" id="inventory-lists-grid">
                <!-- Milktea Base Section -->
                <div id="inventory-base-list" class="flex flex-col">
                    <h3 class="text-lg font-semibold text-accent mb-4 flex items-center gap-2">
                        <i class="fa-solid fa-glass-water"></i> Milktea Bases
                    </h3>
                    <div class="flex flex-col gap-4">
                        <div id="inv-card-taro" class="inventory-card flex items-center gap-4 p-4 bg-secondary-light rounded-xl border-2 border-secondary-dark shadow-sm relative group">
                            <img class="w-14 h-14 rounded-xl object-cover flex-shrink-0 bg-white" src="https://storage.googleapis.com/uxpilot-auth.appspot.com/b876defb15-5382e0c1908f956d0637.png" alt="taro bubble milk tea" />
                            <div class="flex-1">
                                <div class="font-semibold text-accent text-base">Taro Base</div>
                                <div class="text-primary-dark/60 text-xs mt-1">Earthy, creamy</div>
                                <div class="text-success text-xs mt-1">Viable for ~110 orders</div>
                            </div>
                            <div class="flex flex-col items-end min-w-[70px]">
                                <span class="text-lg font-bold text-primary-dark">22L</span>
                                <span class="text-xs text-primary-dark/50">in stock</span>
                            </div>
                            <div class="absolute right-2 top-2 opacity-0 group-hover:opacity-100 transition-opacity flex gap-1">
                                <button class="text-primary-dark hover:text-accent p-2 bg-white rounded-lg shadow-sm hover:shadow transition" title="Edit">
                                    <i class="fa-solid fa-pen-to-square"></i>
                                </button>
                                <button class="text-primary-dark hover:text-success p-2 bg-white rounded-lg shadow-sm hover:shadow transition" title="Add Stock">
                                    <i class="fa-solid fa-plus"></i>
                                </button>
                                <button class="text-primary-dark hover:text-danger p-2 bg-white rounded-lg shadow-sm hover:shadow transition" title="Remove">
                                    <i class="fa-solid fa-trash"></i>
                                </button>
                            </div>
                        </div>
                        <div id="inv-card-classic" class="inventory-card flex items-center gap-4 p-4 bg-secondary-light rounded-xl border-2 border-secondary-dark shadow-sm relative group">
                            <img class="w-14 h-14 rounded-xl object-cover flex-shrink-0 bg-white" src="https://storage.googleapis.com/uxpilot-auth.appspot.com/cfc1f7a553-2260e7776113c29ffdbe.png" alt="classic milk tea" />
                            <div class="flex-1">
                                <div class="font-semibold text-accent text-base">Classic Base</div>
                                <div class="text-primary-dark/60 text-xs mt-1">Rich black tea</div>
                                <div class="text-success text-xs mt-1">Viable for ~75 orders</div>
                            </div>
                            <div class="flex flex-col items-end min-w-[70px]">
                                <span class="text-lg font-bold text-primary-dark">15L</span>
                                <span class="text-xs text-primary-dark/50">in stock</span>
                            </div>
                            <div class="absolute right-2 top-2 opacity-0 group-hover:opacity-100 transition-opacity flex gap-1">
                                <button class="text-primary-dark hover:text-accent p-2 bg-white rounded-lg shadow-sm hover:shadow transition" title="Edit">
                                    <i class="fa-solid fa-pen-to-square"></i>
                                </button>
                                <button class="text-primary-dark hover:text-success p-2 bg-white rounded-lg shadow-sm hover:shadow transition" title="Add Stock">
                                    <i class="fa-solid fa-plus"></i>
                                </button>
                                <button class="text-primary-dark hover:text-danger p-2 bg-white rounded-lg shadow-sm hover:shadow transition" title="Remove">
                                    <i class="fa-solid fa-trash"></i>
                                </button>
                            </div>
                        </div>
                        <div id="inv-card-brownsugar" class="inventory-card flex items-center gap-4 p-4 bg-secondary-light rounded-xl border-2 border-secondary-dark shadow-sm relative group">
                            <img class="w-14 h-14 rounded-xl object-cover flex-shrink-0 bg-white" src="https://storage.googleapis.com/uxpilot-auth.appspot.com/9b4ffb3440-5204e1122be948bfc50b.png" alt="brown sugar bubble tea" />
                            <div class="flex-1">
                                <div class="font-semibold text-accent text-base">Brown Sugar Boba Base</div>
                                <div class="text-primary-dark/60 text-xs mt-1">Caramel &amp; sweet</div>
                                <div class="text-success text-xs mt-1">Viable for ~45 orders</div>
                            </div>
                            <div class="flex flex-col items-end min-w-[70px]">
                                <span class="text-lg font-bold text-primary-dark">9L</span>
                                <span class="text-xs text-primary-dark/50">in stock</span>
                            </div>
                            <div class="absolute right-2 top-2 opacity-0 group-hover:opacity-100 transition-opacity flex gap-1">
                                <button class="text-primary-dark hover:text-accent p-2 bg-white rounded-lg shadow-sm hover:shadow transition" title="Edit">
                                    <i class="fa-solid fa-pen-to-square"></i>
                                </button>
                                <button class="text-primary-dark hover:text-success p-2 bg-white rounded-lg shadow-sm hover:shadow transition" title="Add Stock">
                                    <i class="fa-solid fa-plus"></i>
                                </button>
                                <button class="text-primary-dark hover:text-danger p-2 bg-white rounded-lg shadow-sm hover:shadow transition" title="Remove">
                                    <i class="fa-solid fa-trash"></i>
                                </button>
                            </div>
                        </div>
                        <div id="inv-card-matcha" class="inventory-card flex items-center gap-4 p-4 bg-secondary-light rounded-xl border-2 border-secondary-dark shadow-sm relative group">
                            <img class="w-14 h-14 rounded-xl object-cover flex-shrink-0 bg-white" src="https://storage.googleapis.com/uxpilot-auth.appspot.com/a2c476ab26-b0905a9581396373e5d9.png" alt="matcha latte" />
                            <div class="flex-1">
                                <div class="font-semibold text-accent text-base">Matcha Latte Base</div>
                                <div class="text-primary-dark/60 text-xs mt-1">Green tea &amp; creamy</div>
                                <div class="text-success text-xs mt-1">Viable for ~60 orders</div>
                            </div>
                            <div class="flex flex-col items-end min-w-[70px]">
                                <span class="text-lg font-bold text-primary-dark">12L</span>
                                <span class="text-xs text-primary-dark/50">in stock</span>
                            </div>
                            <div class="absolute right-2 top-2 opacity-0 group-hover:opacity-100 transition-opacity flex gap-1">
                                <button class="text-primary-dark hover:text-accent p-2 bg-white rounded-lg shadow-sm hover:shadow transition" title="Edit">
                                    <i class="fa-solid fa-pen-to-square"></i>
                                </button>
                                <button class="text-primary-dark hover:text-success p-2 bg-white rounded-lg shadow-sm hover:shadow transition" title="Add Stock">
                                    <i class="fa-solid fa-plus"></i>
                                </button>
                                <button class="text-primary-dark hover:text-danger p-2 bg-white rounded-lg shadow-sm hover:shadow transition" title="Remove">
                                    <i class="fa-solid fa-trash"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Cup Sizes Section -->
                <div id="inventory-cup-sizes" class="flex flex-col">
                    <h3 class="text-lg font-semibold text-accent mb-4 flex items-center gap-2">
                        <i class="fa-solid fa-mug-saucer"></i> Cup Sizes
                    </h3>
                    <div class="flex flex-col gap-4">
                        <div id="inv-card-smallcup" class="inventory-card flex items-center gap-4 p-4 bg-secondary-light rounded-xl border-2 border-secondary-dark shadow-sm relative group">
                            <i class="fa-solid fa-mug-hot text-primary text-3xl bg-white rounded-xl w-14 h-14 flex items-center justify-center"></i>
                            <div class="flex-1">
                                <div class="font-semibold text-accent text-base">Small Cups</div>
                                <div class="text-primary-dark/60 text-xs mt-1">12oz</div>
                                <div class="text-success text-xs mt-1">Viable for 80 orders</div>
                            </div>
                            <div class="flex flex-col items-end min-w-[70px]">
                                <span class="text-lg font-bold text-primary-dark">80</span>
                                <span class="text-xs text-primary-dark/50">pcs in stock</span>
                            </div>
                            <div class="absolute right-2 top-2 opacity-0 group-hover:opacity-100 transition-opacity flex gap-1">
                                <button class="text-primary-dark hover:text-accent p-2 bg-white rounded-lg shadow-sm hover:shadow transition" title="Edit">
                                    <i class="fa-solid fa-pen-to-square"></i>
                                </button>
                                <button class="text-primary-dark hover:text-success p-2 bg-white rounded-lg shadow-sm hover:shadow transition" title="Add Stock">
                                    <i class="fa-solid fa-plus"></i>
                                </button>
                                <button class="text-primary-dark hover:text-danger p-2 bg-white rounded-lg shadow-sm hover:shadow transition" title="Remove">
                                    <i class="fa-solid fa-trash"></i>
                                </button>
                            </div>
                        </div>
                        <div id="inv-card-mediumcup" class="inventory-card flex items-center gap-4 p-4 bg-secondary-light rounded-xl border-2 border-secondary-dark shadow-sm relative group">
                            <i class="fa-solid fa-glass-water-droplet text-accent text-3xl bg-white rounded-xl w-14 h-14 flex items-center justify-center"></i>
                            <div class="flex-1">
                                <div class="font-semibold text-accent text-base">Medium Cups</div>
                                <div class="text-primary-dark/60 text-xs mt-1">16oz</div>
                                <div class="text-success text-xs mt-1">Viable for 120 orders</div>
                            </div>
                            <div class="flex flex-col items-end min-w-[70px]">
                                <span class="text-lg font-bold text-primary-dark">120</span>
                                <span class="text-xs text-primary-dark/50">pcs in stock</span>
                            </div>
                            <div class="absolute right-2 top-2 opacity-0 group-hover:opacity-100 transition-opacity flex gap-1">
                                <button class="text-primary-dark hover:text-accent p-2 bg-white rounded-lg shadow-sm hover:shadow transition" title="Edit">
                                    <i class="fa-solid fa-pen-to-square"></i>
                                </button>
                                <button class="text-primary-dark hover:text-success p-2 bg-white rounded-lg shadow-sm hover:shadow transition" title="Add Stock">
                                    <i class="fa-solid fa-plus"></i>
                                </button>
                                <button class="text-primary-dark hover:text-danger p-2 bg-white rounded-lg shadow-sm hover:shadow transition" title="Remove">
                                    <i class="fa-solid fa-trash"></i>
                                </button>
                            </div>
                        </div>
                        <div id="inv-card-largecup" class="inventory-card flex items-center gap-4 p-4 bg-secondary-light rounded-xl border-2 border-secondary-dark shadow-sm relative group">
                            <i class="fa-solid fa-cocktail text-warning text-3xl bg-white rounded-xl w-14 h-14 flex items-center justify-center"></i>
                            <div class="flex-1">
                                <div class="font-semibold text-accent text-base">Large Cups</div>
                                <div class="text-primary-dark/60 text-xs mt-1">22oz</div>
                                <div class="text-success text-xs mt-1">Viable for 55 orders</div>
                            </div>
                            <div class="flex flex-col items-end min-w-[70px]">
                                <span class="text-lg font-bold text-primary-dark">55</span>
                                <span class="text-xs text-primary-dark/50">pcs in stock</span>
                            </div>
                            <div class="absolute right-2 top-2 opacity-0 group-hover:opacity-100 transition-opacity flex gap-1">
                                <button class="text-primary-dark hover:text-accent p-2 bg-white rounded-lg shadow-sm hover:shadow transition" title="Edit">
                                    <i class="fa-solid fa-pen-to-square"></i>
                                </button>
                                <button class="text-primary-dark hover:text-success p-2 bg-white rounded-lg shadow-sm hover:shadow transition" title="Add Stock">
                                    <i class="fa-solid fa-plus"></i>
                                </button>
                                <button class="text-primary-dark hover:text-danger p-2 bg-white rounded-lg shadow-sm hover:shadow transition" title="Remove">
                                    <i class="fa-solid fa-trash"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Toppings Section -->
                <div id="inventory-toppings-list" class="flex flex-col">
                    <h3 class="text-lg font-semibold text-accent mb-4 flex items-center gap-2">
                        <i class="fa-solid fa-ice-cream"></i> Toppings
                    </h3>
                    <div class="flex flex-col gap-4">
                        <div id="inv-card-pearls" class="inventory-card flex items-center gap-4 p-4 bg-secondary-light rounded-xl border-2 border-secondary-dark shadow-sm relative group">
                            <i class="fa-solid fa-circle-dot text-accent text-3xl bg-white rounded-xl w-14 h-14 flex items-center justify-center"></i>
                            <div class="flex-1">
                                <div class="font-semibold text-accent text-base">Pearls</div>
                                <div class="text-primary-dark/60 text-xs mt-1">Classic chewy</div>
                                <div class="text-success text-xs mt-1">Viable for ~250 orders</div>
                            </div>
                            <div class="flex flex-col items-end min-w-[70px]">
                                <span class="text-lg font-bold text-primary-dark">5kg</span>
                                <span class="text-xs text-primary-dark/50">in stock</span>
                            </div>
                            <div class="absolute right-2 top-2 opacity-0 group-hover:opacity-100 transition-opacity flex gap-1">
                                <button class="text-primary-dark hover:text-accent p-2 bg-white rounded-lg shadow-sm hover:shadow transition" title="Edit">
                                    <i class="fa-solid fa-pen-to-square"></i>
                                </button>
                                <button class="text-primary-dark hover:text-success p-2 bg-white rounded-lg shadow-sm hover:shadow transition" title="Add Stock">
                                    <i class="fa-solid fa-plus"></i>
                                </button>
                                <button class="text-primary-dark hover:text-danger p-2 bg-white rounded-lg shadow-sm hover:shadow transition" title="Remove">
                                    <i class="fa-solid fa-trash"></i>
                                </button>
                            </div>
                        </div>
                        <div id="inv-card-cheesefoam" class="inventory-card flex items-center gap-4 p-4 bg-secondary-light rounded-xl border-2 border-secondary-dark shadow-sm relative group">
                            <i class="fa-solid fa-cheese text-warning text-3xl bg-white rounded-xl w-14 h-14 flex items-center justify-center"></i>
                            <div class="flex-1">
                                <div class="font-semibold text-accent text-base">Cheese Foam</div>
                                <div class="text-primary-dark/60 text-xs mt-1">Savory topping</div>
                                <div class="text-success text-xs mt-1">Viable for ~100 orders</div>
                            </div>
                            <div class="flex flex-col items-end min-w-[70px]">
                                <span class="text-lg font-bold text-primary-dark">2L</span>
                                <span class="text-xs text-primary-dark/50">in stock</span>
                            </div>
                            <div class="absolute right-2 top-2 opacity-0 group-hover:opacity-100 transition-opacity flex gap-1">
                                <button class="text-primary-dark hover:text-accent p-2 bg-white rounded-lg shadow-sm hover:shadow transition" title="Edit">
                                    <i class="fa-solid fa-pen-to-square"></i>
                                </button>
                                <button class="text-primary-dark hover:text-success p-2 bg-white rounded-lg shadow-sm hover:shadow transition" title="Add Stock">
                                    <i class="fa-solid fa-plus"></i>
                                </button>
                                <button class="text-primary-dark hover:text-danger p-2 bg-white rounded-lg shadow-sm hover:shadow transition" title="Remove">
                                    <i class="fa-solid fa-trash"></i>
                                </button>
                            </div>
                        </div>
                        <div id="inv-card-pudding" class="inventory-card flex items-center gap-4 p-4 bg-secondary-light rounded-xl border-2 border-secondary-dark shadow-sm relative group">
                            <i class="fa-solid fa-cube text-warning text-3xl bg-white rounded-xl w-14 h-14 flex items-center justify-center"></i>
                            <div class="flex-1">
                                <div class="font-semibold text-accent text-base">Pudding</div>
                                <div class="text-primary-dark/60 text-xs mt-1">Egg-based jelly</div>
                                <div class="text-success text-xs mt-1">Viable for ~75 orders</div>
                            </div>
                            <div class="flex flex-col items-end min-w-[70px]">
                                <span class="text-lg font-bold text-primary-dark">1.5kg</span>
                                <span class="text-xs text-primary-dark/50">in stock</span>
                            </div>
                            <div class="absolute right-2 top-2 opacity-0 group-hover:opacity-100 transition-opacity flex gap-1">
                                <button class="text-primary-dark hover:text-accent p-2 bg-white rounded-lg shadow-sm hover:shadow transition" title="Edit">
                                    <i class="fa-solid fa-pen-to-square"></i>
                                </button>
                                <button class="text-primary-dark hover:text-success p-2 bg-white rounded-lg shadow-sm hover:shadow transition" title="Add Stock">
                                    <i class="fa-solid fa-plus"></i>
                                </button>
                                <button class="text-primary-dark hover:text-danger p-2 bg-white rounded-lg shadow-sm hover:shadow transition" title="Remove">
                                    <i class="fa-solid fa-trash"></i>
                                </button>
                            </div>
                        </div>
                        <div id="inv-card-oreocrunch" class="inventory-card flex items-center gap-4 p-4 bg-secondary-light rounded-xl border-2 border-secondary-dark shadow-sm relative group">
                            <i class="fa-solid fa-cookie-bite text-accent text-3xl bg-white rounded-xl w-14 h-14 flex items-center justify-center"></i>
                            <div class="flex-1">
                                <div class="font-semibold text-accent text-base">Oreo Crunch</div>
                                <div class="text-primary-dark/60 text-xs mt-1">Cookie topping</div>
                                <div class="text-success text-xs mt-1">Viable for ~60 orders</div>
                            </div>
                            <div class="flex flex-col items-end min-w-[70px]">
                                <span class="text-lg font-bold text-primary-dark">1.2kg</span>
                                <span class="text-xs text-primary-dark/50">in stock</span>
                            </div>
                            <div class="absolute right-2 top-2 opacity-0 group-hover:opacity-100 transition-opacity flex gap-1">
                                <button class="text-primary-dark hover:text-accent p-2 bg-white rounded-lg shadow-sm hover:shadow transition" title="Edit">
                                    <i class="fa-solid fa-pen-to-square"></i>
                                </button>
                                <button class="text-primary-dark hover:text-success p-2 bg-white rounded-lg shadow-sm hover:shadow transition" title="Add Stock">
                                    <i class="fa-solid fa-plus"></i>
                                </button>
                                <button class="text-primary-dark hover:text-danger p-2 bg-white rounded-lg shadow-sm hover:shadow transition" title="Remove">
                                    <i class="fa-solid fa-trash"></i>
                                </button>
                            </div>
                        </div>
                        <div id="inv-card-grassjelly" class="inventory-card flex items-center gap-4 p-4 bg-secondary-light rounded-xl border-2 border-secondary-dark shadow-sm relative group">
                            <i class="fa-solid fa-leaf text-success text-3xl bg-white rounded-xl w-14 h-14 flex items-center justify-center"></i>
                            <div class="flex-1">
                                <div class="font-semibold text-accent text-base">Grass Jelly</div>
                                <div class="text-primary-dark/60 text-xs mt-1">Herbal jelly</div>
                                <div class="text-success text-xs mt-1">Viable for ~100 orders</div>
                            </div>
                            <div class="flex flex-col items-end min-w-[70px]">
                                <span class="text-lg font-bold text-primary-dark">2kg</span>
                                <span class="text-xs text-primary-dark/50">in stock</span>
                            </div>
                            <div class="absolute right-2 top-2 opacity-0 group-hover:opacity-100 transition-opacity flex gap-1">
                                <button class="text-primary-dark hover:text-accent p-2 bg-white rounded-lg shadow-sm hover:shadow transition" title="Edit">
                                    <i class="fa-solid fa-pen-to-square"></i>
                                </button>
                                <button class="text-primary-dark hover:text-success p-2 bg-white rounded-lg shadow-sm hover:shadow transition" title="Add Stock">
                                    <i class="fa-solid fa-plus"></i>
                                </button>
                                <button class="text-primary-dark hover:text-danger p-2 bg-white rounded-lg shadow-sm hover:shadow transition" title="Remove">
                                    <i class="fa-solid fa-trash"></i>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <footer id="footer" class="bg-secondary text-center py-8 text-sm text-primary-dark mt-16">
        <p>© 2023 Milktea POS System. All rights reserved.</p>
        <p class="mt-1">Version 2.0.4</p>
    </footer>

    <!-- Modal Backdrop -->
    <div id="modal-backdrop" class="fixed inset-0 bg-black/50 hidden" onclick="closeAllModals()"></div>

    <!-- Edit Item Modal -->
    <div id="edit-modal" class="fixed top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2 bg-white rounded-2xl shadow-xl w-[500px] hidden">
        <div class="p-6 border-b border-secondary">
            <h3 class="text-xl font-semibold text-accent">Edit Item</h3>
        </div>
        <div class="p-6">
            <div class="mb-4">
                <label class="block text-primary-dark font-medium mb-2">Item Name</label>
                <input type="text" id="edit-name" class="w-full px-4 py-2 rounded-xl border border-secondary-dark focus:border-primary focus:outline-none" />
            </div>
            <div class="mb-4">
                <label class="block text-primary-dark font-medium mb-2">Current Stock</label>
                <input type="number" id="edit-stock" class="w-full px-4 py-2 rounded-xl border border-secondary-dark focus:border-primary focus:outline-none" />
            </div>
            <div class="mb-4">
                <label class="block text-primary-dark font-medium mb-2">Description</label>
                <textarea id="edit-desc" class="w-full px-4 py-2 rounded-xl border border-secondary-dark focus:border-primary focus:outline-none" rows="2"></textarea>
            </div>
        </div>
        <div class="p-6 border-t border-secondary bg-secondary-light rounded-b-2xl flex justify-end gap-3">
            <button onclick="closeAllModals()" class="px-4 py-2 text-primary-dark font-medium hover:text-accent transition">Cancel</button>
            <button onclick="handleEdit()" class="px-6 py-2 bg-primary text-white font-medium rounded-xl hover:bg-primary-dark transition shadow">Save Changes</button>
        </div>
    </div>

    <!-- Add Stock Modal -->
    <div id="add-stock-modal" class="fixed top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2 bg-white rounded-2xl shadow-xl w-[400px] hidden">
        <div class="p-6 border-b border-secondary">
            <h3 class="text-xl font-semibold text-accent">Add Stock</h3>
        </div>
        <div class="p-6">
            <div class="mb-4">
                <label class="block text-primary-dark font-medium mb-2">Current Stock</label>
                <p id="current-stock" class="text-primary-dark mb-4">Current: <span class="font-semibold">0</span></p>
            </div>
            <div class="mb-4">
                <label class="block text-primary-dark font-medium mb-2">Amount to Add</label>
                <input type="number" id="add-amount" class="w-full px-4 py-2 rounded-xl border border-secondary-dark focus:border-primary focus:outline-none" min="1" />
            </div>
        </div>
        <div class="p-6 border-t border-secondary bg-secondary-light rounded-b-2xl flex justify-end gap-3">
            <button onclick="closeAllModals()" class="px-4 py-2 text-primary-dark font-medium hover:text-accent transition">Cancel</button>
            <button onclick="handleAddStock()" class="px-6 py-2 bg-success text-white font-medium rounded-xl hover:bg-primary-dark transition shadow">Add Stock</button>
        </div>
    </div>

    <!-- Remove Item Modal -->
    <div id="remove-modal" class="fixed top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2 bg-white rounded-2xl shadow-xl w-[400px] hidden">
        <div class="p-6 border-b border-secondary">
            <h3 class="text-xl font-semibold text-danger">Remove Item</h3>
        </div>
        <div class="p-6">
            <div class="flex items-center justify-center text-danger mb-4">
                <i class="fa-solid fa-triangle-exclamation text-4xl"></i>
            </div>
            <p class="text-primary-dark text-center mb-2">Are you sure you want to remove this item?</p>
            <p class="text-primary-dark/60 text-sm text-center">This action cannot be undone.</p>
        </div>
        <div class="p-6 border-t border-secondary bg-secondary-light rounded-b-2xl flex justify-end gap-3">
            <button onclick="closeAllModals()" class="px-4 py-2 text-primary-dark font-medium hover:text-accent transition">Cancel</button>
            <button onclick="handleRemove()" class="px-6 py-2 bg-danger text-white font-medium rounded-xl hover:bg-red-600 transition shadow">Remove Item</button>
        </div>
    </div>

    <!-- Add New Item Modal -->
    <div id="add-new-modal" class="fixed top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2 bg-white rounded-2xl shadow-xl w-[500px] hidden">
        <div class="p-6 border-b border-secondary">
            <h3 class="text-xl font-semibold text-accent">Add New Item</h3>
        </div>
        <div class="p-6">
            <div class="mb-4">
                <label class="block text-primary-dark font-medium mb-2">Category</label>
                <select id="add-new-category" class="w-full px-4 py-2 rounded-xl border border-secondary-dark focus:border-primary focus:outline-none">
                    <option value="base">Milktea Base</option>
                    <option value="cup">Cup Size</option>
                    <option value="topping">Topping</option>
                </select>
            </div>
            <div class="mb-4">
                <label class="block text-primary-dark font-medium mb-2">Item Name</label>
                <input type="text" id="add-new-name" class="w-full px-4 py-2 rounded-xl border border-secondary-dark focus:border-primary focus:outline-none" placeholder="Enter item name" />
            </div>
            <div class="mb-4">
                <label class="block text-primary-dark font-medium mb-2">Initial Stock</label>
                <div class="flex items-center gap-2">
                    <input type="number" id="add-new-stock" class="w-full px-4 py-2 rounded-xl border border-secondary-dark focus:border-primary focus:outline-none" placeholder="Enter initial stock" />
                    <select id="add-new-unit" class="px-4 py-2 rounded-xl border border-secondary-dark focus:border-primary focus:outline-none">
                        <option value="L">Liters (L)</option>
                        <option value="kg">Kilograms (kg)</option>
                        <option value="pcs">Pieces (pcs)</option>
                    </select>
                </div>
            </div>
            <div class="mb-4">
                <label class="block text-primary-dark font-medium mb-2">Description</label>
                <textarea id="add-new-desc" class="w-full px-4 py-2 rounded-xl border border-secondary-dark focus:border-primary focus:outline-none" rows="2" placeholder="Enter item description"></textarea>
            </div>
        </div>
        <div class="p-6 border-t border-secondary bg-secondary-light rounded-b-2xl flex justify-end gap-3">
            <button onclick="closeAllModals()" class="px-4 py-2 text-primary-dark font-medium hover:text-accent transition">Cancel</button>
            <button onclick="handleAddNew()" class="px-6 py-2 bg-accent text-white font-medium rounded-xl hover:bg-accent/90 transition shadow">Add Item</button>
        </div>
    </div>

    <script>
        // Store current item being edited/removed
        let currentItem = null;

        function showEditModal(itemId) {
            currentItem = itemId;
            const item = document.getElementById(itemId);
            const name = item.querySelector('.font-semibold').textContent;
            const desc = item.querySelector('.text-primary-dark\\/60').textContent;
            const stock = item.querySelector('.font-bold').textContent;
            
            document.getElementById('edit-name').value = name;
            document.getElementById('edit-desc').value = desc;
            document.getElementById('edit-stock').value = stock.replace(/[^0-9.]/g, '');
            
            document.getElementById('modal-backdrop').classList.remove('hidden');
            document.getElementById('edit-modal').classList.remove('hidden');
        }

        function showAddStockModal(itemId) {
            currentItem = itemId;
            const item = document.getElementById(itemId);
            const stock = item.querySelector('.font-bold').textContent;
            
            document.getElementById('current-stock').querySelector('span').textContent = stock;
            document.getElementById('add-amount').value = '';
            
            document.getElementById('modal-backdrop').classList.remove('hidden');
            document.getElementById('add-stock-modal').classList.remove('hidden');
        }

        function showRemoveModal(itemId) {
            currentItem = itemId;
            document.getElementById('modal-backdrop').classList.remove('hidden');
            document.getElementById('remove-modal').classList.remove('hidden');
        }

        function showAddNewModal() {
            document.getElementById('modal-backdrop').classList.remove('hidden');
            document.getElementById('add-new-modal').classList.remove('hidden');
            
            // Reset form fields
            document.getElementById('add-new-category').value = 'base';
            document.getElementById('add-new-name').value = '';
            document.getElementById('add-new-stock').value = '';
            document.getElementById('add-new-desc').value = '';
            document.getElementById('add-new-unit').value = 'L';
        }

        function closeAllModals() {
            document.getElementById('modal-backdrop').classList.add('hidden');
            document.getElementById('edit-modal').classList.add('hidden');
            document.getElementById('add-stock-modal').classList.add('hidden');
            document.getElementById('remove-modal').classList.add('hidden');
            document.getElementById('add-new-modal').classList.add('hidden');
            currentItem = null;
        }

        function handleEdit() {
            // Handle edit logic here
            console.log('Editing item:', currentItem);
            closeAllModals();
        }

        function handleAddStock() {
            // Handle add stock logic here
            console.log('Adding stock to item:', currentItem);
            closeAllModals();
        }

        function handleRemove() {
            // Handle remove logic here
            console.log('Removing item:', currentItem);
            closeAllModals();
        }

        function handleAddNew() {
            const category = document.getElementById('add-new-category').value;
            const name = document.getElementById('add-new-name').value;
            const stock = document.getElementById('add-new-stock').value;
            const unit = document.getElementById('add-new-unit').value;
            const desc = document.getElementById('add-new-desc').value;
            
            // Handle add new item logic here
            console.log('Adding new item:', { category, name, stock, unit, desc });
            closeAllModals();
        }

        // Initialize modals and button handlers
        document.addEventListener('DOMContentLoaded', function() {
            // Get all inventory cards
            const cards = document.querySelectorAll('.inventory-card');
            
            cards.forEach(card => {
                // Find all action buttons in each card
                const editBtn = card.querySelector('button[title="Edit"]');
                const addBtn = card.querySelector('button[title="Add Stock"]');
                const removeBtn = card.querySelector('button[title="Remove"]');
                
                // Add click handlers
                if (editBtn) {
                    editBtn.addEventListener('click', function(e) {
                        e.preventDefault();
                        e.stopPropagation();
                        showEditModal(card.id);
                    });
                }
                
                if (addBtn) {
                    addBtn.addEventListener('click', function(e) {
                        e.preventDefault();
                        e.stopPropagation();
                        showAddStockModal(card.id);
                    });
                }
                
                if (removeBtn) {
                    removeBtn.addEventListener('click', function(e) {
                        e.preventDefault();
                        e.stopPropagation();
                        showRemoveModal(card.id);
                    });
                }
            });

            // Add escape key handler for modals
            document.addEventListener('keydown', function(e) {
                if (e.key === 'Escape') {
                    closeAllModals();
                }
            });

            // Prevent modal backdrop from closing when clicking modal content
            const modals = document.querySelectorAll('#edit-modal, #add-stock-modal, #remove-modal, #add-new-modal');
            modals.forEach(modal => {
                modal.addEventListener('click', function(e) {
                    e.stopPropagation();
                });
            });

            // Add New Item button handler
            const addNewBtn = document.querySelector('button.bg-accent');
            if (addNewBtn) {
                addNewBtn.addEventListener('click', function(e) {
                    e.preventDefault();
                    e.stopPropagation();
                    showAddNewModal();
                });
            }
        });
    </script>
    <script src="js/navigation.js"></script>
</body></html>