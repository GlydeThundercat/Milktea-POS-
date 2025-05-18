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
    <div id="login-container" class="min-h-[100vh] flex items-center justify-center p-4 bg-secondary-light">
        <div id="login-card" class="bg-white rounded-xl shadow-lg w-full max-w-md overflow-hidden">
            <div id="login-header" class="bg-primary-light p-6 flex flex-col items-center">
                <div id="logo-container" class="w-20 h-20 bg-white rounded-full flex items-center justify-center shadow-md mb-3">
                    <i class="fa-solid fa-mug-hot text-primary text-3xl"></i>
                </div>
                <h1 class="text-2xl font-semibold text-accent">Milktea POS System</h1>
                <p class="text-sm text-accent/80">Professional Point-of-Sale Solution</p>
            </div>
            
            <div id="login-form-container" class="p-8">
                <form id="login-form">
                    <div id="error-message" class="hidden mb-4 p-3 bg-red-100 text-red-700 rounded-md text-sm">
                        Invalid username or password. Please try again.
                    </div>
                    
                    <div id="username-field" class="mb-5">
                        <label for="username" class="block text-sm font-medium text-gray-700 mb-1">Username</label>
                        <div class="relative">
                            <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                                <i class="fa-solid fa-user text-gray-400"></i>
                            </div>
                            <input type="text" id="username" name="username" class="pl-10 w-full py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary focus:border-primary transition-all duration-200 outline-none" placeholder="Enter your username or email" />
                        </div>
                    </div>
                    
                    <div id="password-field" class="mb-6">
                        <div class="flex items-center justify-between mb-1">
                            <label for="password" class="block text-sm font-medium text-gray-700">Password</label>
                            <span class="text-xs text-primary hover:text-primary-dark transition-colors cursor-pointer">Forgot Password?</span>
                        </div>
                        <div class="relative">
                            <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                                <i class="fa-solid fa-lock text-gray-400"></i>
                            </div>
                            <input type="password" id="password" name="password" class="pl-10 pr-12 w-full py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary focus:border-primary transition-all duration-200 outline-none" placeholder="Enter your password" />
                            <button type="button" id="toggle-password" class="absolute inset-y-0 right-0 pr-3 flex items-center cursor-pointer hover:text-gray-600 transition-colors">
                                <i class="fa-solid fa-eye text-gray-400"></i>
                            </button>
                        </div>
                    </div>
                    
                    <div id="login-actions" class="space-y-4">
                        <button type="submit" id="login-button" class="w-full bg-primary hover:bg-primary-dark text-white font-medium py-3 px-4 rounded-lg transition duration-200 flex items-center justify-center">
                            Sign In
                            <i class="fa-solid fa-arrow-right-to-bracket ml-2"></i>
                        </button>
                        
                        <div class="flex items-center">
                            <input type="checkbox" id="remember-me" class="h-4 w-4 text-primary focus:ring-primary border-gray-300 rounded" />
                            <label for="remember-me" class="ml-2 block text-sm text-gray-700">Remember me on this device</label>
                        </div>
                    </div>
                </form>
            </div>
            
            <div id="login-footer" class="px-8 pb-6 text-center text-xs text-gray-500">
                <p>&copy; 2023 Milktea POS System. All rights reserved.</p>
                <p class="mt-1">Version 2.0.4</p>
            </div>
        </div>
    </div>

    <script>
        // Toggle password visibility
        const togglePassword = document.getElementById('toggle-password');
        const passwordInput = document.getElementById('password');
        
        togglePassword.addEventListener('click', function() {
            const icon = this.querySelector('i');
            
            if (passwordInput.type === 'password') {
                // Show password
                passwordInput.type = 'text';
                icon.classList.remove('fa-eye');
                icon.classList.add('fa-eye-slash');
                icon.classList.add('text-primary');
            } else {
                // Hide password
                passwordInput.type = 'password';
                icon.classList.remove('fa-eye-slash');
                icon.classList.remove('text-primary');
                icon.classList.add('fa-eye');
            }
        });
        
        // Form submission
        document.getElementById('login-form').addEventListener('submit', function(e) {
            e.preventDefault();
            
            const username = document.getElementById('username').value.trim();
            const password = document.getElementById('password').value.trim();
            const errorMessage = document.getElementById('error-message');
            
            // Check if fields are empty
            if (!username || !password) {
                errorMessage.textContent = "Please enter both username and password.";
                errorMessage.classList.remove('hidden');
                setTimeout(() => {
                    errorMessage.classList.add('hidden');
                }, 3000);
                return;
            }

            // Check credentials
            if (username === 'admin' && password === 'admin') {
                // Admin credentials match - redirect to user profile
                window.location.href = "UserProfile.jsp";
            } else {
                // Invalid credentials - redirect to login failed page
                window.location.href = "LoginFailed.jsp";
            }
        });
    </script>

</body></html>