<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>Starlite Capital Partners</title>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500&family=Playfair+Display:wght@400;500&display=swap" rel="stylesheet">
<style>
*{margin:0;padding:0;box-sizing:border-box;}
html{scroll-behavior:smooth;}
body{background:#fff;color:#1a2138;font-family:'Inter',sans-serif;overflow-x:hidden;}

/* NAV */
.nav{
  position:fixed;top:0;left:0;width:100%;z-index:999;
  background:rgba(255,255,255,0.92);
  backdrop-filter:blur(16px);
  border-bottom:1px solid rgba(0,0,0,0.06);
}
.nav-inner{
  max-width:1400px;margin:auto;
  padding:24px 40px;
  display:flex;justify-content:center;align-items:center;
}
.brand{display:flex;flex-direction:column;align-items:center;line-height:1;text-align:center;}
.brand-main{
  font-family:'Playfair Display',serif;
  font-size:28px;letter-spacing:-0.5px;color:#1a2138;
}
.brand-sub{font-size:10px;letter-spacing:5px;color:#6b7aaa;margin-top:5px;text-transform:uppercase;}

/* HERO */
.hero{
  position:relative;
  min-height:100vh;
  display:flex;align-items:center;justify-content:center;
  text-align:center;
  padding:160px 40px 120px;
  overflow:hidden;
  isolation:isolate;
}
.hero-video{
  position:absolute;
  top:0;left:0;
  width:100%;height:100%;
  object-fit:cover;
  z-index:-2;
  will-change:filter, transform;
  transform-origin:center center;
  transition:filter 0.05s linear;
}
.hero-overlay{
  position:absolute;
  top:0;left:0;
  width:100%;height:100%;
  z-index:-1;
  background:
  radial-gradient(circle at center,rgba(26,33,56,0.10) 0%,transparent 65%),
  linear-gradient(180deg, rgba(255,255,255,0.5), rgba(255,255,255,0.62));
  will-change:opacity;
  transition:opacity 0.05s linear;
}
.hero-content{max-width:900px;width:100%;display:flex;flex-direction:column;align-items:center;
  will-change:opacity, transform;
  padding:44px 48px;
  border-radius:32px;
  background:rgba(255,255,255,0.5);
  backdrop-filter:blur(14px);
  -webkit-backdrop-filter:blur(14px);
  box-shadow:0 20px 60px rgba(26,33,56,0.06);
}

/* Logo block — wordmark with a scatter of twinkling starlight */
.hero-logo-stage{
  position:relative;
  display:flex;
  justify-content:center;
  align-items:center;
  width:100%;
  margin-bottom:20px;
  padding:14px 46px;
}
.hero-logo{
  position:relative;
  z-index:2;
  font-family:'Playfair Display',serif;
  font-size:clamp(68px,12vw,150px);
  line-height:0.9;
  letter-spacing:-4px;
  background:linear-gradient(90deg,#1a2138,#4a7bff);
  -webkit-background-clip:text;
  -webkit-text-fill-color:transparent;
  display:inline-block;
}

/* four-point sparkle, scattered around the wordmark, each twinkling on its own rhythm */
.star{
  position:absolute;
  z-index:1;
  background:radial-gradient(circle,#ffffff 0%,#bcd2ff 45%,rgba(188,210,255,0) 75%);
  clip-path:polygon(50% 0%,61% 39%,100% 50%,61% 61%,50% 100%,39% 61%,0% 50%,39% 39%);
  opacity:0;
  animation:twinkle ease-in-out infinite;
  pointer-events:none;
}
@keyframes twinkle{
  0%,100%{opacity:0;transform:scale(0.3) rotate(0deg);}
  50%{opacity:1;transform:scale(1) rotate(20deg);}
}
@media (prefers-reduced-motion: reduce){
  .star{animation:none;opacity:0.5;transform:scale(0.7);}
}
.hero-sub{
  font-size:10px;
  letter-spacing:5px;
  text-transform:uppercase;
  color:#9aa3be;
  margin-bottom:48px;
}

.hero p{
  font-size:18px;line-height:1.9;color:#6b7aaa;font-weight:300;
  max-width:680px;margin:0 auto 50px;
}
.hero-buttons{display:flex;justify-content:center;gap:16px;flex-wrap:wrap;}
.btn{
  padding:14px 30px;border-radius:999px;
  text-decoration:none;font-size:13px;
  letter-spacing:0.5px;transition:0.25s ease;
}
.btn-primary{background:#1a2138;color:#fff;}
.btn-primary:hover{background:#2d3a5c;}
.btn-secondary{border:1px solid rgba(26,33,56,0.18);color:#1a2138;}
.btn-secondary:hover{background:rgba(26,33,56,0.04);}

/* DIVIDER */
.divider{
  width:100%;border:none;
  border-top:1px solid rgba(0,0,0,0.07);
}

/* STATS */
.stats{
  padding:90px 40px;
  display:flex;justify-content:center;gap:120px;flex-wrap:wrap;
}
.stat h3{
  font-family:'Playfair Display',serif;
  font-size:52px;font-weight:400;
  color:#1a2138;margin-bottom:8px;
  letter-spacing:-2px;
  font-variant-numeric:tabular-nums;
}
.stat p{font-size:13px;letter-spacing:1.5px;text-transform:uppercase;color:#9aa3be;}

/* FOOTER */
footer{
  padding:90px 40px 50px;
  border-top:1px solid rgba(0,0,0,0.07);
}
.footer-inner{max-width:1350px;margin:auto;}
.footer-top{
  display:flex;justify-content:space-between;
  gap:60px;flex-wrap:wrap;margin-bottom:60px;
  align-items:flex-start;
}
.footer-brand h3{
  font-family:'Playfair Display',serif;
  font-size:36px;font-weight:400;color:#1a2138;
  margin-bottom:14px;
}
.footer-brand p{color:#6b7aaa;font-size:14px;line-height:1.9;max-width:420px;font-weight:300;}
.footer-links{display:flex;flex-wrap:wrap;gap:14px 32px;max-width:600px;align-content:flex-start;}
.footer-links a{text-decoration:none;color:#6b7aaa;font-size:13px;transition:0.2s;}
.footer-links a:hover{color:#1a2138;}
.footer-bottom{
  border-top:1px solid rgba(0,0,0,0.07);
  padding-top:30px;
  display:flex;justify-content:space-between;flex-wrap:wrap;gap:14px;
}
.footer-bottom p{color:#9aa3be;font-size:13px;}

/* PRIVACY */
.privacy-banner{
  position:fixed;bottom:20px;left:20px;right:20px;
  background:#fff;border:1px solid rgba(0,0,0,0.10);
  border-radius:16px;padding:20px 24px;
  display:flex;justify-content:space-between;align-items:center;
  gap:20px;z-index:5000;
  box-shadow:0 8px 40px rgba(0,0,0,0.08);
}
.privacy-text{color:#6b7aaa;font-size:13px;line-height:1.7;max-width:700px;}
.privacy-actions{display:flex;align-items:center;gap:16px;}
.privacy-actions a{text-decoration:none;color:#6b7aaa;font-size:13px;}
.privacy-actions button{
  background:#1a2138;color:#fff;border:none;
  padding:10px 22px;border-radius:999px;
  font-size:12px;cursor:pointer;letter-spacing:0.5px;
}

@media(max-width:768px){
  .nav-inner{padding:18px 20px;}
  .hero{padding:140px 24px 90px;}
  .hero-content{padding:28px 24px;border-radius:24px;}
  .hero-logo-stage{padding:10px 20px;}
  .hero-sub{margin-bottom:32px;}
  .hero p{
    font-size:15px;
    line-height:1.75;
    max-width:100%;
    padding:0 4px;
    margin-bottom:36px;
  }
  .stats{gap:60px;padding:70px 24px;}
  .footer-top{flex-direction:column;}
  footer{padding:70px 24px 40px;}
  .privacy-banner{flex-direction:column;align-items:flex-start;left:14px;right:14px;bottom:14px;}
}

@media(max-width:420px){
  .hero p{font-size:14px;}
}
</style>
</head>
<body>

<div class="privacy-banner" id="privacyBanner">
  <div class="privacy-text">We use cookies and analytics to improve platform performance and user experience. By continuing, you agree to our privacy and use policies.</div>
  <div class="privacy-actions">
    <a href="https://www.starlitecp.com/privacy" target="_blank">Privacy Policy</a>
    <button id="acceptPrivacy">Accept</button>
  </div>
</div>

<nav class="nav">
  <div class="nav-inner">
    <div class="brand">
      <div class="brand-main">STARLITE</div>
      <div class="brand-sub">Capital Partners</div>
    </div>
  </div>
</nav>

<section class="hero" id="heroSection">
  <video class="hero-video" id="heroVideo" autoplay muted loop playsinline preload="auto">
    <source src="https://f4106b695ee260aafd87fdcf0205d09d.cdn.bubble.io/f1737729804704x942047302499646700/3125427-uhd_3840_2160_25fps.mp4" type="video/mp4">
  </video>
  <div class="hero-overlay" id="heroOverlay"></div>

  <div class="hero-content" id="heroContent">
    <div class="hero-logo-stage">
      <div class="hero-logo">STARLITE</div>
      <span class="star" style="width:9px;height:9px;top:2%;left:6%;animation-duration:3.2s;animation-delay:0.1s;"></span>
      <span class="star" style="width:5px;height:5px;top:18%;left:1%;animation-duration:2.6s;animation-delay:1.3s;"></span>
      <span class="star" style="width:7px;height:7px;top:78%;left:4%;animation-duration:3.8s;animation-delay:0.6s;"></span>
      <span class="star" style="width:6px;height:6px;top:88%;left:22%;animation-duration:2.9s;animation-delay:2.1s;"></span>
      <span class="star" style="width:10px;height:10px;top:-4%;left:34%;animation-duration:4.1s;animation-delay:0.9s;"></span>
      <span class="star" style="width:5px;height:5px;top:6%;left:52%;animation-duration:3.4s;animation-delay:1.8s;"></span>
      <span class="star" style="width:8px;height:8px;top:82%;left:58%;animation-duration:2.7s;animation-delay:0.3s;"></span>
      <span class="star" style="width:6px;height:6px;top:-6%;left:70%;animation-duration:3.6s;animation-delay:2.4s;"></span>
      <span class="star" style="width:9px;height:9px;top:14%;left:93%;animation-duration:3.0s;animation-delay:1.1s;"></span>
      <span class="star" style="width:5px;height:5px;top:34%;left:98%;animation-duration:2.5s;animation-delay:1.6s;"></span>
      <span class="star" style="width:7px;height:7px;top:76%;left:92%;animation-duration:4.3s;animation-delay:0.4s;"></span>
      <span class="star" style="width:6px;height:6px;top:92%;left:78%;animation-duration:3.1s;animation-delay:2.7s;"></span>
    </div>
    <div class="hero-sub">Capital Partners</div>
    <p>Empowering founders. Scaling infrastructure. Investing in enterprise software, private credit, media, culture, and long-term strategic capital solutions across global markets.</p>
    <div class="hero-buttons">
      <a href="https://www.starlitecp.com/products/partners" class="btn btn-primary">Our Partners</a>
    </div>
  </div>
</section>

<hr class="divider">

<div class="stats" id="statsSection">
  <div class="stat">
    <h3 class="stat-number" data-target="50" data-prefix="$" data-suffix="B+">$0B+</h3>
    <p>Assets Under Management</p>
  </div>
  <div class="stat">
    <h3 class="stat-number" data-target="150" data-suffix="+">0+</h3>
    <p>Private Equity Portfolio Companies</p>
  </div>
  <div class="stat">
    <h3 class="stat-number" data-target="7" data-suffix="">0</h3>
    <p>World-Class Strategies</p>
  </div>
</div>

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
const banner = document.getElementById('privacyBanner');
if(localStorage.getItem('starlitePrivacyAccepted')) banner.style.display='none';
document.getElementById('acceptPrivacy').addEventListener('click',()=>{
  localStorage.setItem('starlitePrivacyAccepted','true');
  banner.style.display='none';
});

// Ensure the hero video actually starts even if the browser blocks the
// autoplay attribute in some contexts (e.g. sandboxed previews).
const heroVideo = document.getElementById('heroVideo');
if(heroVideo){
  heroVideo.muted = true;
  const tryPlay = () => heroVideo.play().catch(()=>{});
  tryPlay();
  document.addEventListener('click', tryPlay, { once:true });
}

// Count-up animation for the stat numbers, triggered once the stats
// section scrolls into view.
function animateCount(el){
  const target = parseFloat(el.dataset.target);
  const prefix = el.dataset.prefix || '';
  const suffix = el.dataset.suffix || '';
  const duration = 1800; // ms
  const startTime = performance.now();

  function easeOutExpo(t){
    return t === 1 ? 1 : 1 - Math.pow(2, -10 * t);
  }

  function tick(now){
    const elapsed = now - startTime;
    const progress = Math.min(elapsed / duration, 1);
    const eased = easeOutExpo(progress);
    const current = Math.round(target * eased);
    el.textContent = prefix + current + suffix;
    if(progress < 1){
      requestAnimationFrame(tick);
    } else {
      el.textContent = prefix + target + suffix; // lock exact final value
    }
  }
  requestAnimationFrame(tick);
}

const statNumbers = document.querySelectorAll('.stat-number');
const statsSection = document.getElementById('statsSection');

if('IntersectionObserver' in window && statsSection){
  const observer = new IntersectionObserver((entries)=>{
    entries.forEach(entry=>{
      if(entry.isIntersecting){
        statNumbers.forEach(animateCount);
        observer.disconnect();
      }
    });
  }, { threshold: 0.4 });
  observer.observe(statsSection);
} else {
  // Fallback: just animate on load
  statNumbers.forEach(animateCount);
}

// ------------------------------------------------------------------
// Scroll-linked hero blur effect
// As the hero section scrolls out of view, the background video
// progressively blurs and scales up slightly, while the hero copy
// fades and lifts. Everything is driven directly by scroll position
// so it feels tactile rather than like a fixed decoration.
// ------------------------------------------------------------------
const heroSection = document.getElementById('heroSection');
const heroOverlay = document.getElementById('heroOverlay');
const heroContent = document.getElementById('heroContent');

const MAX_BLUR_PX = 22;
const MAX_SCALE = 1.18;

let ticking = false;

function updateHeroScrollEffect(){
  if(!heroSection || !heroVideo) { ticking = false; return; }

  const rect = heroSection.getBoundingClientRect();
  const heroHeight = rect.height || 1;

  // progress: 0 while hero top is at/above the viewport top,
  // ramps to 1 as the hero fully scrolls past the top of the viewport.
  const progress = Math.min(Math.max(-rect.top / heroHeight, 0), 1);

  const blur = progress * MAX_BLUR_PX;
  const scale = 1 + progress * (MAX_SCALE - 1);

  heroVideo.style.filter = `blur(${blur.toFixed(2)}px)`;
  heroVideo.style.transform = `scale(${scale.toFixed(3)})`;

  if(heroOverlay){
    // Overlay starts light (video clearly visible) and fades to fully
    // white as you scroll, so the blur reads as an intentional
    // transition rather than a static wash.
    heroOverlay.style.opacity = String(0.35 + progress * 0.65);
  }

  if(heroContent){
    heroContent.style.opacity = String(1 - progress * 0.9);
    heroContent.style.transform = `translateY(${(progress * -40).toFixed(1)}px)`;
  }

  ticking = false;
}

function onScroll(){
  if(!ticking){
    requestAnimationFrame(updateHeroScrollEffect);
    ticking = true;
  }
}

window.addEventListener('scroll', onScroll, { passive:true });
window.addEventListener('resize', onScroll);
updateHeroScrollEffect();
</script>
</body>
</html>
