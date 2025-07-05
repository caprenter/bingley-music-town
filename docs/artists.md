---
title: Artists
layout: page_v2
sub-title: Have they ever played Bingley?
cover: splashes/splash_artists.jpg #No leading slash
# image-credit: The Razerbills  
navigation: true
---

Who's played, and who's playing in the Bingley area? 

Here's an A-Z of artists who have played here or have an upcoming gig.

<div class="artists-listing">
{% capture artists %}{% include artists.md %}{% endcapture %}
{{ artists | markdownify }}
</div>