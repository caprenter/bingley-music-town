---
title: Help Wanted
layout: page_v2
sub-title: We need a little help from our friends
cover: splashes/splash_help.jpg #No leading slash
#image-credit: "Photo: Marcus Ratray (Bingley Camera Club)"
navigation: true
---
## Can you help?

So many people doing so many wonderful things around music. 

Sometimes we need a little help from our friends so we've set up this community notice board of requests we've received for help.

{% assign helps = site.data.help | sort: "order" %}
<!-- <div class="row row-cols-1 row-cols-md-3 d-flex align-items-stretch help"> -->
<div class="row row-cols-1 row-cols-lg-4 row-cols-md-2 row-cols-sm-2 d-flex align-items-stretch help">
{% for help in helps %}
{% include helps.md %}
{% endfor %}
</div>




