# Eyebyte — Video and Image Asset Specifications

Use the included `VIDEO-AND-IMAGERY-TO-DO.txt` as the full production checklist. The practical export defaults are listed here for quick reference.

## Video export master
- Container: MP4
- Codec: H.264 / AVC, High Profile, Level 4.1 for 1080p; Level 4.2 for the portrait hero if needed
- Pixel format: 8-bit 4:2:0 (`yuv420p`)
- Frame rate: 25 fps preferred for an Australian production workflow; 30 fps also acceptable. Keep native motion consistent within each loop.
- Bitrate: VBR, two-pass if available. Typical target 6–8 Mbps for 1080p/25–30, 8–10 Mbps for local 1440 × 1800 loops; max bitrate 10–12 Mbps.
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
1. Hero video: embedded from YouTube video `PYdTqzLeXHo` (muted autoplay, no controls, loop enabled); no local hero MP4 is required unless you later replace the YouTube embed.
2. `performance.mp4` — referenced pillar loop for “Read the room. Move the crowd.”, 1440 × 1800, 4:5 portrait; H.264/AVC, yuv420p, 25 or 30 fps, recommended VBR target 8–10 Mbps, silent seamless loop.
3. `hardware.mp4` — referenced pillar loop for “More than a rectangle.”, 1440 × 1800, 4:5 portrait; H.264/AVC, yuv420p, 25 or 30 fps, recommended VBR target 8–10 Mbps, silent seamless loop. This is separate from the Section 04 hardware demonstration loop.
4. `content.mp4` — referenced pillar loop for “Built to hit different.”, 1440 × 1800, 4:5 portrait; H.264/AVC, yuv420p, 25 or 30 fps, recommended VBR target 8–10 Mbps, silent seamless loop.
5. Hardware section video: embedded from YouTube video `IPklb2zfcgg` (muted autoplay, no controls, loop enabled); no local hardware MP4 is required unless you later replace the YouTube embed.

Note: The website source uses direct `src` paths for the three pillar MP4s and explicitly sets `autoplay`, `muted`, `playsinline`, and `loop`. It retries playback when data becomes available and when the browser tab returns to the foreground. These videos are not paused when scrolled off-screen. If a browser shows only the initial frame, check the console for `[Eyebyte video]` messages and confirm the MP4s are browser-safe H.264/AVC, 8-bit `yuv420p`, and Fast Start encoded. HEVC/H.265 or 10-bit encodes may show a poster/first frame in browsers that cannot decode the full stream. Keep the actual MP4 files in `assets/video/` when deploying. The MP4 binaries were not present in the working folder used for this code update, so their codecs and playback could not be verified here.

### Rollover and supporting images (`assets/images/`)
- Four always-visible “What We Do” image backplates supplied by Eyebyte: `starting.jpg`, `designing.jpg`, `building.jpg`, and `executing.jpg`. Each source is 1500 × 1500 px (square). The images fill the four process frames using `object-fit: cover`; a dark overlay preserves text contrast, and heading/body text enlarges very slightly on hover.
- The four “What We Do” rollover images now double as the integrated process journey (collaborate, design, deliver, perform). No separate “How We Work” backplates are required.
- Hero poster is optional; the hero currently uses a YouTube embed and an existing CSS background as a visual fallback.
- Three pillar posters are optional because these supplied videos play directly as full-card backgrounds. If you add posters for faster first paint, use `performance-poster.webp`, `hardware-poster.webp`, and `content-poster.webp`, each 1440 × 1800, 4:5, WebP quality 82, extracted from its matching loop.
- Hardware poster is optional; the hardware visual currently uses a YouTube embed over its LED illustration fallback.

### Project logos (`assets/images/`)
- `eff.png` — Earth Frequency
- `sub.png` — Subsonic
- `rainbow.png` — Rainbow Spirit
- `rio.png` — Return to Rio
The supplied marks are white PNGs on transparent 150 × 150 px canvases. They appear unframed in clean horizontal project rows, aligned to the left and scaled with `object-fit: contain`; preserve transparency and original proportions. Each row links to the relevant event website.

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
- No background image is used for “Find us out there.” No background or card imagery is required for the social links. Five inline SVG marks (Instagram, Facebook, YouTube, a generic envelope for Email, and Meta Messenger) appear in bold flat-top equilateral hexagons.
- The contact form submits through FormSubmit AJAX to `eyebyte@gmail.com`, without opening an email app. The subject is timestamped as `Website Enquiry - [Sydney date and time]`. The page must be served over HTTP(S), not opened directly as `file://`. Before launch, submit a test and confirm the one-time FormSubmit activation email sent to `eyebyte@gmail.com`. FormSubmit processes the submission and may retain form entries for up to 30 days; account for this in the site privacy notice.

## Section 02 graphic
No separate image or video is required. The “Established 1995 / 30+ years” technical badge is built in CSS with fine dial rings, ticks, coordinates and restrained animation, so it scales sharply on all screen sizes.

