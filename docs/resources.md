---
title: Resources
layout: page_v2
sub-title: Useful stuff 
cover: splashes/splash_instruments-on-stage.jpg #No leading slash
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


<div class="container logos">
    <div class="row row-cols-1 row-cols-lg-4 row-cols-md-2 row-cols-sm-2 d-flex align-items-stretch">
    {% for image in my_array %}
    <div class="col mb-4 text-center {% if image.path contains 'White' %} bg-dark{% endif %}">
        <img src="{{ site.baseurl }}{{ image.path }}" alt="{{ image.path | split: '/' | last }}" class="img-responsive" style="max-width:60%" />
    </div>
    {% endfor %}
    </div>
</div>

<!-- {% for image in my_array %}
{% assign indexmod4 = forloop.index | modulo: 4 %}
{% if indexmod4 == 1 %}<div class="row">{% endif %}
<div class="column our_logos">
<img src="{{ site.baseurl }}{{ image.path }}" alt="{{ image.path | split: '/' | last }}" class="img-responsive" />
</div>
{% if indexmod4 == 0 or forloop.last %}</div>{% endif %}
{% endfor %} -->
<!-- </div> -->

<div class="container photo-essays mt-4">
    <div class="row row-cols-1 row-cols-xl-2 g-4 top-stories">
        <div class="col">
            <div class="card border-0 border-top border-bottom h-100">
                <div class="row g-0">
                    <div class="col-md-4 py-4">
                        <img src="{{ site.baseurl }}/assets/images/BMT_Monthly_poster_Nov_2024.jpg" class="img-fluid rounded-start border m-0 p-0" alt="The Bandstand booklet">
                    </div>
                    <div class="col-md-6 offset-md-1">
                        <div class="card-body">
                            <h5 class="card-title">Regular Activities Leaflet</h5>
                            <p class="card-text" markdown="1">Regular Music Activities in Bingley. Updated November 2024.</p>
                            <p class="card-text" markdown="1"><a href="{% link assets/downloads/BMT_Monthly_poster_Nov_2024.pdf %}"><i class="fa-solid fa-file-pdf"></i> Regular Music Activities in Bingley (A4)</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!-- row -->
</div><!-- container -->

<div class="online-docs mt-4" markdown="1">

## Useful Documents

We've got a number of planning documents we use that may be of use to you. They are stored on on Google Drive, so you may need to request access.

* [Using the Bandstand<i class="fa fa-external-link" aria-hidden="true"></i>](https://docs.google.com/document/d/1AScIdDgQVKI_Xn2zxZ_8R1qfBz4iIBDMKPZVZX0YS88/edit?tab=t.0#heading=h.2uosz6s4witz) <br>Information for artists, how to hook up the electricity, etc.
* [Bandstand Risk Assessment<i class="fa fa-external-link" aria-hidden="true"></i>](https://docs.google.com/document/d/1AVoy3N41zVjvLKD3oB5oyp8ndKt7i4vbQRKECJ6f3nY/edit?tab=t.0)
* [The Market Square<i class="fa fa-external-link" aria-hidden="true"></i>](https://docs.google.com/document/d/11q0rsuvIoKVx0MJYjWyUudEYGRhVt_X9kwup6exhZUg/edit?tab=t.0#heading=h.gd2m2ts3u2gz)

</div>