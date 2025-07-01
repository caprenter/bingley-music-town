---
title: Tuition
layout: page_v2
sub-title: Learn to sing and play
cover: splashes/splash_tuition.jpg #No leading slash
# image-credit: "Photo: Martin Singleton"
navigation: true
---
We've got some great teachers in the area.

We've also had funding from the 1887 Alfred Sharp Fund for a project for the Musical Education of Bingley residents which we are carrying out with local music teachers. We will be supporting ten students with their costs to progress their musical education.  

Here's a list of all the professionals who can help you to play and sing.

<div class="row row-cols-1 row-cols-lg-4 row-cols-md-2 row-cols-sm-2 d-flex align-items-stretch groups">
{% for organisation in site.organisations %}
{% if organisation.type contains "tuition" %}

{% include organisation_grid.md %}

{% endif %}
{% endfor %}
</div>