## Interactive 3D Screen Builder

Section 04's **Screen Builder** CTA opens `screen-builder.html`, a self-contained interactive 3D LED screen configurator adapted from the supplied standalone editor. The editor is included in the website package and does not require separate JavaScript or model assets. Its **← Eyebyte** link returns to the Hardware section.

When deploying the website, keep `screen-builder.html` beside `index.html` so the relative CTA and return links resolve correctly.

## Live Performance / Hardware / Content pillar loops

The three promotional cards use these exact paths (filenames are case-sensitive on Linux hosting) and begin muted autoplay on initial page load, looping continuously:
- `assets/video/performance.mp4` — Read the room. Move the crowd.
- `assets/video/hardware.mp4` — More than a rectangle.
- `assets/video/content.mp4` — Built to hit different.

All three are expected to be 1440 × 1800 px (4:5 portrait), muted, inline, autoplaying, and continuously looping. The current website sets explicit source loading and `load()` before attempting playback. Video layers render above the poster/background and below the text/contrast overlay.

The current handoff ZIP does **not** contain the MP4 binaries. Add the original videos to `assets/video/` before deployment. If a first frame is visible but motion does not continue, check DevTools → Network for a successful 200/206 request per MP4 and the Console for `[Eyebyte video]` errors. The browser must be receiving the actual MP4 data, not a 404 page, access-denied response, or HTML fallback.



## User-supplied media update (Oct 2026)

### YouTube background embeds
- Hero: YouTube video `PYdTqzLeXHo` embedded via `youtube.com` (standard embed host). Autoplay, muted, loop, no controls, inline playback. A `playlist` parameter matching the video ID is included because YouTube requires it for single-video looping.
- Hardware visual (left side of Section 04): YouTube video `IPklb2zfcgg`, same no-controls muted-autoplay loop configuration.
- The iframe is sized to cover each clipped frame without distortion and recalculated on resize/orientation changes. The page and iframe set an explicit referrer policy and add `enablejsapi=1` plus the real runtime origin when hosted over HTTP(S). YouTube Error 153 means the player received no usable HTTP Referer; opening the HTML directly as `file://` cannot supply one. For local tests, start a server from this folder (for example `python -m http.server 8000`) and visit `http://localhost:8000`; for launch, serve over HTTPS. If Error 153 persists on the live domain, inspect host/CDN Referrer-Policy headers and ensure they do not suppress referrers. Video embedding must also be enabled on YouTube.

### User-supplied rollover JPGs (`assets/images/`)
- `starting.jpg` — Section 03 / Collaborate — “Start with the vision.”
- `designing.jpg` — Section 03 / Design — “Design the Spatial Experience.”
- `building.jpg` — Section 03 / Deliver — “Make it happen.”
- `executing.jpg` — Section 03 / Perform — “Mastery in the Moment.”

### User-supplied project logos (`assets/images/`)
These are white marks on transparent 150 × 150 px canvases, displayed cleanly without logo frames:
- `eff.png` — Earth Frequency
- `sub.png` — Subsonic
- `rainbow.png` — Rainbow Spirit
- `rio.png` — Return to Rio

Place all eight supplied image files in `assets/images/`. The current handoff environment did not contain these JPG/PNG files when the package was rebuilt; the HTML paths are connected, and missing logos show readable text fallbacks. Add the actual image files before publishing so the imagery displays.


## Search / SEO
- `index.html` includes a descriptive title, meta description, canonical URL, index/follow robots directive, Open Graph/Twitter metadata and Organization JSON-LD.
- `robots.txt` allows crawling and points crawlers to `sitemap.xml`; the sitemap lists the home page and `screen-builder.html`.
- Before launch, ensure `https://eyebyte.tv/` is the canonical production domain and that `assets/eyebyte-logo-white.png` is publicly available for social previews.


## Important: clean background video and YouTube overlays
The hero and hardware motion panels currently use YouTube embeds with muted autoplay, `controls=0`, loop, inline playback and keyboard/fullscreen controls disabled. The CSS also masks the typical title/avatar area at the upper-left and watermark area at the lower-right. This is best-effort only: YouTube's official embed documentation says branding treatment is determined by the player and that title/channel information can appear before playback, when paused, or when playback ends. The `modestbranding` parameter is deprecated and has no effect.

If these must be completely free of YouTube logos, headings, player UI and end overlays, use the original licensed MP4 files hosted in `assets/video/` instead of YouTube iframes. An embedded YouTube player cannot guarantee a completely clean, unbranded picture in every browser/state.

FOOTER VISIT COUNTER
--------------------
The footer visit reference uses CounterAPI.com with namespace `eyebyte.tv`, action `view`, key `footer-visit-reference`, and `startNumber=123`. No API key or backend deployment is needed. The shared value is stored by the external CounterAPI service. See VISIT-COUNTER-SETUP.md for behaviour and limitations.