---
layout: default
title: Bingley Music Town
class: 'home-template'
navigation: True
logo: /assets/images/BMTlogoSplash.jpg
current: home
#Use 'our_id' below for the next film to be shown. The id is in the csv file
# we use {% assign film = site.data.films | where:"our-id", page.our-id | first  %}
# in _includes/head.html to make use of the data below using e.g. film.main-image
# Defaults to use if no 'next film'
cover: BMTlogoSplash.jpg

---
<!-- < default -->
<!-- The tag above means - insert everything in this file into the [body] of the default.hbs template -->
<!-- Get the next film data -->
{% assign film = site.data.films | where:"our-id", page.our-id | first  %}
<!-- The big featured header  -->
<header class="main-header" style="background-image: url({{ site.baseurl }}/assets/images/{{ page.cover }})">

    <div class="vertical">
        <div class="main-header-content inner">
           <!-- <h1 class="page-title">Bingley Music Town</h1>-->
        </div>
    </div>
    <a class="scroll-down icon-arrow-left" href="#content" data-offset="-45"><span class="hidden">Scroll Down</span></a>

</header>

<!-- The main content area on the homepage -->
<main id="content" class="content" role="main" markdown="1">
{% include main.md %}
{% include gallery.html %}
</main>
