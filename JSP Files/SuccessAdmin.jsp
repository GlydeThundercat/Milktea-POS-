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

    <div id="profile-success-container-admin" class="min-h-[100vh] flex items-center justify-center p-4 bg-secondary-light">
        <div id="profile-success-card-admin" class="bg-white rounded-xl shadow-lg w-full max-w-md overflow-hidden flex flex-col items-center py-12 px-8">
            <div id="profile-success-header-admin" class="flex flex-col items-center w-full mb-6">
                <div id="profile-success-icon-admin" class="w-20 h-20 bg-primary-light rounded-full flex items-center justify-center shadow-md mb-3 border-4 border-white relative">
                    <i class="fa-solid fa-circle-check text-green-500 text-4xl"></i>
                </div>
                <h1 class="text-2xl font-semibold text-accent mb-1">Profile Created!</h1>
                <p class="text-accent/80 text-base">Your user profile has been successfully created.</p>
            </div>
            <div id="profile-success-body-admin" class="w-full flex flex-col items-center mb-8">
                <div id="profile-success-avatar-admin" class="w-24 h-24 rounded-full overflow-hidden border-4 border-primary shadow mb-3">
                    <img id="profile-success-avatar-img-admin" src="https://storage.googleapis.com/uxpilot-auth.appspot.com/avatars/avatar-2.jpg" class="w-full h-full object-cover" alt="Profile Picture" />
                </div>
                <div id="profile-success-userinfo-admin" class="text-center">
                    <div id="profile-success-name-admin" class="text-xl font-medium text-accent">Alex Mendoza</div>
                    <div id="profile-success-roles-admin" class="mt-2">
                        <div id="profile-success-role-admin-admin" class="inline-flex items-center bg-primary-light text-primary px-3 py-1 rounded-lg text-xs font-semibold gap-1">
                            <i class="fa-solid fa-user-shield"></i> Admin
                            <span class="ml-1 text-[10px]">(Full Access)</span>
                        </div>
                    </div>
                    <div class="mt-3 text-sm text-gray-600">
                        <p id="profile-success-username-admin" class="mb-1"></p>
                        <p id="profile-success-email-admin"></p>
                    </div>
                </div>
            </div>
            <div id="profile-success-actions-admin" class="w-full">
                <button id="go-to-dashboard-btn-admin" class="w-full bg-primary hover:bg-primary-dark text-white font-semibold py-3 rounded-lg transition duration-200 flex items-center justify-center text-base gap-2">
                    <span>Go to Dashboard</span>
                    <i class="fa-solid fa-arrow-right"></i>
                </button>
            </div>
            <div id="profile-success-footer-admin" class="text-center text-xs text-gray-500 mt-8 w-full">
                <p>&copy; 2023 Milktea POS System. All rights reserved.</p>
                <p class="mt-1">Version 2.0.4</p>
            </div>
        </div>
    </div>

    <script>
        // Get profile data from localStorage
        const profileName = localStorage.getItem('profile-name') || 'User';
        const profileUsername = localStorage.getItem('profile-username') || '';
        const profileEmail = localStorage.getItem('profile-email') || '';
        const profileAvatar = localStorage.getItem('profile-avatar') || 'https://storage.googleapis.com/uxpilot-auth.appspot.com/avatars/avatar-1.jpg';

        // Update profile information
        document.getElementById('profile-success-name-admin').innerText = profileName;
        document.getElementById('profile-success-username-admin').innerText = '@' + profileUsername;
        document.getElementById('profile-success-email-admin').innerText = profileEmail;
        document.getElementById('profile-success-avatar-img-admin').src = profileAvatar;

        // Button action
        document.getElementById('go-to-dashboard-btn-admin').addEventListener('click', function() {
            // Clear localStorage after use
            localStorage.removeItem('profile-name');
            localStorage.removeItem('profile-username');
            localStorage.removeItem('profile-email');
            localStorage.removeItem('profile-avatar');
            localStorage.removeItem('profile-role');
            
            // Redirect to dashboard
            window.location.href = 'Dashboard.jsp';
        });
    </script>

</body></html>