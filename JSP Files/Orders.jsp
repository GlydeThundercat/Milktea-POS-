<!DOCTYPE html><html xmlns="http://www.w3.org/1999/xhtml"><head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://cdn.tailwindcss.com"></script>
    <script> window.FontAwesomeConfig = { autoReplaceSvg: 'nest'};</script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/js/all.min.js" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    
    <style>::-webkit-scrollbar { display: none;}</style>
    <script>
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
                <a href="Orders.jsp" class="flex items-center gap-2 text-accent font-medium transition cursor-pointer bg-secondary-light px-4 py-2 rounded-lg">
                    <i class="fa-solid fa-receipt"></i>
                    <span>Orders</span>
                    <span class="ml-1 w-2 h-2 rounded-full bg-accent"></span>
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

    <main id="main-customer-order" class="px-8 py-10 max-w-[1440px] mx-auto">
        <section id="order-form-section" class="max-w-5xl mx-auto bg-white rounded-3xl shadow-md p-10 mb-12">
            <h2 class="text-3xl font-semibold text-accent mb-2 tracking-tight" id="order-form-title">New Customer Order</h2>
            <p class="text-base text-primary-dark/80 mb-8" id="order-form-desc">Select the milktea base, customize your drink, and process the order efficiently.</p>
            <div class="grid grid-cols-1 md:grid-cols-3 gap-10" id="order-form-main-grid">
                <!-- Left: Milktea Base Selection -->
                <div id="milktea-base-selection" class="col-span-1">
                    <h3 class="text-lg font-semibold text-accent mb-5 flex items-center gap-2"><i class="fa-solid fa-glass-water"></i> Choose Base</h3>
                    <div class="flex flex-col gap-5" id="base-cards-list">
                        <div id="card-base-taro" class="milktea-base-card group cursor-pointer border-2 border-secondary-dark bg-secondary-light rounded-xl hover:border-primary transition-shadow hover:shadow-lg p-4 flex gap-4 items-center" onclick="selectBase('Taro')">
                            <div class="w-16 h-16 rounded-xl overflow-hidden flex-shrink-0 bg-white flex items-center justify-center shadow-inner">
                                <img class="object-cover w-full h-full" src="https://storage.googleapis.com/uxpilot-auth.appspot.com/0044052c76-943f885a34d1526ba728.png" alt="taro bubble milk tea in a cup, pastel beige neutral background, photorealistic, professional beverage shop, soft studio light" />
                            </div>
                            <div>
                                <div class="text-accent font-semibold text-base">Taro Milktea</div>
                                <div class="text-primary-dark/60 text-xs mt-1">Earthy &amp; creamy, crowd favorite</div>
                            </div>
                            <span class="ml-auto hidden group-[.selected]:block text-primary">
                                <i class="fa-solid fa-circle-check text-2xl"></i>
                            </span>
                        </div>
                        <div id="card-base-classic" class="milktea-base-card group cursor-pointer border-2 border-secondary-dark bg-secondary-light rounded-xl hover:border-primary transition-shadow hover:shadow-lg p-4 flex gap-4 items-center" onclick="selectBase('Classic')">
                            <div class="w-16 h-16 rounded-xl overflow-hidden flex-shrink-0 bg-white flex items-center justify-center shadow-inner">
                                <img class="object-cover w-full h-full" src="https://storage.googleapis.com/uxpilot-auth.appspot.com/202d2b4e4c-461f95f50cc304f23ac6.png" alt="classic bubble milk tea in a cup, beige neutral background, photorealistic, professional beverage shop, soft studio light" />
                            </div>
                            <div>
                                <div class="text-accent font-semibold text-base">Classic Milktea</div>
                                <div class="text-primary-dark/60 text-xs mt-1">Rich black tea, original taste</div>
                            </div>
                            <span class="ml-auto hidden group-[.selected]:block text-primary">
                                <i class="fa-solid fa-circle-check text-2xl"></i>
                            </span>
                        </div>
                        <div id="card-base-brownsugar" class="milktea-base-card group cursor-pointer border-2 border-secondary-dark bg-secondary-light rounded-xl hover:border-primary transition-shadow hover:shadow-lg p-4 flex gap-4 items-center" onclick="selectBase('Brown Sugar')">
                            <div class="w-16 h-16 rounded-xl overflow-hidden flex-shrink-0 bg-white flex items-center justify-center shadow-inner">
                                <img class="object-cover w-full h-full" src="https://storage.googleapis.com/uxpilot-auth.appspot.com/f23c74ad1c-0a06c4ebd7e01a0fd784.png" alt="brown sugar bubble milk tea in a cup, caramel swirl, beige background, photorealistic, professional beverage shop, soft studio light" />
                            </div>
                            <div>
                                <div class="text-accent font-semibold text-base">Brown Sugar Boba</div>
                                <div class="text-primary-dark/60 text-xs mt-1">Caramelized &amp; sweet, with pearls</div>
                            </div>
                            <span class="ml-auto hidden group-[.selected]:block text-primary">
                                <i class="fa-solid fa-circle-check text-2xl"></i>
                            </span>
                        </div>
                        <div id="card-base-matcha" class="milktea-base-card group cursor-pointer border-2 border-secondary-dark bg-secondary-light rounded-xl hover:border-primary transition-shadow hover:shadow-lg p-4 flex gap-4 items-center" onclick="selectBase('Matcha')">
                            <div class="w-16 h-16 rounded-xl overflow-hidden flex-shrink-0 bg-white flex items-center justify-center shadow-inner">
                                <img class="object-cover w-full h-full" src="https://storage.googleapis.com/uxpilot-auth.appspot.com/84eadb278f-ebd924ec897db7a3f4e4.png" alt="matcha bubble milk tea in a cup, subtle green, neutral beige background, photorealistic, professional beverage shop, soft studio light" />
                            </div>
                            <div>
                                <div class="text-accent font-semibold text-base">Matcha Latte</div>
                                <div class="text-primary-dark/60 text-xs mt-1">Japanese matcha, creamy latte</div>
                            </div>
                            <span class="ml-auto hidden group-[.selected]:block text-primary">
                                <i class="fa-solid fa-circle-check text-2xl"></i>
                            </span>
                        </div>
                    </div>
                </div>
                <!-- Middle: Size & Topping Selection -->
                <div id="size-topping-selection" class="col-span-1">
                    <div class="mb-8">
                        <h3 class="text-lg font-semibold text-accent mb-3 flex items-center gap-2"><i class="fa-solid fa-ruler-combined"></i> Select Size</h3>
                        <div class="grid grid-cols-3 gap-3" id="size-options">
                            <button type="button" id="size-small" class="size-btn px-4 py-3 rounded-xl border-2 border-secondary-dark bg-secondary-light text-primary-dark font-medium text-base hover:border-primary transition flex items-center justify-center" onclick="selectSize('Small')">
                                Small
                            </button>
                            <button type="button" id="size-medium" class="size-btn px-4 py-3 rounded-xl border-2 border-secondary-dark bg-secondary-light text-primary-dark font-medium text-base hover:border-primary transition flex items-center justify-center" onclick="selectSize('Medium')">
                                Medium
                            </button>
                            <button type="button" id="size-large" class="size-btn px-4 py-3 rounded-xl border-2 border-secondary-dark bg-secondary-light text-primary-dark font-medium text-base hover:border-primary transition flex items-center justify-center" onclick="selectSize('Large')">
                                Large
                            </button>
                        </div>
                    </div>
                    <div>
                        <h3 class="text-lg font-semibold text-accent mb-3 flex items-center gap-2">
                            <i class="fa-solid fa-ice-cream"></i> Add Toppings
                        </h3>
                        <div id="topping-options" class="grid grid-cols-2 gap-3 mb-8">
                            <button type="button" class="topping-btn w-full px-4 py-3 rounded-xl border-2 border-secondary-dark bg-white hover:border-primary transition flex items-center gap-2 text-primary-dark hover:bg-primary/10" onclick="toggleTopping('Pearls')">
                                <i class="fa-solid fa-circle-dot text-accent text-lg"></i>
                                <span class="font-medium">Pearls</span>
                            </button>
                            <button type="button" class="topping-btn w-full px-4 py-3 rounded-xl border-2 border-secondary-dark bg-white hover:border-primary transition flex items-center gap-2 text-primary-dark hover:bg-primary/10" onclick="toggleTopping('Cheese Foam')">
                                <i class="fa-solid fa-cheese text-warning text-lg"></i>
                                <span class="font-medium">Cheese Foam</span>
                            </button>
                            <button type="button" class="topping-btn w-full px-4 py-3 rounded-xl border-2 border-secondary-dark bg-white hover:border-primary transition flex items-center gap-2 text-primary-dark hover:bg-primary/10" onclick="toggleTopping('Pudding')">
                                <i class="fa-solid fa-cube text-warning text-lg"></i>
                                <span class="font-medium">Pudding</span>
                            </button>
                            <button type="button" class="topping-btn w-full px-4 py-3 rounded-xl border-2 border-secondary-dark bg-white hover:border-primary transition flex items-center gap-2 text-primary-dark hover:bg-primary/10" onclick="toggleTopping('Oreo Crunch')">
                                <i class="fa-solid fa-cookie-bite text-accent text-lg"></i>
                                <span class="font-medium">Oreo Crunch</span>
                            </button>
                            <button type="button" class="topping-btn w-full px-4 py-3 rounded-xl border-2 border-secondary-dark bg-white hover:border-primary transition flex items-center gap-2 text-primary-dark hover:bg-primary/10" onclick="toggleTopping('Grass Jelly')">
                                <i class="fa-solid fa-leaf text-success text-lg"></i>
                                <span class="font-medium">Grass Jelly</span>
                            </button>
                        </div>
                        <div class="flex gap-4 items-center" id="quantity-selection">
                            <h3 class="text-lg font-semibold text-accent flex items-center gap-2 mb-0"><i class="fa-solid fa-sort-numeric-up"></i> Quantity</h3>
                            <button type="button" onclick="updateQuantity(-1)" class="w-8 h-8 flex items-center justify-center rounded-lg bg-secondary hover:bg-primary-light transition text-accent text-xl font-bold">-</button>
                            <span id="order-qty" class="text-xl text-primary-dark font-semibold w-8 text-center">1</span>
                            <button type="button" onclick="updateQuantity(1)" class="w-8 h-8 flex items-center justify-center rounded-lg bg-secondary hover:bg-primary-light transition text-accent text-xl font-bold">+</button>
                        </div>
                    </div>
                </div>
                <!-- Right: Summary and Submit -->
                <div id="order-summary-section" class="col-span-1 flex flex-col justify-between bg-secondary-light rounded-2xl p-6 shadow-inner border border-secondary">
                    <div>
                        <h3 class="text-lg font-semibold text-accent mb-4 flex items-center gap-2"><i class="fa-solid fa-clipboard-check"></i> Order Summary</h3>
                        <ul class="text-primary-dark text-base mb-4 space-y-2">
                            <li id="summary-base" class="flex justify-between items-center">
                                <span>Base:</span>
                                <span id="summary-base-value" class="font-medium"></span>
                            </li>
                            <li id="summary-size" class="flex justify-between items-center">
                                <span>Size:</span>
                                <span id="summary-size-value" class="font-medium"></span>
                            </li>
                            <li id="summary-toppings" class="flex justify-between items-start gap-1">
                                <span>Toppings:</span>
                                <span id="summary-toppings-value" class="font-medium text-right block"></span>
                            </li>
                            <li id="summary-qty" class="flex justify-between items-center">
                                <span>Quantity:</span>
                                <span id="summary-qty-value" class="font-medium">1</span>
                            </li>
                        </ul>
                        <div class="flex justify-between items-center text-xl font-bold text-accent mt-6 border-t pt-4">
                            <span>Total:</span>
                            <span id="summary-total-value">₱0.00</span>
                        </div>
                    </div>
                    <button type="button" id="submit-order-btn" class="mt-8 py-4 w-full bg-primary hover:bg-primary-dark text-white rounded-xl text-lg font-semibold transition-all shadow-md flex items-center justify-center gap-2 disabled:opacity-60 disabled:cursor-not-allowed" onclick="submitOrder()" disabled="">
                        <i class="fa-solid fa-cart-plus"></i> Place Order
                    </button>
                </div>
            </div>
        </section>
    </main>
    <footer id="footer" class="bg-secondary text-center py-8 text-sm text-primary-dark mt-16">
        <p>© 2023 Milktea POS System. All rights reserved.</p>
        <p class="mt-1">Version 2.0.4</p>
    </footer>
    <script>
        // Store order state
        let selectedBase = '';
        let selectedSize = '';
        let selectedToppings = [];
        let quantity = 1;
        
        // Pricing configuration
        const basePrices = {
            'Taro': 90,
            'Classic': 80,
            'Brown Sugar': 100,
            'Matcha': 110
        };
        
        const sizeAdd = {
            'Small': 0,
            'Medium': 15,
            'Large': 25
        };
        
        const toppingPrices = {
            'Pearls': 10,
            'Cheese Foam': 20,
            'Pudding': 15,
            'Oreo Crunch': 15,
            'Grass Jelly': 10
        };

        function updateSummary() {
            // Update base selection
            document.getElementById('summary-base-value').innerText = selectedBase || 'Not selected';
            
            // Update size selection
            document.getElementById('summary-size-value').innerText = selectedSize || 'Not selected';
            
            // Update toppings list
            document.getElementById('summary-toppings-value').innerText = selectedToppings.length > 0 
                ? selectedToppings.join(', ') 
                : 'None';
            
            // Update quantity
            document.getElementById('summary-qty-value').innerText = quantity;
            
            // Calculate total price
            let total = 0;
            if (basePrices[selectedBase] && sizeAdd[selectedSize] !== undefined) {
                total = (basePrices[selectedBase] + sizeAdd[selectedSize]);
                selectedToppings.forEach(t => {
                    total += toppingPrices[t] || 0;
                });
                total *= quantity;
            }
            
            // Update total price display
            document.getElementById('summary-total-value').innerText = '\u20B1' + total.toLocaleString(undefined, {
                minimumFractionDigits: 2,
                maximumFractionDigits: 2
            });
            
            // Enable/disable order button based on required selections
            document.getElementById('submit-order-btn').disabled = !(selectedBase && selectedSize);
        }

        function selectBase(base) {
            // Deselect all base cards first
            document.querySelectorAll('.milktea-base-card').forEach(card => {
                card.classList.remove('selected', 'border-primary');
            });
            
            // Select the clicked base
            selectedBase = base;
            const baseCard = document.getElementById('card-base-' + base.toLowerCase().replace(' ', ''));
            if (baseCard) {
                baseCard.classList.add('selected', 'border-primary');
            }
            
            updateSummary();
        }

        function selectSize(size) {
            // Deselect all size buttons first
            document.querySelectorAll('.size-btn').forEach(btn => {
                btn.classList.remove('bg-primary', 'text-white', 'border-primary');
            });
            
            // Select the clicked size
            selectedSize = size;
            const sizeBtn = document.getElementById('size-' + size.toLowerCase());
            if (sizeBtn) {
                sizeBtn.classList.add('bg-primary', 'text-white', 'border-primary');
            }
            
            updateSummary();
        }

        function toggleTopping(topping) {
            const idx = selectedToppings.indexOf(topping);
            const buttons = document.querySelectorAll('.topping-btn');
            
            if (idx > -1) {
                // Remove topping if already selected
                selectedToppings.splice(idx, 1);
                buttons.forEach(btn => {
                    if (btn.innerText.includes(topping)) {
                        btn.classList.remove('bg-primary', 'text-white');
                        btn.classList.add('bg-white');
                        btn.classList.remove('border-primary');
                        btn.classList.add('border-secondary-dark');
                    }
                });
            } else {
                // Add new topping
                selectedToppings.push(topping);
                buttons.forEach(btn => {
                    if (btn.innerText.includes(topping)) {
                        btn.classList.remove('bg-white');
                        btn.classList.add('bg-primary/20');
                        btn.classList.remove('border-secondary-dark');
                        btn.classList.add('border-primary');
                    }
                });
            }
            
            updateSummary();
        }

        function updateQuantity(change) {
            const newQty = quantity + change;
            // Limit quantity between 1 and 10
            if (newQty >= 1 && newQty <= 10) {
                quantity = newQty;
                document.getElementById('order-qty').innerText = quantity;
                updateSummary();
            }
        }

        function submitOrder() {
            if (!selectedBase || !selectedSize) {
                alert('Please select both a base drink and size before placing the order.');
                return;
            }
            
            const orderDetails = {
                base: selectedBase,
                size: selectedSize,
                toppings: selectedToppings,
                quantity: quantity
            };
            
            console.log('Order submitted:', orderDetails);
            alert('Order submitted successfully!');
        }

        // User menu toggle functionality
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

        // Initialize the summary on page load
        updateSummary();
    </script>
    <script src="js/navigation.js"></script>
</body></html>