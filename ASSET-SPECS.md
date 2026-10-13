# Eyebyte — Video and Image Asset Specifications

Use the included `VIDEO-AND-IMAGERY-TO-DO.txt` as the full production checklist. The practical export defaults are listed here for quick reference.

## Video export master
- Container: MP4
- Codec: H.264 / AVC, High Profile, Level 4.1 for 1080p; Level 4.2 for the portrait hero if needed
- Pixel format: 8-bit 4:2:0 (`yuv420p`)
- Frame rate: 25 fps preferred for an Australian production workflow; 30 fps also acceptable. Keep native motion consistent within each loop.
- Bitrate: VBR, two-pass if available. Typical target 6–8 Mbps for 1080p/25–30, 8–10 Mbps for the hero and hardware loop; max bitrate 10–12 Mbps.
- Audio: no audio track
- Web playback: MP4 Fast Start (`moov` atom at front; FFmpeg `-movflags +faststart`)
- Loop: first and last frame should match as closely as possible; 8–12 seconds preferred for ambient loops
- Colour: Rec.709 / SDR, 8-bit; avoid HDR and wide-gamut-only exports

## Still-image export master
- Preferred format: WebP, sRGB, 8-bit, lossy quality 80–85; avoid unnecessary transparency
- Project and social backgrounds: aim 200–500 KB per file; 700 KB absolute upper target unless image complexity requires more
- Poster images: WebP at quality 82, ideally 150–350 KB each
- Logo: transparent SVG preferred; transparent PNG fallback at 1200 × 480 px canvas. Use the supplied white Eyebyte wordmark as-is.

## Files to create
### Videos (`assets/videos/`)
1. `hero-independent-visual-systems.mp4` — 1440 × 1800, 4:5 portrait, 8–10 Mbps target.
2. `pillar-live-performance.mp4` — 1920 × 1080, 16:9, 6–8 Mbps target.
3. `pillar-modular-led-hardware.mp4` — 1920 × 1080, 16:9, 6–8 Mbps target.
4. `pillar-content-library-effects.mp4` — 1920 × 1080, 16:9, 6–8 Mbps target.
5. `hardware-resolution-curved-led.mp4` — 1440 × 1200, 6:5, 8–10 Mbps target.

### Rollover and supporting images (`assets/images/`)
- Four “What We Do” rollover backplates, each 1600 × 900, 16:9: `what-we-do-01-integrate-stage.webp`, `what-we-do-02-screen-design-content.webp`, `what-we-do-03-onsite-execution.webp`, `what-we-do-04-live-performance.webp`.
- The four “What We Do” rollover images now double as the integrated process journey (collaborate, design, deliver, perform). No separate “How We Work” backplates are required.
- Hero poster `hero-poster.webp`, 1440 × 1800, 4:5.
- Three pillar posters: `pillar-live-performance-poster.webp`, `pillar-modular-led-hardware-poster.webp`, `pillar-content-library-effects-poster.webp`, each 1920 × 1080, 16:9. Best approach: select an ideal frame from each matching video and export as WebP.
- Hardware poster `hardware-led-poster.webp`, 1440 × 1200, 6:5.

### Project logos (`assets/field-logos/`)
- `earth-frequency.svg`
- `subsonic.svg`
- `rainbow-spirit.svg`
- `return-to-rio.svg`
Preferred SVG. If unavailable, use transparent PNG at 1200 × 480 px, with the logo centred and its original proportions preserved. A white or monochrome logo is preferred against the dark UI.

### Project rollover backgrounds (`assets/field-bgs/`)
Five 1920 × 1080, 16:9 WebP photographs, quality 80–85:
- `earth-frequency.webp`
- `subsonic.webp`
- `rainbow-spirit.webp`
- `return-to-rio.webp`
- `more-work.webp`
Use real Eyebyte/event imagery where possible, horizontal wide shots with the stage or crowd visible. Keep the action in the right/centre; left-side copy must remain readable under the dark overlay.

### Combined Contact + Social section
- No background image is used. The section stays on flat charcoal with the website's subtle circuit-trail layers.
- No background or card imagery is required for the social links. Five inline SVG marks (Instagram, Facebook, YouTube, a generic envelope for Email, and Meta Messenger) appear in bold flat-top equilateral hexagons.
- The contact form submits directly to `eyebyte@gmail.com` using FormSubmit AJAX, without opening an email app. The subject is timestamped as `Website Enquiry - [Sydney date and time]`. Before launch, submit a test and confirm the one-time FormSubmit activation email sent to `eyebyte@gmail.com`. FormSubmit processes the submission and may retain form entries for up to 30 days; account for this in the site privacy notice.

## Section 02 graphic
No separate image or video is required. The “Established 1995 / 30+ years” technical badge is built in CSS with fine dial rings, ticks, coordinates and restrained animation, so it scales sharply on all screen sizes.

## Interactive 3D Screen Builder

Section 04's **Design a screen system** CTA opens `screen-builder.html`, a self-contained interactive 3D LED screen configurator adapted from the supplied standalone editor. The editor is included in the website package and does not require separate JavaScript or model assets. Its **← Eyebyte** link returns to the Hardware section.

When deploying the website, keep `screen-builder.html` beside `index.html` so the relative CTA and return links resolve correctly.
