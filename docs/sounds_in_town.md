---
title: Sounds In Town
layout: page
cover: splashes/soundsintown_slashe.jpg #No leading slash
image-credit: "Photo: Bingley Camera Club"
navigation: true
---
<main id="content" class="content" role="main" markdown="1">

Sounds In Town is an initiative to give local (amateur) musicians and singers of any ability the chance to perform to a sympathetic, supportive and appreciative audience. 

The events are based on the [Bradford Music Club](http://www.bradfordmusicclub.org.uk/) model where performers get a 10 minute maximum performance 'spots'. 

Each event is FREE to attend although we do ask for voluntary donations upon exit from our audience to help pay for the venue costs and to fund future events. 

The hope is that each Sounds in Town evening will have a different host/venue and we are seeking to make these quarterly events (at the least), but that will depend upon people being willing to come along and play and host! 

## Perform at Sounds in Town

If you would like to perform at Sounds In Town, please email us at ***soundsintownbingley@gmail.com.***

Tell us:
* a bit about you
* what you would like to perform
* any technical requirements
* any access needs

## Our Next Event

Plans are under way for an event on Friday 4th October 2024 in Harden. Watch this space.

## Previous Events

### May 14th 2024, Cullingworth Methodist Church

[<i class="fa-brands fa-square-facebook"></i> Facebook Event page for Sounds In Town<i class="fa fa-external-link" aria-hidden="true"></i>](https://www.facebook.com/events/1502540836969738){:target="_blank" rel="noopener noreferrer"}

Our first Sounds In Town event will took place at at [Cullingworth Methodist Church]({% link _venues/cullingworth_methodist_church.md %}) on 14th May 2024

Many and thanks go to Helen Richmond (MD of [Cullingworth Community Choir]({% link _organisations/cullingworth_community_choir.md %})) for agreeing to host the first event.  Sounds in Town also featured her Choir as one of the performers.  



# Gallery

We're grateful to [Bingley Camera Club<i class="fa fa-external-link" aria-hidden="true"></i>](https://www.bingleycameraclub.org.uk/){:target="_blank" rel="noopener noreferrer"} for taking pictures of the event.<br>A selection of the images they have captured are shown here. 


<!-- Gallery -->
<div class="container gallery">
{% assign festival_array = "" | split: ',' %}
{% assign image_files = site.static_files | where: "image", true | reverse %}
{% for image in image_files %}
  {% if image.name contains "SoundsInTown" %}
     <!-- Push image into array -->
     {% assign festival_array = festival_array | push: image %}
  {% endif %}
{% endfor %}

{% for image in festival_array %}
{% if forloop.first %}<div class="row">{% endif %}
{% assign indexmod3 = forloop.index | modulo: 3 %}
{% if indexmod3 == 1 %}<div class="row">{% endif %}
{% assign altcaptitle = image.basename | replace: "_"," " | append: " - Photos by Bingley Camera Club" %}
<a href="{{site.baseurl}}{{image.path}}" data-toggle="lightbox" data-gallery="example-gallery" data-caption="{{ altcaptitle }}" class="col-sm-4"><img src="{{site.baseurl}}{{image.path | replace: 'gallery','thumbnails'}}" alt="{{ altcaptitle }}" title="{{ altcaptitle }}" class="img-fluid" /></a>
{% if forloop.last %}</div>{% elsif indexmod3 == 0 %}</div>{% endif %}
{% endfor %}
</div>
<!-- Gallery -->  



[![Sounds In Town Event](assets/images/sounds-in-town-may24_full.jpg)]({% link challenge2024.md %}){:class="img-responsive"}

</main>
