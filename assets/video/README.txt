EYE BYTE PROMOTIONAL VIDEO LOOPS

Place these exact MP4 files in this folder (filenames are case-sensitive on many hosts):
- performance.mp4 — “Read the room. Move the crowd.”
- hardware.mp4 — “More than a rectangle.”
- content.mp4 — “Built to hit different.”

Expected dimensions: 1440 x 1800 (4:5 portrait).
Recommended web encoding: MP4 container, H.264/AVC video, 8-bit yuv420p, AAC-free/silent track, moov atom at the beginning (“fast start”), 25/30 fps, sensible web bitrate. Muted autoplay + loop + playsinline are configured in index.html.

IMPORTANT: This folder does not contain the MP4 binaries in this supplied package. Add the real files here before running/deploying the website. If only the first frame appears, check browser DevTools > Network for a 200/206 response for each MP4 and Console for [Eyebyte video] errors. Confirm the requested URL resolves to the file instead of a 404/HTML page. The website now logs media error codes and loading state.
