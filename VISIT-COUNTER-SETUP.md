EYEBYTE FOOTER VISIT COUNTER
============================

The footer displays a small global page-view reference in the format 1024-123.
The counter is integrated with CounterAPI.com as a public counter namespace for
eyebyte.tv. It starts with a visible seed of 123; after a successful live page
request, the value returned by the service is displayed as 1024-NNN. Each page
load on eyebyte.tv or www.eyebyte.tv requests an increment.

NO MANUAL SETUP REQUIRED
------------------------
No Cloudflare, serverless deployment, API key, account, endpoint URL or source
editing is required. The website calls CounterAPI's public JSONP endpoint directly
using the fixed namespace `eyebyte.tv` and key `footer-visit-reference`.

The public counter API documentation describes its no-auth public API, JSONP
callback, `startNumber` option, and page-view default behaviour:
https://counterapi.com/

IMPORTANT LIMITATIONS
---------------------
- This is a third-party global counter. Its stored total is managed by CounterAPI,
  not Eyebyte's static web host. Availability and terms depend on that service.
- The service has a soft limit of 100,000 requests/day before verification may be
  needed, according to its published documentation.
- A public counter can be artificially incremented by direct requests; it is a
  lightweight reference counter, not audited analytics or a security control.
- The local preview and non-production hostnames intentionally do not increment
  the public total. Only eyebyte.tv and www.eyebyte.tv are counted.
- If the counter service is unreachable, the footer keeps the seed value visible
  and logs a warning in the browser console rather than showing a false local count.
