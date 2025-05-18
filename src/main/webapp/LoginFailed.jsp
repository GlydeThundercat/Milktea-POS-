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
    <div id="error-page-container" class="min-h-[100vh] flex items-center justify-center p-4 bg-secondary-light">
        <div id="error-card" class="bg-white rounded-xl shadow-lg w-full max-w-md overflow-hidden">
            <div id="error-header" class="bg-primary-light p-6 flex flex-col items-center">
                <div id="error-icon-container" class="w-20 h-20 bg-white rounded-full flex items-center justify-center shadow-lg mb-3 border-4 border-red-100">
                    <i class="fa-solid fa-circle-exclamation text-red-500 text-4xl"></i>
                </div>
                <h1 class="text-2xl font-semibold text-accent mb-1">Login Failed</h1>
                <p class="text-base text-accent/80">Invalid credentials provided</p>
            </div>
            <div id="error-body" class="flex flex-col items-center px-8 py-8">
                <div id="error-message-block" class="w-full mb-5 p-4 bg-red-50 border border-red-200 rounded-md flex items-center gap-3">
                    <i class="fa-solid fa-triangle-exclamation text-red-400 text-xl"></i>
                    <span class="text-red-700 text-sm font-medium">The username or password you entered is incorrect. Please try again.</span>
                </div>
                <button id="back-to-login-btn" class="w-full bg-primary hover:bg-primary-dark text-white font-medium py-3 px-4 rounded-lg transition duration-200 flex items-center justify-center mb-2">
                    <i class="fa-solid fa-arrow-left mr-2"></i>
                    Back to Login
                </button>
                <span class="text-primary text-sm font-medium hover:underline transition-colors mt-2 cursor-pointer" id="forgot-link">Forgot your password?</span>
            </div>
            <div id="error-footer" class="px-8 pb-6 text-center text-xs text-gray-500">
                <p>© 2023 Milktea POS System. All rights reserved.</p>
                <p class="mt-1">Version 2.0.4</p>
            </div>
        </div>
    </div>
   <script>
    document.getElementById('back-to-login-btn').addEventListener('click', function() {
        window.location.href = '<%= request.getContextPath() %>/Login.jsp';
    });
</script>

</body></html>