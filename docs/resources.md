---
title: Resources
layout: page_v2
sub-title: FIX ME 
cover: splashes/BMTlogo_flutes.jpg #No leading slash
#image-credit: Becs Leighton Music
navigation: true
---

## Need a Logo?

These can be used to show your support for the Bingley Music Town initiative in pretty much anyway you want. If you do somehow upset us the way you use it, we might ask you not to.

All images have a transparent background.

Right click to download. [Contact us]({% link contact.md %}) if you want help.
  
{% assign my_array = "" | split: ',' %}
{% for image in site.static_files %}
  {% if image.path contains "assets/images/our_logos" %}
     {% assign my_array = my_array | push: image %}
  {% endif %}
{% endfor %}


<div class="container logos our_logos">
    {% for image in my_array %}
    {% assign indexmod4 = forloop.index | modulo: 4 %}
    {% if indexmod4 == 1 %}<div class="row">{% endif %}
    <div class="column our_logos">
    <img src="{{ site.baseurl }}{{ image.path }}" alt="{{ image.path | split: '/' | last }}" class="img-responsive" />
    </div>
    {% if indexmod4 == 0 or forloop.last %}</div>{% endif %}
    {% endfor %}
</div>