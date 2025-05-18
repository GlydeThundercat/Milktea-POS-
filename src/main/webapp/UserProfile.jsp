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

    <div id="profile-create-container" class="min-h-[100vh] flex items-center justify-center p-4 bg-secondary-light">
        <div id="profile-create-card" class="bg-white rounded-xl shadow-lg w-full max-w-lg overflow-hidden">
            <div id="profile-create-header" class="bg-primary-light p-6 flex flex-col items-center">
                <div id="profile-create-logo-container" class="w-16 h-16 bg-white rounded-full flex items-center justify-center shadow-md mb-2">
                    <i class="fa-solid fa-user-plus text-primary text-2xl"></i>
                </div>
                <h1 class="text-xl font-semibold text-accent">Create User Profile</h1>
                <p class="text-sm text-accent/80">Add a new user for your Milktea POS System</p>
            </div>

            <div id="profile-create-form-container" class="p-8">
                <form id="profile-create-form" class="space-y-7">
                    <div id="profile-error-message" class="hidden mb-2 p-3 bg-red-100 text-red-700 rounded-md text-sm">
                        Please fill in all required fields.
                    </div>
                    <div id="profile-picture-selector" class="flex flex-col items-center mb-3">
                        <div class="relative group" id="avatar-selection-area">
                            <img id="selected-avatar" src="https://storage.googleapis.com/uxpilot-auth.appspot.com/avatars/avatar-1.jpg" class="w-24 h-24 rounded-full object-cover border-4 border-primary shadow cursor-pointer transition group-hover:opacity-80" alt="Profile Picture" />
                            <button type="button" id="change-avatar-btn" class="absolute bottom-1 right-1 bg-primary hover:bg-primary-dark text-white rounded-full p-2 border-2 border-white shadow transition">
                                <i class="fa-solid fa-camera text-base"></i>
                            </button>
                        </div>
                        <div id="avatar-choice-modal" class="hidden absolute z-20 bg-white p-4 rounded-xl shadow-md mt-3 flex gap-3 border border-primary-light">
                            <img src="https://storage.googleapis.com/uxpilot-auth.appspot.com/avatars/avatar-1.jpg" data-avatar="1" class="avatar-choice-img w-10 h-10 rounded-full object-cover cursor-pointer border-2 border-transparent hover:border-primary" />
                            <img src="https://storage.googleapis.com/uxpilot-auth.appspot.com/avatars/avatar-2.jpg" data-avatar="2" class="avatar-choice-img w-10 h-10 rounded-full object-cover cursor-pointer border-2 border-transparent hover:border-primary" />
                            <img src="https://storage.googleapis.com/uxpilot-auth.appspot.com/avatars/avatar-3.jpg" data-avatar="3" class="avatar-choice-img w-10 h-10 rounded-full object-cover cursor-pointer border-2 border-transparent hover:border-primary" />
                            <img src="https://storage.googleapis.com/uxpilot-auth.appspot.com/avatars/avatar-4.jpg" data-avatar="4" class="avatar-choice-img w-10 h-10 rounded-full object-cover cursor-pointer border-2 border-transparent hover:border-primary" />
                            <img src="https://storage.googleapis.com/uxpilot-auth.appspot.com/avatars/avatar-5.jpg" data-avatar="5" class="avatar-choice-img w-10 h-10 rounded-full object-cover cursor-pointer border-2 border-transparent hover:border-primary" />
                            <img src="https://storage.googleapis.com/uxpilot-auth.appspot.com/avatars/avatar-6.jpg" data-avatar="6" class="avatar-choice-img w-10 h-10 rounded-full object-cover cursor-pointer border-2 border-transparent hover:border-primary" />
                            <img src="https://storage.googleapis.com/uxpilot-auth.appspot.com/avatars/avatar-7.jpg" data-avatar="7" class="avatar-choice-img w-10 h-10 rounded-full object-cover cursor-pointer border-2 border-transparent hover:border-primary" />
                            <img src="https://storage.googleapis.com/uxpilot-auth.appspot.com/avatars/avatar-8.jpg" data-avatar="8" class="avatar-choice-img w-10 h-10 rounded-full object-cover cursor-pointer border-2 border-transparent hover:border-primary" />
                            <img src="https://storage.googleapis.com/uxpilot-auth.appspot.com/avatars/avatar-9.jpg" data-avatar="9" class="avatar-choice-img w-10 h-10 rounded-full object-cover cursor-pointer border-2 border-transparent hover:border-primary" />
                        </div>
                        <span class="text-xs text-gray-500 mt-2">Tap to change profile picture</span>
                    </div>
                    <div id="profile-name-field">
                        <label for="profile-name" class="block text-sm font-medium text-gray-700 mb-1">Name</label>
                        <div class="relative">
                            <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                                <i class="fa-solid fa-user text-gray-400"></i>
                            </div>
                            <input type="text" id="profile-name" name="profile-name" class="pl-10 w-full py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary focus:border-primary transition-all duration-200 outline-none" placeholder="Enter full name" autocomplete="off" />
                        </div>
                    </div>
                    <div id="profile-username-field">
                        <label for="profile-username" class="block text-sm font-medium text-gray-700 mb-1">Username</label>
                        <div class="relative">
                            <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                                <i class="fa-solid fa-at text-gray-400"></i>
                            </div>
                            <input type="text" id="profile-username" name="profile-username" class="pl-10 w-full py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary focus:border-primary transition-all duration-200 outline-none" placeholder="Choose a username" autocomplete="off" />
                        </div>
                    </div>
                    <div id="profile-email-field">
                        <label for="profile-email" class="block text-sm font-medium text-gray-700 mb-1">Email</label>
                        <div class="relative">
                            <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                                <i class="fa-solid fa-envelope text-gray-400"></i>
                            </div>
                            <input type="email" id="profile-email" name="profile-email" class="pl-10 w-full py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary focus:border-primary transition-all duration-200 outline-none" placeholder="Enter email address" autocomplete="off" />
                        </div>
                    </div>
                    <div id="profile-role-field">
                        <label class="block text-sm font-medium text-gray-700 mb-1">Role</label>
                        <div class="flex gap-4">
                            <label class="flex items-center space-x-2 cursor-pointer bg-secondary-light hover:bg-primary-light rounded-lg px-4 py-2 transition">
                                <input type="radio" name="profile-role" value="admin" class="role-radio accent-primary focus:ring-primary" />
                                <span class="text-sm font-medium text-accent flex items-center gap-1">
                                    <i class="fa-solid fa-user-shield text-primary"></i> Admin
                                </span>
                            </label>
                            <label class="flex items-center space-x-2 cursor-pointer bg-secondary-light hover:bg-primary-light rounded-lg px-4 py-2 transition">
                                <input type="radio" name="profile-role" value="clerk" class="role-radio accent-primary focus:ring-primary" />
                                <span class="text-sm font-medium text-accent flex items-center gap-1">
                                    <i class="fa-solid fa-user-tie text-primary"></i> Clerk
                                </span>
                            </label>
                        </div>
                    </div>
                    <div id="profile-create-actions" class="pt-2">
                        <button type="submit" class="w-full bg-primary hover:bg-primary-dark text-white font-medium py-3 px-4 rounded-lg transition duration-200 flex items-center justify-center text-base">
                            Create Profile
                            <i class="fa-solid fa-check ml-2"></i>
                        </button>
                    </div>
                </form>
            </div>

            <div id="profile-create-footer" class="px-8 pb-6 text-center text-xs text-gray-500">
                <p>&copy; 2023 Milktea POS System. All rights reserved.</p>
                <p class="mt-1">Version 2.0.4</p>
            </div>
        </div>
    </div>

    <script>
        // Show avatar modal
        const avatarBtn = document.getElementById('change-avatar-btn');
        const avatarImg = document.getElementById('selected-avatar');
        const avatarModal = document.getElementById('avatar-choice-modal');
        const avatarArea = document.getElementById('avatar-selection-area');
        let avatarModalOpen = false;

        function closeAvatarModal(e) {
            if (!avatarModal.contains(e.target) && !avatarArea.contains(e.target)) {
                avatarModal.classList.add('hidden');
                document.removeEventListener('mousedown', closeAvatarModal);
                avatarModalOpen = false;
            }
        }

        avatarBtn.addEventListener('click', function(e) {
            e.stopPropagation();
            if (!avatarModalOpen) {
                avatarModal.classList.remove('hidden');
                avatarModalOpen = true;
                document.addEventListener('mousedown', closeAvatarModal);
            } else {
                avatarModal.classList.add('hidden');
                avatarModalOpen = false;
            }
        });

        avatarImg.addEventListener('click', function(e) {
            avatarBtn.click();
        });

        Array.from(document.getElementsByClassName('avatar-choice-img')).forEach(function(img) {
            img.addEventListener('click', function() {
                avatarImg.src = this.src;
                avatarModal.classList.add('hidden');
                avatarModalOpen = false;
            });
        });

        // Role styling on click
        Array.from(document.querySelectorAll('input[name="profile-role"]')).forEach(function(radio) {
            radio.addEventListener('change', function() {
                document.querySelectorAll('input[name="profile-role"]').forEach(function(r) {
                    r.parentElement.classList.remove('bg-primary-light', 'ring', 'ring-primary', 'ring-2');
                });
                if (this.checked) {
                    this.parentElement.classList.add('bg-primary-light', 'ring', 'ring-primary', 'ring-2');
                }
            });
        });

        // Form validation
        document.getElementById('profile-create-form').addEventListener('submit', function(e) {
            e.preventDefault(); // Prevent default form submission
            
            // Get form values
            const name = document.getElementById('profile-name').value.trim();
            const username = document.getElementById('profile-username').value.trim();
            const email = document.getElementById('profile-email').value.trim();
            const roleInput = document.querySelector('input[name="profile-role"]:checked');
            const error = document.getElementById('profile-error-message');
            const selectedAvatar = document.getElementById('selected-avatar').src;

            // Validate all fields
            if (!name || !username || !email || !roleInput) {
                error.textContent = "Please fill in all required fields and select a role.";
                error.classList.remove('hidden');
                setTimeout(() => {
                    error.classList.add('hidden');
                }, 2500);
                return;
            }

            // Store profile data in localStorage for use in success pages
            localStorage.setItem('profile-name', name);
            localStorage.setItem('profile-username', username);
            localStorage.setItem('profile-email', email);
            localStorage.setItem('profile-avatar', selectedAvatar);
            localStorage.setItem('profile-role', roleInput.value);

            // Redirect based on selected role
            if (roleInput.value === 'admin') {
                window.location.href = 'SuccessAdmin.jsp';
            } else {
                window.location.href = 'SuccessClerk.jsp';
            }
        });

        // Pre-select admin role by default
        document.querySelector('input[name="profile-role"][value="admin"]').click();
    </script>

    <footer id="footer" class="bg-secondary text-center py-8 text-sm text-primary-dark mt-16">
        <p>© 2023 Milktea POS System. All rights reserved.</p>
        <p class="mt-1">Version 2.0.4</p>
    </footer>
    <script src="js/navigation.js"></script>
</body></html>