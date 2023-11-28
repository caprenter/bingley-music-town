---
title: Instruments
layout: page 
cover: splashes/BMTlogo_guitar.jpg #No leading slash
#image-credit: "Photo: Bingley Camera Club"
navigation: true
---

# Shop

Our local instrument shop is [Windstruments](https://www.windstruments.co.uk/) at Crossflatts. 

Windstruments started in 1994 as a woodwind and brass instrument repair company. Since then we have expanded into one of the largest stockists of musical instruments in the UK adding a branch in Harrogate, known as Music House, as well as Bingley. 

# Re-home

Got an instrument you no longer need? Need an instrument? 

We've found ourselves finding good homes for instruments people no longer need, and we're happy to keep on doing so.

This service is run voluntarily by Dave Johnson at [Bingley Guitar Studio]({% link _organisations/bingley_guitar_studio.md %}), First Floor 122-124 Main Street (above Ison Harrison Solicitors), Bingley, BD16 2HL

#### Effects Library
We've also go an [effects library]({% link effects-library.md %}) where you can borrow guitar effects pedals.

## Donate an instrument

Fill in our [Donate an Instrument form](https://docs.google.com/forms/d/e/1FAIpQLSfpGeqaYlQz2LAsN3985pGQv32smi1tkOYU_kkgBsaX7lsrMg/viewform) , and we'll be in touch.

## Request an instrument

Fill in our [Request an Instrument form](https://docs.google.com/forms/d/e/1FAIpQLSfgOb9AqzPsfuYIa1MiFecc6Fuw5kwAUicM_X0914f5r9BMdQ/viewform), and we'll be in touch.


{% comment %}
Show tables of instruments available and already gone
{% endcomment %}

{% assign instruments = site.data.instruments %}
{% assign instruments_onloan = site.data.instruments_onloan %}

{% assign gone = "" | split: ',' %}
{% assign available = "" | split: ',' %}
{% assign reserved = "" | split: ',' %}

{% for instrument in instruments %}
    {% if instrument.DateOut %}
         {% assign gone = gone | push: instrument %}
    {% elsif instrument.ReservedDate %}
        {% assign reserved = reserved | push: instrument %}
        {% assign has-reserved = true %}
    {% else %}
        {% assign available = available | push: instrument %}
  {% endif %}
{% endfor %}

## Available Instruments
<div class="row row-cols-1 row-cols-md-3">
{% for instrument in available %}
{% assign mod2 = forloop.index | modulo: 2 %}
{% include instrument.md %}
{% endfor %}  
</div>


{% if has-reserved %}
## Reserved for Collection

{% for instrument in reserved %}
{% assign mod2 = forloop.index | modulo: 2 %}
{% include instrument.md %}
{% endfor %}  

{% endif %}

## On Loan
<div class="row row-cols-1 row-cols-md-3">
{% for instrument in instruments_onloan %}
{% assign mod2 = forloop.index | modulo: 2 %}
{% include instrument.md %}
{% endfor %}
</div>



## We've distributed the following
<div class="row row-cols-1 row-cols-md-3">
{% for instrument in gone %}
{% assign mod2 = forloop.index | modulo: 2 %}
{% include instrument.md %}
{% endfor %}  
</div>