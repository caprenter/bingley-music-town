---
layout: page_v2
title: Bingley Music Town
sub-title: A great place to learn,<br> make, and experience music 
class: 'home-template'
navigation: True
#logo: /assets/images/splashes/BMTlogoSplash.jpg
current: home
#Use 'our_id' below for the next film to be shown. The id is in the csv file
# we use {% assign film = site.data.films | where:"our-id", page.our-id | first  %}
# in _includes/head.html to make use of the data below using e.g. film.main-image
# Defaults to use if no 'next film'
# cover: splashes/BMTlogoSplash.jpg
# cover: splashes/QoH.jpg
cover: splashes/splash_cornell.jpg
---
<!-- The main content area on the homepage -->
<main id="content" class="content" role="main" markdown="1">
{% include main.md %}

## Organisational Members
{% include gallery.html %}
</main>
