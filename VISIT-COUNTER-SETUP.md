EYEBYTE FOOTER VISIT COUNTER
============================

The footer displays a discreet shared page-view total, starting at 1024.
Each load of the live homepage on eyebyte.tv or www.eyebyte.tv increments the
shared counter by one. The local preview and GitHub Pages staging hostname do
not increment the production total.

HOW IT WORKS
------------
The site uses the public CountAPI service at countapi.mileshilliard.com. The
first live page load creates the counter and sets its baseline to 1024. Each
subsequent live page load increments it by one. No Cloudflare, API key, account,
serverless function, or backend deployment is required.

The public counter key is `eyebyte_tv_homepage_visits_2026`. It is intentionally
public because the website must call it from browser JavaScript. Anyone who
knows the key can read or alter the total, so this is a lightweight display
counter, not audited analytics. It counts page loads, not verified human users;
refreshes, bots, crawlers, and link previews may also count.

If the service is unavailable, the footer retains the seed display of 1024 and
marks the live counter as temporarily unavailable in its title attribute.
