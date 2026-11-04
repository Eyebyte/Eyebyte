EYEBYTE WEBSITE — RESPONSIVE BUILD
=================================

OPENING / DEPLOYING
- Open index.html for the public website.
- Keep screen-builder.html beside index.html. The “Screen Builder” action opens it in a new tab.
- Upload the whole eyebyte-website folder to your web host, preserving the assets folder structure.
- The enquiry form uses FormSubmit's AJAX endpoint. Confirm the email address after deployment and send a test enquiry before launch. Search metadata, Open Graph/Twitter tags and Organization structured data are included in index.html. Verify the canonical URL and social preview logo match your production domain before launch.
- The footer visit number uses CounterAPI.com, a public no-auth counter; it is configured in index.html and needs no separate backend deployment or setup. The live counter is incremented on eyebyte.tv and www.eyebyte.tv; local previews do not increment the production total.

RESPONSIVE BEHAVIOUR
- Layout adapts to viewport width and orientation using CSS media queries, not device-name/user-agent guessing.
- Input capability is detected (coarse touch vs. fine pointer) to adapt hover behaviours and tap target sizes.
- Navigation collapses into a keyboard/touch-friendly menu on tablets and smaller windows.
- Hero, work cards, hardware section, project rows, contact form and social icons reflow for phones and tablets; small phone widths avoid horizontal scrolling.
- Background circuit animation respects reduced-motion preferences. The three 1440 × 1800 work-loop videos are requested on page load, muted, inline and continuously looped. They are not paused on scroll or skipped because of reduced-motion or data-saving settings; if autoplay is rejected by a browser policy, the site retries on media-ready events and the first user gesture.
- “What We Do” previews activate on desktop hover and on deliberate tap or keyboard activation.
- The standalone screen builder has its own responsive controls/canvas layout for phones, tablets, desktop and short landscape screens.

MEDIA / ASSETS
- Place the three work-loop videos into assets/video/ as performance.mp4, hardware.mp4 and content.mp4. They must be served with the correct video/mp4 MIME type and loaded over HTTP(S). See ASSET-SPECS.md and VIDEO-AND-IMAGERY-TO-DO.txt for other media requirements.
- Add the four event logos as assets/images/eff.png, assets/images/sub.png, assets/images/rainbow.png and assets/images/rio.png (transparent 150 × 150 PNG). The Subsonic logo path is assets/images/sub.png. The project rows link to each event’s official website; “So, so many more” links to the Eyebyte Facebook page. Process imagery fills the four square frames; project backplates load only when a visitor hovers or focuses a project row. Missing images fall back to gradients/text labels without broken-image icons.
- The 3D screen builder requires a browser with WebGL enabled.

BROWSER NOTES
- Static HTML, CSS, JavaScript, JSON-LD, manifest and sitemap checks were run for this build. A fresh browser rendering and real-device pass could not be completed in this environment; test the deployed HTTPS site in current Chrome, Safari, Firefox and Edge before launch.
- The screen builder is bundled as a self-contained page. Its live WebGL rendering should be verified on the deployed site and on target mobile/tablet devices.
- Recheck visuals in current Chrome, Safari, Firefox and Edge on real devices before public launch, especially video playback, actual custom imagery, iOS safe areas and form-service activation.


OUTBOUND EVENT LINKS
- Earth Frequency: https://www.earthfrequency.com.au/
- Subsonic: https://www.subsonicmusic.com.au/ (logo file: assets/images/sub.png)
- Rainbow Spirit: https://rainbowspirit.net/
- Return to Rio: https://returntorio.com/
- “So, so many more…”: https://www.facebook.com/Eyebyte

SEO
- `index.html` contains a title tag, meta description, canonical link, robots directive, Open Graph/Twitter cards and Organization structured data. `robots.txt` and `sitemap.xml` are included.


YOUTUBE BACKGROUND VIDEO NOTE
The hero and hardware YouTube embeds hide standard controls and mask common title/avatar and watermark zones. YouTube does not guarantee fully unbranded embeds; for a completely clean background loop, replace these embeds with the original MP4 files hosted from assets/video/. See ASSET-SPECS.md.


SEARCH / SHARING UPDATES
-----------------------
- The homepage is the single public marketing page and contains all live performance, hardware, content, project, contact and privacy information.
- Section navigation and service cards use in-page anchors; Screen Builder is the only separate interactive page and opens in a new tab.
- sitemap.xml lists the homepage and Screen Builder only. robots.txt points to the sitemap.
- The homepage includes a unique title and meta description, canonical URL, Organization/WebSite structured data, Open Graph/Twitter metadata, favicon, Apple touch icon and web manifest.
- Before launch: submit https://eyebyte.tv/sitemap.xml in Google Search Console and Bing Webmaster Tools; verify the domain; run Lighthouse/PageSpeed on the deployed HTTPS URL and fix field-measured Core Web Vitals issues. Rankings are not guaranteed by metadata alone.

SEO / DISCOVERABILITY
- The homepage uses descriptive section headings and copy for live VJ performance, modular LED screens, bespoke event visuals and real-time effects. Keep those service terms prominent in the page content and internal anchor labels.
- Screen Builder has its own WebApplication metadata. The custom 404 page returns visitors to the relevant homepage sections.
- The privacy and third-party-service disclosure is an expandable section in the homepage footer; update it if the form, counter, fonts or embedded-video providers change.

GITHUB PAGES / DOMAIN
- A CNAME file for eyebyte.tv is included for the existing custom-domain deployment. Keep it at the published site root.
- The site uses the canonical HTTPS apex domain https://eyebyte.tv/. Configure HTTPS and a single preferred hostname in the hosting/domain settings.


OPTIMISATION / QA
-----------------
- See OPTIMIZATION-REPORT.txt for the latest static validation results, measured compressed source sizes and known deployment checks.
- The source passed HTML parsing, JSON-LD, CSS selector and JavaScript syntax checks in the build environment. This does not replace live testing on current browsers and real devices.
- The exact custom image/logo/MP4 files missing from this package copy are listed in ASSET-AUDIT.txt. Keep the corresponding assets in their exact paths when deploying.


SINGLE-PAGE SITE STRUCTURE
--------------------------
The public Eyebyte website is a single-page site: index.html. All service, work, hardware, contact, social and privacy navigation uses in-page anchors. The only separate interactive page is screen-builder.html, which opens in a new tab. The former live-vj-performance.html, modular-led-screens.html, event-visual-content.html and privacy.html pages have been removed. Privacy information is included in an expandable disclosure in the homepage footer.

The hardware section includes AOB Pixel Protection, described as providing 6× more durability at the pixel level.


VIDEO AUTOPLAY
==============
The three pillar videos are declared with direct MP4 source URLs in index.html and use muted autoplay, inline playback, preload=auto and continuous looping. They are started on page load and retried on media-ready events, page restoration and first user interaction if a browser blocks autoplay. They are not paused on scroll. Ensure performance.mp4, hardware.mp4 and content.mp4 are copied into assets/video/ before deployment.
CONTACT FORM
The contact form submits to FormSubmit using an URL-encoded AJAX POST to avoid an unnecessary JSON CORS preflight. The first submission may require one-time activation of eyebyte@gmail.com through FormSubmit. Test the live form after deployment.
