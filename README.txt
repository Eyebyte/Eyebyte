EYEBYTE SCREEN BUILDER
======================
screen-builder.html  - the full builder (self-contained, no internet needed). Open it in any browser or upload it to your site.
viewer.html  - client-facing viewer only (no editing tools). Send it with a share code: viewer.html#<code>
               or open it and use Share > Load to paste a code.
eyebyte-logo-white.png - the white Eyebyte logo used in both pages.

In the editor: Share > View opens the current design as the viewer in a new tab.
Share codes start with E (e.g. E0_L-c.0*c:3@1) and can be added to the page address: screen-builder.html#<code>

Export (editor, Share menu):
  Export FBX      - zip with a to-scale FBX (centimetres, Y-up, 80 mm thick panels) plus the LED textures for each screen
  Pixel map PNG   - LED-pixel-accurate map: panels numbered in cable order, coloured by data run, with pixel coordinates and the data path

Embed on a website:
  <iframe src="screen-builder.html" style="width:100%;height:100vh;border:0"></iframe>
  <iframe src="viewer.html#<code>" style="width:100%;height:100vh;border:0"></iframe>

Assumptions: 168x168 px per 500 mm panel (P2.9), 35 kg/m2, power draw 500 W/m2 max @ 230 V (editable in Wiring > Power).
The logo links to https://eyebyte.com.au - change the href in the page if your address differs.

Devices: works with mouse, touch and tablets. Touch: tap place/select, double-tap selects a whole screen, drag orbit, pinch zoom, two fingers pan, hold the stage for Select, hold a panel icon to add by size.
