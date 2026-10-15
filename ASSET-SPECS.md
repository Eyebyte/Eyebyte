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
### Videos (`assets/video/`)
1. `hero-independent-visual-systems.mp4` — 1440 × 1800, 4:5 portrait, 8–10 Mbps target.
2. `performance.mp4` — supplied pillar loop for “Read the room. Move the crowd.”, 1440 × 1800, 4:5 portrait; H.264/AVC, yuv420p, 25 or 30 fps, recommended VBR target 8–10 Mbps, silent seamless loop.
3. `hardware.mp4` — supplied pillar loop for “More than a rectangle.”, 1440 × 1800, 4:5 portrait; H.264/AVC, yuv420p, 25 or 30 fps, recommended VBR target 8–10 Mbps, silent seamless loop. This is separate from the Section 04 hardware demonstration loop.
4. `content.mp4` — supplied pillar loop for “Built to hit different.”, 1440 × 1800, 4:5 portrait; H.264/AVC, yuv420p, 25 or 30 fps, recommended VBR target 8–10 Mbps, silent seamless loop.
5. `hardware-resolution-curved-led.mp4` — 1440 × 1200, 6:5, 8–10 Mbps target.

Note: The website source uses direct `src` paths for the three pillar MP4s and explicitly sets `autoplay`, `muted`, `playsinline`, and `loop`. It retries playback when data becomes available and when the browser tab returns to the foreground. These videos are not paused when scrolled off-screen. If a browser shows only the initial frame, check the console for `[Eyebyte video]` messages and confirm the MP4s are browser-safe H.264/AVC, 8-bit `yuv420p`, and Fast Start encoded. HEVC/H.265 or 10-bit encodes may show a poster/first frame in browsers that cannot decode the full stream. Keep the actual MP4 files in `assets/video/` when deploying. The MP4 binaries were not present in the working folder used for this code update, so their codecs and playback could not be verified here.

### Rollover and supporting images (`assets/images/`)
- Four “What We Do” rollover backplates, each 1600 × 900, 16:9: `what-we-do-01-integrate-stage.webp`, `what-we-do-02-screen-design-content.webp`, `what-we-do-03-onsite-execution.webp`, `what-we-do-04-live-performance.webp`.
- The four “What We Do” rollover images now double as the integrated process journey (collaborate, design, deliver, perform). No separate “How We Work” backplates are required.
- Hero poster `hero-poster.webp`, 1440 × 1800, 4:5.
- Three pillar posters are optional because these supplied videos play directly as full-card backgrounds. If you add posters for faster first paint, use `performance-poster.webp`, `hardware-poster.webp`, and `content-poster.webp`, each 1440 × 1800, 4:5, WebP quality 82, extracted from its matching loop.
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

## Live Performance / Hardware / Content pillar loops

The three promotional cards use these exact paths (filenames are case-sensitive on Linux hosting):
- `assets/video/performance.mp4` — Read the room. Move the crowd.
- `assets/video/hardware.mp4` — More than a rectangle.
- `assets/video/content.mp4` — Built to hit different.

All three are expected to be 1440 × 1800 px (4:5 portrait), muted, inline, autoplaying, and continuously looping. The current website sets explicit source loading and `load()` before attempting playback. Video layers render above the poster/background and below the text/contrast overlay.

The current handoff ZIP does **not** contain the MP4 binaries. Add the original videos to `assets/video/` before deployment. If a first frame is visible but motion does not continue, check DevTools → Network for a successful 200/206 request per MP4 and the Console for `[Eyebyte video]` errors. The browser must be receiving the actual MP4 data, not a 404 page, access-denied response, or HTML fallback.

