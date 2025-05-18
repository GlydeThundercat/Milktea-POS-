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
                <a href="Management.jsp" class="flex items-center gap-2 text-accent font-medium transition cursor-pointer bg-secondary-light px-4 py-2 rounded-lg">
                    <i class="fa-solid fa-user-gear"></i>
                    <span>Management</span>
                    <span class="ml-1 w-2 h-2 rounded-full bg-accent"></span>
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
    <main id="main-user-management" class="px-8 py-10 max-w-[1440px] mx-auto">
        <section id="user-management-section" class="max-w-5xl mx-auto bg-white rounded-3xl shadow-md p-10 mb-12">
            <div class="flex items-center justify-between mb-8">
                <div>
                    <h2 class="text-3xl font-semibold text-accent mb-2 tracking-tight" id="user-management-title">User Management</h2>
                    <p class="text-base text-primary-dark/80" id="user-management-desc">Manage your staff and account access. Add, edit, or remove users for secure and efficient shop operations.</p>
                </div>
                <button onclick="openModal('add-user-modal')" class="flex items-center gap-2 bg-primary text-white px-6 py-3 rounded-xl hover:bg-primary-dark transition shadow-sm">
                    <i class="fa-solid fa-user-plus"></i>
                    <span>Add User</span>
                </button>
            </div>
            <div id="user-accounts-table-wrapper" class="overflow-x-auto rounded-2xl border border-secondary-dark shadow-sm">
                <table class="min-w-full bg-white rounded-2xl" id="user-accounts-table">
                    <thead>
                        <tr class="bg-secondary-light text-primary-dark text-left text-xs uppercase tracking-wider">
                            <th class="px-6 py-4 font-bold rounded-tl-2xl">User</th>
                            <th class="px-6 py-4 font-bold">Role</th>
                            <th class="px-6 py-4 font-bold">Username</th>
                            <th class="px-6 py-4 font-bold">Status</th>
                            <th class="px-6 py-4 font-bold rounded-tr-2xl text-center">Actions</th>
                        </tr>
                    </thead>
                    <tbody class="text-primary-dark text-sm">
                        <tr class="border-b border-secondary-dark/40 hover:bg-secondary/40 transition" id="user-row-1">
                            <td class="px-6 py-5 flex items-center gap-3">
                                <img src="https://storage.googleapis.com/uxpilot-auth.appspot.com/avatars/avatar-2.jpg" class="w-9 h-9 rounded-full object-cover border border-primary/30" />
                                <div>
                                    <div class="font-semibold text-accent">Mark Spencer</div>
                                    <div class="text-xs text-primary-dark/60">mark@milkteapos.com</div>
                                </div>
                            </td>
                            <td class="px-6 py-5 font-medium">Admin</td>
                            <td class="px-6 py-5">markspencer</td>
                            <td class="px-6 py-5">
                                <span class="px-3 py-1 rounded-full bg-success/20 text-success font-semibold">Active</span>
                            </td>
                            <td class="px-6 py-5 text-center">
                                <button onclick="openEditModal('1', 'Mark Spencer', 'mark@milkteapos.com', 'markspencer', 'Admin')" class="inline-flex items-center justify-center w-8 h-8 rounded-lg bg-secondary-light text-accent hover:bg-primary/20 mr-2" title="Edit User">
                                    <i class="fa-solid fa-pen"></i>
                                </button>
                                <button onclick="openDeleteModal('1', 'Mark Spencer')" class="inline-flex items-center justify-center w-8 h-8 rounded-lg bg-secondary-light text-danger hover:bg-danger/20 mr-2" title="Delete User">
                                    <i class="fa-solid fa-trash"></i>
                                </button>
                            </td>
                        </tr>
                        <tr class="border-b border-secondary-dark/40 hover:bg-secondary/40 transition" id="user-row-2">
                            <td class="px-6 py-5 flex items-center gap-3">
                                <img src="https://storage.googleapis.com/uxpilot-auth.appspot.com/avatars/avatar-3.jpg" class="w-9 h-9 rounded-full object-cover border border-primary/30" />
                                <div>
                                    <div class="font-semibold text-accent">Carlos Gomez</div>
                                    <div class="text-xs text-primary-dark/60">carlos@milkteapos.com</div>
                                </div>
                            </td>
                            <td class="px-6 py-5 font-medium">Clerk</td>
                            <td class="px-6 py-5">carlosg</td>
                            <td class="px-6 py-5">
                                <span class="px-3 py-1 rounded-full bg-success/20 text-success font-semibold">Active</span>
                            </td>
                            <td class="px-6 py-5 text-center">
                                <button onclick="openEditModal('2', 'Carlos Gomez', 'carlos@milkteapos.com', 'carlosg', 'Clerk')" class="inline-flex items-center justify-center w-8 h-8 rounded-lg bg-secondary-light text-accent hover:bg-primary/20 mr-2" title="Edit User">
                                    <i class="fa-solid fa-pen"></i>
                                </button>
                                <button onclick="openDeleteModal('2', 'Carlos Gomez')" class="inline-flex items-center justify-center w-8 h-8 rounded-lg bg-secondary-light text-danger hover:bg-danger/20 mr-2" title="Delete User">
                                    <i class="fa-solid fa-trash"></i>
                                </button>
                            </td>
                        </tr>
                        <tr class="border-b border-secondary-dark/40 hover:bg-secondary/40 transition" id="user-row-3">
                            <td class="px-6 py-5 flex items-center gap-3">
                                <img src="https://storage.googleapis.com/uxpilot-auth.appspot.com/avatars/avatar-5.jpg" class="w-9 h-9 rounded-full object-cover border border-primary/30" />
                                <div>
                                    <div class="font-semibold text-accent">Lila Santos</div>
                                    <div class="text-xs text-primary-dark/60">lila@milkteapos.com</div>
                                </div>
                            </td>
                            <td class="px-6 py-5 font-medium">Clerk</td>
                            <td class="px-6 py-5">lilasantos</td>
                            <td class="px-6 py-5">
                                <span class="px-3 py-1 rounded-full bg-success/20 text-success font-semibold">Active</span>
                            </td>
                            <td class="px-6 py-5 text-center">
                                <button onclick="openEditModal('3', 'Lila Santos', 'lila@milkteapos.com', 'lilasantos', 'Clerk')" class="inline-flex items-center justify-center w-8 h-8 rounded-lg bg-secondary-light text-accent hover:bg-primary/20 mr-2" title="Edit User">
                                    <i class="fa-solid fa-pen"></i>
                                </button>
                                <button onclick="openDeleteModal('3', 'Lila Santos')" class="inline-flex items-center justify-center w-8 h-8 rounded-lg bg-secondary-light text-danger hover:bg-danger/20 mr-2" title="Delete User">
                                    <i class="fa-solid fa-trash"></i>
                                </button>
                            </td>
                        </tr>
                        <tr class="hover:bg-secondary/40 transition" id="user-row-4">
                            <td class="px-6 py-5 flex items-center gap-3">
                                <img src="https://storage.googleapis.com/uxpilot-auth.appspot.com/avatars/avatar-8.jpg" class="w-9 h-9 rounded-full object-cover border border-primary/30" />
                                <div>
                                    <div class="font-semibold text-accent">John Lee</div>
                                    <div class="text-xs text-primary-dark/60">johnlee@milkteapos.com</div>
                                </div>
                            </td>
                            <td class="px-6 py-5 font-medium">Clerk</td>
                            <td class="px-6 py-5">johnlee</td>
                            <td class="px-6 py-5">
                                <span class="px-3 py-1 rounded-full bg-warning/20 text-warning font-semibold">Inactive</span>
                            </td>
                            <td class="px-6 py-5 text-center">
                                <button onclick="openEditModal('4', 'John Lee', 'johnlee@milkteapos.com', 'johnlee', 'Clerk')" class="inline-flex items-center justify-center w-8 h-8 rounded-lg bg-secondary-light text-accent hover:bg-primary/20 mr-2" title="Edit User">
                                    <i class="fa-solid fa-pen"></i>
                                </button>
                                <button onclick="openDeleteModal('4', 'John Lee')" class="inline-flex items-center justify-center w-8 h-8 rounded-lg bg-secondary-light text-danger hover:bg-danger/20 mr-2" title="Delete User">
                                    <i class="fa-solid fa-trash"></i>
                                </button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </section>
    </main>

    <!-- Add User Modal -->
    <div id="add-user-modal" class="fixed inset-0 bg-black/50 hidden items-center justify-center z-50">
        <div class="bg-white rounded-2xl p-8 max-w-md w-full mx-4">
            <h3 class="text-2xl font-semibold text-accent mb-6">Add New User</h3>
            <form id="add-user-form" class="space-y-4">
                <div>
                    <label class="block text-sm font-medium text-primary-dark mb-1">Full Name</label>
                    <input type="text" class="w-full px-4 py-2 rounded-lg border border-secondary-dark focus:ring-2 focus:ring-primary focus:outline-none" required />
                </div>
                <div>
                    <label class="block text-sm font-medium text-primary-dark mb-1">Email</label>
                    <input type="email" class="w-full px-4 py-2 rounded-lg border border-secondary-dark focus:ring-2 focus:ring-primary focus:outline-none" required />
                </div>
                <div>
                    <label class="block text-sm font-medium text-primary-dark mb-1">Username</label>
                    <input type="text" class="w-full px-4 py-2 rounded-lg border border-secondary-dark focus:ring-2 focus:ring-primary focus:outline-none" required />
                </div>
                <div>
                    <label class="block text-sm font-medium text-primary-dark mb-1">Role</label>
                    <select class="w-full px-4 py-2 rounded-lg border border-secondary-dark focus:ring-2 focus:ring-primary focus:outline-none" required>
                        <option value="Admin">Admin</option>
                        <option value="Clerk">Clerk</option>
                    </select>
                </div>
                <div>
                    <label class="block text-sm font-medium text-primary-dark mb-1">Password</label>
                    <input type="password" class="w-full px-4 py-2 rounded-lg border border-secondary-dark focus:ring-2 focus:ring-primary focus:outline-none" required />
                </div>
                <div>
                    <label class="block text-sm font-medium text-primary-dark mb-1">Confirm Password</label>
                    <input type="password" class="w-full px-4 py-2 rounded-lg border border-secondary-dark focus:ring-2 focus:ring-primary focus:outline-none" required />
                </div>
                <div class="flex justify-end gap-3 mt-8">
                    <button type="button" onclick="closeModal('add-user-modal')" class="px-6 py-2 rounded-lg border border-secondary-dark text-primary-dark hover:bg-secondary-light transition">Cancel</button>
                    <button type="submit" class="px-6 py-2 rounded-lg bg-primary text-white hover:bg-primary-dark transition">Add User</button>
                </div>
            </form>
        </div>
    </div>

    <!-- Edit User Modal -->
    <div id="edit-user-modal" class="fixed inset-0 bg-black/50 hidden items-center justify-center z-50">
        <div class="bg-white rounded-2xl p-8 max-w-md w-full mx-4">
            <h3 class="text-2xl font-semibold text-accent mb-6">Edit User</h3>
            <form id="edit-user-form" class="space-y-4">
                <input type="hidden" id="edit-user-id" />
                <div>
                    <label class="block text-sm font-medium text-primary-dark mb-1">Full Name</label>
                    <input type="text" id="edit-name" class="w-full px-4 py-2 rounded-lg border border-secondary-dark focus:ring-2 focus:ring-primary focus:outline-none" required />
                </div>
                <div>
                    <label class="block text-sm font-medium text-primary-dark mb-1">Email</label>
                    <input type="email" id="edit-email" class="w-full px-4 py-2 rounded-lg border border-secondary-dark focus:ring-2 focus:ring-primary focus:outline-none" required />
                </div>
                <div>
                    <label class="block text-sm font-medium text-primary-dark mb-1">Username</label>
                    <input type="text" id="edit-username" class="w-full px-4 py-2 rounded-lg border border-secondary-dark focus:ring-2 focus:ring-primary focus:outline-none" required />
                </div>
                <div>
                    <label class="block text-sm font-medium text-primary-dark mb-1">Role</label>
                    <select id="edit-role" class="w-full px-4 py-2 rounded-lg border border-secondary-dark focus:ring-2 focus:ring-primary focus:outline-none" required>
                        <option value="Admin">Admin</option>
                        <option value="Clerk">Clerk</option>
                    </select>
                </div>
                <div>
                    <label class="block text-sm font-medium text-primary-dark mb-1">New Password (optional)</label>
                    <input type="password" class="w-full px-4 py-2 rounded-lg border border-secondary-dark focus:ring-2 focus:ring-primary focus:outline-none" />
                </div>
                <div class="flex justify-end gap-3 mt-8">
                    <button type="button" onclick="closeModal('edit-user-modal')" class="px-6 py-2 rounded-lg border border-secondary-dark text-primary-dark hover:bg-secondary-light transition">Cancel</button>
                    <button type="submit" class="px-6 py-2 rounded-lg bg-primary text-white hover:bg-primary-dark transition">Save Changes</button>
                </div>
            </form>
        </div>
    </div>

    <!-- Delete User Modal -->
    <div id="delete-user-modal" class="fixed inset-0 bg-black/50 hidden items-center justify-center z-50">
        <div class="bg-white rounded-2xl p-8 max-w-md w-full mx-4">
            <h3 class="text-2xl font-semibold text-accent mb-4">Delete User</h3>
            <p class="text-primary-dark mb-6">Are you sure you want to delete <span id="delete-user-name" class="font-semibold"></span>? This action cannot be undone.</p>
            <input type="hidden" id="delete-user-id" />
            <div class="flex justify-end gap-3">
                <button onclick="closeModal('delete-user-modal')" class="px-6 py-2 rounded-lg border border-secondary-dark text-primary-dark hover:bg-secondary-light transition">Cancel</button>
                <button onclick="deleteUser()" class="px-6 py-2 rounded-lg bg-danger text-white hover:bg-danger/80 transition">Delete User</button>
            </div>
        </div>
    </div>

    <footer id="footer" class="bg-secondary text-center py-8 text-sm text-primary-dark mt-16">
        <p>© 2023 Milktea POS System. All rights reserved.</p>
        <p class="mt-1">Version 2.0.4</p>
    </footer>

    <script>
        let menuVisible = false;
        function toggleUserMenu() {
            const menu = document.getElementById('user-profile-menu');
            menuVisible = !menuVisible;
            if (menuVisible) {
                menu.classList.remove("opacity-0", "pointer-events-none");
                menu.classList.add("opacity-100");
            } else {
                menu.classList.add("opacity-0", "pointer-events-none");
                menu.classList.remove("opacity-100");
            }
        }
        document.addEventListener('mousedown', function(evt) {
            const userProfile = document.getElementById('user-profile');
            const menu = document.getElementById('user-profile-menu');
            if (!userProfile.contains(evt.target) && !menu.contains(evt.target)) {
                menu.classList.add("opacity-0", "pointer-events-none");
                menu.classList.remove("opacity-100");
                menuVisible = false;
            }
        });
    </script>
    <script src="js/navigation.js"></script>
    <script>
        // Modal functionality
        function openModal(modalId) {
            document.getElementById(modalId).classList.remove('hidden');
            document.getElementById(modalId).classList.add('flex');
        }

        function closeModal(modalId) {
            document.getElementById(modalId).classList.add('hidden');
            document.getElementById(modalId).classList.remove('flex');
        }

        function openEditModal(userId, name, email, username, role) {
            document.getElementById('edit-user-id').value = userId;
            document.getElementById('edit-name').value = name;
            document.getElementById('edit-email').value = email;
            document.getElementById('edit-username').value = username;
            document.getElementById('edit-role').value = role;
            openModal('edit-user-modal');
        }

        function openDeleteModal(userId, name) {
            document.getElementById('delete-user-id').value = userId;
            document.getElementById('delete-user-name').textContent = name;
            openModal('delete-user-modal');
        }

        function deleteUser() {
            const userId = document.getElementById('delete-user-id').value;
            // Here you would typically make an API call to delete the user
            console.log('Deleting user:', userId);
            closeModal('delete-user-modal');
        }

        // Form submissions
        document.getElementById('add-user-form').onsubmit = function(e) {
            e.preventDefault();
            // Here you would typically make an API call to add the user
            console.log('Adding new user');
            closeModal('add-user-modal');
        };

        document.getElementById('edit-user-form').onsubmit = function(e) {
            e.preventDefault();
            // Here you would typically make an API call to update the user
            console.log('Updating user:', document.getElementById('edit-user-id').value);
            closeModal('edit-user-modal');
        };

        // Close modals when clicking outside
        window.onclick = function(event) {
            const modals = ['add-user-modal', 'edit-user-modal', 'delete-user-modal'];
            modals.forEach(modalId => {
                const modal = document.getElementById(modalId);
                if (event.target === modal) {
                    closeModal(modalId);
                }
            });
        };

        // Close modals on escape key
        document.addEventListener('keydown', function(event) {
            if (event.key === 'Escape') {
                const modals = ['add-user-modal', 'edit-user-modal', 'delete-user-modal'];
                modals.forEach(modalId => {
                    closeModal(modalId);
                });
            }
        });
    </script>
</body></html>