<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Starlite Capital Partners — Investor Login</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500&family=Playfair+Display:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        html, body { min-height: 100vh; background: #ffffff; color: #1a2138; font-family: 'Inter', system-ui, sans-serif; overflow-x: hidden; }
        body { display: flex; flex-direction: column; }
        .hero {
            position: relative;
            min-height: 100vh;
            padding: 160px 20px 120px;
            text-align: center;
            overflow: hidden;
            isolation: isolate;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .hero-video {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
            z-index: -2;
        }
        .hero-overlay {
            position: absolute;
            inset: 0;
            z-index: -1;
            background:
                radial-gradient(circle at top left, rgba(73,110,255,0.25), transparent 35%),
                radial-gradient(circle at bottom right, rgba(120,80,255,0.25), transparent 35%),
                linear-gradient(180deg, rgba(255,255,255,0.88), rgba(255,255,255,0.93));
        }
        .login-card {
            position: relative;
            z-index: 10;
            width: clamp(320px, 90vw, 440px);
            padding: 48px 40px;
            background: rgba(246,248,252,0.92);
            backdrop-filter: blur(6px);
            border: 1px solid rgba(70,100,200,0.14);
            border-radius: 24px;
            box-shadow: 0 25px 80px rgba(26,33,56,0.10);
            text-align: center;
        }
        .logo { font-family: 'Playfair Display', serif; font-size: 44px; letter-spacing: -1.5px; line-height: 1; margin-bottom: 6px; background: linear-gradient(90deg, #1a2138, #4a7bff); -webkit-background-clip: text; -webkit-text-fill-color: transparent; }
        .logo-sub { font-size: 10px; letter-spacing: 5px; text-transform: uppercase; color: #3b63d4; margin-bottom: 32px; }
        h1 { font-family: 'Playfair Display', serif; font-size: 32px; font-weight: 400; letter-spacing: 1px; color: #1a2138; margin-bottom: 8px; }
        .subtitle { font-size: 15px; color: #6b7aaa; margin-bottom: 32px; }
        .input-wrap { position: relative; margin-bottom: 18px; text-align: left; }
        .input-wrap label { display: block; font-size: 11px; font-weight: 600; text-transform: uppercase; letter-spacing: 0.1em; color: #6b7aaa; margin-bottom: 7px; }
        .input-wrap input { width: 100%; padding: 16px 20px; background: #ffffff; border: 1px solid rgba(70,100,200,0.25); border-radius: 14px; color: #1a2138; font-size: 16px; transition: all 0.3s; }
        .input-wrap input::placeholder { color: #9aa3be; }
        .input-wrap input:focus { outline: none; border-color: #4a7bff; box-shadow: 0 0 0 4px rgba(74,123,255,0.14); }
        .toggle-pw { position: absolute; right: 16px; bottom: 16px; background: none; border: none; color: #9aa3be; cursor: pointer; font-size: 15px; padding: 0; }
        .toggle-pw:hover { color: #4a7bff; }
        .forgot { text-align: right; margin-top: -10px; margin-bottom: 22px; }
        .forgot a { font-size: 13px; color: #6b7aaa; text-decoration: none; }
        .forgot a:hover { color: #4a7bff; }
        .submit-btn { width: 100%; padding: 17px; border: none; border-radius: 50px; background: linear-gradient(90deg, #4a7bff, #7b9eff); color: white; font-size: 17px; font-weight: 500; letter-spacing: 1px; cursor: pointer; transition: all 0.3s ease; }
        .submit-btn:hover:not(:disabled) { transform: translateY(-3px); box-shadow: 0 15px 40px rgba(74,123,255,0.3); }
        .submit-btn:disabled { opacity: 0.7; cursor: not-allowed; transform: none; box-shadow: none; }
        .btn-inner { display: inline-flex; align-items: center; justify-content: center; gap: 10px; }
        .spinner {
            display: none;
            width: 16px;
            height: 16px;
            border: 2px solid rgba(255,255,255,0.5);
            border-top-color: #ffffff;
            border-radius: 50%;
            animation: spin 0.7s linear infinite;
        }
        .submit-btn.loading .spinner { display: inline-block; }
        @keyframes spin { to { transform: rotate(360deg); } }
        .error-msg, .success-msg { margin-top: 18px; padding: 13px 16px; border-radius: 12px; font-size: 14px; font-weight: 500; text-align: center; display: none; }
        .error-msg { background: rgba(220,38,38,0.08); border: 1px solid rgba(220,38,38,0.25); color: #c0392b; }
        .error-msg.show { display: block; }
        .success-msg { background: rgba(39,174,96,0.08); border: 1px solid rgba(39,174,96,0.25); color: #27ae60; }
        .success-msg.show { display: block; }
        .divider { margin: 28px 0 20px; display: flex; align-items: center; gap: 12px; color: #9aa3be; font-size: 12px; font-weight: 600; text-transform: uppercase; letter-spacing: 0.08em; }
        .divider::before, .divider::after { content: ""; flex: 1; height: 1px; background: rgba(70,100,200,0.12); }
        .contact-link { font-size: 14px; color: #6b7aaa; }
        .contact-link a { color: #4a7bff; text-decoration: none; font-weight: 500; }
        .contact-link a:hover { text-decoration: underline; }
        .powered { margin-top: 40px; font-size: 13px; color: #9aa3be; }
        footer { position: relative; z-index: 3; padding: 90px 40px 50px; border-top: 1px solid rgba(0,0,0,0.07); background: #ffffff; }
        .footer-inner { max-width: 1350px; margin: auto; }
        .footer-top { display: flex; justify-content: space-between; gap: 60px; flex-wrap: wrap; margin-bottom: 60px; align-items: flex-start; }
        .footer-brand h3 { font-family: 'Playfair Display', serif; font-size: 36px; font-weight: 400; color: #1a2138; margin-bottom: 14px; }
        .footer-brand p { color: #6b7aaa; font-size: 14px; line-height: 1.9; max-width: 420px; font-weight: 300; }
        .footer-links { display: flex; flex-wrap: wrap; gap: 14px 32px; max-width: 600px; align-content: flex-start; }
        .footer-links a { text-decoration: none; color: #6b7aaa; font-size: 13px; transition: 0.2s; }
        .footer-links a:hover { color: #1a2138; }
        .footer-bottom { border-top: 1px solid rgba(0,0,0,0.07); padding-top: 30px; display: flex; justify-content: space-between; flex-wrap: wrap; gap: 14px; }
        .footer-bottom p { color: #9aa3be; font-size: 13px; }
        @media (max-width: 768px) {
            .hero { padding: 120px 20px 80px; }
            .login-card { margin: 40px auto; padding: 42px 26px; }
            .footer-top { flex-direction: column; }
        }
    </style>
</head>
<body>
    <main class="page-content">
        <div class="hero">
            <video id="heroVideo" class="hero-video" autoplay muted loop playsinline preload="auto">
                <source src="https://f4106b695ee260aafd87fdcf0205d09d.cdn.bubble.io/f1784045359264x838437002462346000/20492969-uhd_3840_2160_30fps.mp4" type="video/mp4">
            </video>
            <div class="hero-overlay"></div>
            <div class="login-card">
                <div class="logo">STARLITE</div>
                <div class="logo-sub">Capital Partners</div>
                <h1>Investor Portal</h1>
                <p class="subtitle">Secure Access for Partners</p>
                <form id="loginForm" novalidate>
                    <div class="input-wrap">
                        <label for="email">Email Address</label>
                        <input type="email" id="email" placeholder="you@company.com" required autocomplete="email">
                    </div>
                    <div class="input-wrap">
                        <label for="password">Access Token</label>
                        <input type="password" id="password" placeholder="Enter your access token" required autocomplete="current-password">
                        <button type="button" class="toggle-pw" onclick="togglePassword()" aria-label="Toggle visibility">
                            <i class="fa-regular fa-eye" id="eyeIcon"></i>
                        </button>
                    </div>
                    <div class="forgot">
                        <a href="mailto:info@starlitecp.com">Forgot token? Contact support</a>
                    </div>
                    <button type="submit" class="submit-btn" id="loginBtn">
                        <span class="btn-inner">
                            <span class="spinner" id="spinner"></span>
                            <span id="btnText">Sign In</span>
                        </span>
                    </button>
                </form>
                <div class="error-msg" id="errorMsg">
                    <i class="fa-solid fa-circle-exclamation" style="margin-right:6px;"></i>
                    <span id="errorText">Invalid email or access token. Please try again.</span>
                </div>
                <div class="success-msg" id="successMsg">
                    <i class="fa-solid fa-circle-check" style="margin-right:6px;"></i>
                    Login successful — redirecting...
                </div>
                <div class="divider">or</div>
                <div class="contact-link">
                    Need access? <a href="mailto:info@starlitecp.com">Contact your administrator</a>
                </div>
                <div class="powered">
                    Powered by Tech Quest Analytics LLC
                </div>
            </div>
        </div>
    </main>

    <footer>
      <div class="footer-inner">
        <div class="footer-top">
          <div class="footer-brand">
            <h3>Starlite</h3>
            <p>A diversified investment platform focused on private markets, enterprise infrastructure, culture, media, and long-term strategic capital deployment.</p>
          </div>
          <div class="footer-links">
            <a href="https://www.starlitecp.com/contact-us">Contact Us</a>
            <a href="https://www.starlitecp.com/modern-slavery-statement">Modern Slavery Statement</a>
            <a href="https://www.starlitecp.com/privacy">Privacy</a>
            <a href="https://www.starlitecp.com/use-policy">Use Policy</a>
            <a href="https://www.starlitecp.com/sustainability">Sustainability</a>
            <a href="https://www.starlitecp.com/news">News</a>
            <a href="https://www.starlitecp.com/disclosures">Disclosures</a>
            <a href="https://www.starlitecp.com/commitment-to-responsible-investment">Commitment to Responsible Investment</a>
            <a href="https://www.starlitecp.com/commercial">Commercial</a>
            <a href="https://www.starlitecp.com/security">Security</a>
            <a href="https://www.starlitecp.com/13f-filings">13F Filings</a>
          </div>
        </div>
        <div class="footer-bottom">
          <p>© 2026 Starlite Capital Inc. All Rights Reserved.</p>
          <p>1910 Pacific Ave Suite 2000, Dallas, TX 75201, United States</p>
        </div>
      </div>
    </footer>

    <script>
        // ------------------------------------------------------------
        // Matches your actual Apps Script contract:
        //   - reads params.email / params.password (not "token")
        //   - returns { status: "success" }, { status: "fail" },
        //     or { status: "error", message: "..." }
        //
        // IMPORTANT: the Content-Type below is intentionally
        // 'text/plain' rather than 'application/json'. Sending JSON
        // with an application/json header triggers a CORS preflight
        // (OPTIONS request), which Apps Script web apps don't answer
        // unless you add a doOptions() handler — so the browser would
        // block the real request before it ever reaches doPost().
        // text/plain is a "simple request" and skips the preflight.
        // Apps Script doesn't care about the header anyway; it just
        // reads e.postData.contents as a raw string and JSON.parses it.
        // ------------------------------------------------------------
        const APPS_SCRIPT_URL = 'https://script.google.com/macros/s/AKfycbxZW5dLi_V0NkVAc5dv4YCqCB-Uw-wBtEUJ9-PH5P_vzvlsY2jUIo2k-yb_51lHfc4k/exec';
        const REDIRECT_URL = 'https://www.starlitecp.com/data_exchange'; // where to send users after a successful login

        function togglePassword() {
            const input = document.getElementById('password');
            const icon = document.getElementById('eyeIcon');
            if (input.type === 'password') {
                input.type = 'text';
                icon.classList.replace('fa-eye', 'fa-eye-slash');
            } else {
                input.type = 'password';
                icon.classList.replace('fa-eye-slash', 'fa-eye');
            }
        }

        function initVideo() {
            const video = document.getElementById('heroVideo');
            if (video) {
                video.muted = true;
                video.playsInline = true;
                const playPromise = video.play();
                if (playPromise !== undefined) {
                    playPromise.catch(() => {
                        document.body.addEventListener('click', () => video.play().catch(() => {}), { once: true });
                    });
                }
            }
        }

        function setLoading(on) {
            const btn = document.getElementById('loginBtn');
            const btnText = document.getElementById('btnText');
            btn.disabled = on;
            btn.classList.toggle('loading', on);
            btnText.textContent = on ? 'Signing In…' : 'Sign In';
        }

        function showError(msg) {
            document.getElementById('successMsg').classList.remove('show');
            const errorEl = document.getElementById('errorMsg');
            document.getElementById('errorText').textContent = msg || 'Invalid email or access token. Please try again.';
            errorEl.classList.add('show');
        }

        function hideMessages() {
            document.getElementById('errorMsg').classList.remove('show');
            document.getElementById('successMsg').classList.remove('show');
        }

        function showSuccess() {
            document.getElementById('errorMsg').classList.remove('show');
            document.getElementById('successMsg').classList.add('show');
        }

        async function handleLogin(event) {
            if (event) event.preventDefault();

            const email = document.getElementById('email').value.trim();
            const password = document.getElementById('password').value.trim();

            hideMessages();

            if (!email || !password) {
                showError('Please enter both your email and access token.');
                return;
            }

            setLoading(true);

            try {
                const response = await fetch(APPS_SCRIPT_URL, {
                    method: 'POST',
                    headers: { 'Content-Type': 'text/plain;charset=utf-8' },
                    body: JSON.stringify({ action: 'login', email, password })
                });

                if (!response.ok) {
                    throw new Error(`Server responded with ${response.status}`);
                }

                const data = await response.json();

                if (data && data.status === 'success') {
                    // Store the session token so the destination page can
                    // verify it (see the validateSession snippet below).
                    try {
                        sessionStorage.setItem('starlite_session_token', data.token);
                    } catch (storageErr) {
                        console.warn('Could not persist session token:', storageErr);
                    }
                    showSuccess();
                    setTimeout(() => {
                        window.open(REDIRECT_URL, '_blank', 'noopener,noreferrer');
                    }, 1200);
                } else if (data && data.status === 'error') {
                    // Includes rate-limit messages (e.g. "Too many attempts...")
                    showError(data.message);
                } else {
                    // status === 'fail' (bad credentials)
                    showError('Invalid email or access token. Please try again.');
                }
            } catch (err) {
                console.error('Login request failed:', err);
                showError('Something went wrong reaching the server. Please try again in a moment.');
            } finally {
                setLoading(false);
            }
        }

        document.addEventListener('DOMContentLoaded', function() {
            initVideo();
            document.getElementById('loginForm').addEventListener('submit', handleLogin);
        });
    </script>
</body>
</html>
