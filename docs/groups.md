---
title: Music Groups
layout: page_v2
sub-title: It's good to make music with other people
cover: splashes/splash_groups.jpg #No leading slash
# image-credit: "Photo: Peter Kitching (Bingley Camera Club)"
navigation: true
---
Places where you can play and sing.

<!-- <div class="row row-cols-1 row-cols-md-3 d-flex align-items-stretch groups"> -->
<div class="row row-cols-1 row-cols-lg-4 row-cols-md-2 row-cols-sm-2 d-flex align-items-stretch groups">
{% for organisation in site.organisations %}
{% if organisation.type contains "music-group" %}

{% include organisation_grid.md %}

{% endif %}
{% endfor %}

</div>