---
title: Live Music
layout: page 
cover: splashes/BMTlogo_piano.jpg #No leading slash
image-credit: Becs Leighton Music
navigation: true
---

If you have an upcoming event in the Bingley area we can list it here. 

Mention us on social media, or use the **#bingleymusictown** hash tag, or send us a link to your event. 

We'll do the rest.

{% capture upcoming-events %}{% include upcoming-events.md %}{% endcapture %}
{{ upcoming-events | markdownify }}
