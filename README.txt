EYEBYTE WEBSITE — RESPONSIVE BUILD
=================================

OPENING / DEPLOYING
- Open index.html for the public website.
- Keep screen-builder.html beside index.html. The “Design a screen system” action opens it in a new tab.
- Upload the whole eyebyte-website folder to your web host, preserving the assets folder structure.
- The enquiry form uses FormSubmit's AJAX endpoint. Confirm the email address after deployment and send a test enquiry before launch.

RESPONSIVE BEHAVIOUR
- Layout adapts to viewport width and orientation using CSS media queries, not device-name/user-agent guessing.
- Input capability is detected (coarse touch vs. fine pointer) to adapt hover behaviours and tap target sizes.
- Navigation collapses into a keyboard/touch-friendly menu on tablets and smaller windows.
- Hero, work cards, hardware section, project rows, contact form and social icons reflow for phones and tablets; small phone widths avoid horizontal scrolling.
- Background circuit animation and video loading respect reduced-motion and lower-data/network settings. Work-loop videos load near the viewport and pause when far off-screen.
- “What We Do” previews activate on desktop hover and on deliberate tap or keyboard activation.
- The standalone screen builder has its own responsive controls/canvas layout for phones, tablets, desktop and short landscape screens.

MEDIA / ASSETS
- Place completed video loops into assets/videos/ using the exact paths in ASSET-SPECS.md and VIDEO-AND-IMAGERY-TO-DO.txt.
- Poster/still imagery, field logos and hover backplates can be added into the folders and filenames described by those checklists. Where custom files are absent, the page may show its CSS fallback or remote stock-image fallback instead.
- The 3D screen builder requires a browser with WebGL enabled.

BROWSER NOTES
- Tested the main website layout in headless Chromium at widths from 320 px to 2560 px; no horizontal overflow was detected. Mobile menu open/close and tap-preview toggling were exercised.
- The screen builder's responsive panel/canvas dimensions were checked, but this environment could not create a WebGL context, so its live 3D rendering could not be verified here.
- Recheck visuals in current Chrome, Safari, Firefox and Edge on real devices before public launch, especially video playback, actual custom imagery, iOS safe areas and form-service activation.
